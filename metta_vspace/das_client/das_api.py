import json
from itertools import product
from typing import Any, Dict, List, Optional, Set, Tuple, Union

from hyperon_das_atomdb import WILDCARD

from hyperon_das.decorators import record_execution_time

from hyperon_das.exceptions import (
    DatabaseTypeException,
    InitializeServerException,
    MethodNotAllowed,
    UnexpectedQueryFormat,
    QueryParametersException,
)
from hyperon_das.factory import DatabaseFactory, DatabaseType, database_factory
from hyperon_das.logger import logger
from hyperon_das.api import DistributedAtomSpace
from hyperon_das.cache import LazyQueryEvaluator, ListIterator, QueryAnswerIterator
from hyperon_das.pattern_matcher import (
    LogicalExpression,
    PatternMatchingAnswer,
)
from hyperon_das.utils import Assignment, QueryAnswer, QueryOutputFormat, QueryParameters


class DistributedAtomSpaceTest:
    @record_execution_time()
    def __init__(
        self,
        database: DatabaseType,
        host: Optional[str] = None,
        port: Optional[str] = None,
    ) -> None:
        self._db_type = database

        try:
            DatabaseType(database)
        except ValueError as e:
            self._error(DatabaseTypeException(
                message=str(e),
                details=f'possible values {DatabaseType.values()}',
            ))

        if database == DatabaseType.SERVER.value and not host:
            raise InitializeServerException(
                message='You must send the host parameter',
                details=f'To use server type Das you must send at least the host parameter',
            )

        self.db = database_factory(DatabaseFactory(self._db_type), host, port)

        #logger().info(f"New Distributed Atom Space. Database name: {self.db.database_name}")

    def _to_handle_list(
        self, atom_list: Union[List[str], List[Dict]]
    ) -> List[str]:
        if not atom_list:
            return []
        if isinstance(atom_list[0], str):
            return atom_list
        else:
            return [handle for handle, _ in atom_list]

    def _to_link_dict_list(
        self, db_answer: Union[List[str], List[Dict]]
    ) -> List[Dict]:
        if not db_answer:
            return []
        flat_handle = isinstance(db_answer[0], str)
        answer = []
        for atom in db_answer:
            if flat_handle:
                handle = atom
                arity = -1
            else:
                handle, targets = atom
                arity = len(targets)
            answer.append(self.db.get_atom_as_dict(handle, arity))
        return answer

    def _to_json(self, db_answer: Union[List[str], List[Dict]]) -> List[Dict]:
        answer = []
        if db_answer:
            flat_handle = isinstance(db_answer[0], str)
            for atom in db_answer:
                if flat_handle:
                    handle = atom
                    arity = -1
                else:
                    handle, targets = atom
                    arity = len(targets)
                answer.append(
                    self.db.get_atom_as_deep_representation(handle, arity)
                )
        return json.dumps(answer, sort_keys=False, indent=4)

    @record_execution_time()
    def _turn_into_deep_representation(self, assignments) -> list:
        results = []
        for assignment in assignments:
            result = {}
            for variable, handle in assignment.mapping.items():
                deep_representation = self.db.get_atom_as_deep_representation(
                    handle
                )
                is_link = 'targets' in deep_representation
                result[variable] = {
                    **deep_representation,
                    'atom_type': 'link' if is_link else 'node',
                }
            results.append(result)
        return results

    def _error(self, exception: Exception):
        logger().error(str(exception))
        raise exception

    def _recursive_query(
        self,
        query: Dict[str, Any],
        mappings: Set[Assignment] = None,
        extra_parameters: Optional[Dict[str, Any]] = None,
    ) -> QueryAnswerIterator:
        if query["atom_type"] == "node":
            atom_handle = self.db.get_node_handle(query["type"], query["name"])
            return ListIterator([QueryAnswer(self.db.get_atom_as_dict(atom_handle), None)])
        elif query["atom_type"] == "link":
            matched_targets = []
            for target in query["targets"]:
                if target["atom_type"] == "node" or target["atom_type"] == "link":
                    matched = self._recursive_query(target, mappings, extra_parameters)
                    if matched:
                        matched_targets.append(matched)
                elif target["atom_type"] == "variable":
                    matched_targets.append(ListIterator([QueryAnswer(target, None)]))
                else:
                    self._error(UnexpectedQueryFormat(
                        message="Query processing reached an unexpected state",
                        details=f'link: {str(query)} link target: {str(query)}',
                    ))
            return LazyQueryEvaluator(query["type"], matched_targets, self, extra_parameters)
        else:
            self._error(UnexpectedQueryFormat(
                message="Query processing reached an unexpected state",
                details=f'query: {str(query)}',
            ))

    def clear_database(self) -> None:
        """Clear all data"""
        return self.db.clear_database()

    def count_atoms(self) -> Tuple[int, int]:
        """
        This method is useful for returning the count of atoms in the database.
        It's also useful for ensuring that the knowledge base load went off without problems.

        Returns:
            Tuple[int, int]: (node_count, link_count)
        """
        return self.db.count_atoms()

    def get_atom(
        self,
        handle: str,
        output_format: QueryOutputFormat = QueryOutputFormat.HANDLE,
    ) -> Union[str, Dict]:
        """
        Retrieve information about an Atom using its handle.

        This method retrieves information about an Atom from the database
        based on the provided handle. The retrieved atom information can be
        presented in different output formats as specified by the output_format parameter.

        Args:
            handle (str): The unique handle of the atom.
            output_format (QueryOutputFormat, optional): The desired output format.
                Defaults to QueryOutputFormat.HANDLE.

        Returns:
            Union[str, Dict]: Depending on the output_format, returns either:
                - A string representing the handle of the Atom (output_format == QueryOutputFormat.HANDLE),
                - A dictionary containing detailed Atom information (output_format == QueryOutputFormat.ATOM_INFO),
                - A JSON-formatted string representing the deep representation of the Atom (output_format == QueryOutputFormat.JSON).

        Raises:
            ValueError: If an invalid output format is provided.

        Example:
            >>> result = obj.get_atom(
                    handle="af12f10f9ae2002a1607ba0b47ba8407",
                    output_format=QueryOutputFormat.ATOM_INFO
                )
            >>> print(result)
            {
                "handle": "af12f10f9ae2002a1607ba0b47ba8407",
                "type": "Concept",
                "name": "human"
            }
        """

        if output_format == QueryOutputFormat.HANDLE or not handle:
            atom = self.db.get_atom_as_dict(handle)
            return atom["handle"] if atom else ""
        elif output_format == QueryOutputFormat.ATOM_INFO:
            return self.db.get_atom_as_dict(handle)
        elif output_format == QueryOutputFormat.JSON:
            answer = self.db.get_atom_as_deep_representation(handle)
            return json.dumps(answer, sort_keys=False, indent=4)
        else:
            self._error(ValueError(f"Invalid output format: '{output_format}'"))

    def get_node(
        self,
        node_type: str,
        node_name: str,
        output_format: QueryOutputFormat = QueryOutputFormat.HANDLE,
    ) -> Union[str, Dict]:
        """
        Retrieve information about a Node of a specific type and name.

        This method retrieves information about a Node from the database
        based on its type and name. The retrieved node information can be
        presented in different output formats as specified by the output_format parameter.

        Args:
            node_type (str): The type of the node being queried.
            node_name (str): The name of the specific node being queried.
            output_format (QueryOutputFormat, optional): The desired output format.
                Defaults to QueryOutputFormat.HANDLE.

        Returns:
            Union[str, Dict]: Depending on the output_format, returns either:
                - A string representing the handle of the node (output_format == QueryOutputFormat.HANDLE),
                - A dictionary containing atom information of the node (output_format == QueryOutputFormat.ATOM_INFO),
                - A JSON-formatted string representing the deep representation of the node (output_format == QueryOutputFormat.JSON).

        Raises:
            ValueError: If an invalid output format is provided.

        Note:
            If the specified node does not exist, a warning is logged and None is returned.

        Example:
            >>> result = obj.get_node(
                    node_type='Concept',
                    node_name='human',
                    output_format=QueryOutputFormat.ATOM_INFO
                )
            >>> print(result)
            {
                "handle": "af12f10f9ae2002a1607ba0b47ba8407",
                "type": "Concept",
                "name": "human"
            }
        """

        node_handle = None

        try:
            node_handle = self.db.get_node_handle(node_type, node_name)
        except ValueError:
            logger().warning(
                f"Attempt to access an invalid Node '{node_type}:{node_name}'"
            )
            return None

        if output_format == QueryOutputFormat.HANDLE or not node_handle:
            return node_handle
        elif output_format == QueryOutputFormat.ATOM_INFO:
            return self.db.get_atom_as_dict(node_handle)
        elif output_format == QueryOutputFormat.JSON:
            answer = self.db.get_atom_as_deep_representation(node_handle)
            return json.dumps(answer, sort_keys=False, indent=4)
        else:
            self._error(ValueError(f"Invalid output format: '{output_format}'"))

    def get_nodes(
        self,
        node_type: str,
        node_name: str = None,
        output_format: QueryOutputFormat = QueryOutputFormat.HANDLE,
    ) -> Union[List[str], List[Dict]]:
        """
        Retrieve information about Nodes based on their type and optional name.

        This method retrieves information about nodes from the database based
        on its type and name (if provided). The retrieved nodes information can be
        presented in different output formats as specified by the output_format parameter.


        Args:
            node_type (str): The type of nodes being queried.
            node_name (str, optional): The name of the specific node being queried. Defaults to None.
            output_format (QueryOutputFormat, optional): The desired output format.
                Defaults to QueryOutputFormat.HANDLE.

        Returns:
            Union[List[str], List[Dict]]: Depending on the output_format, returns either:
                - A list of strings representing handles of the nodes (output_format == QueryOutputFormat.HANDLE),
                - A list of dictionaries containing atom information of the nodes (output_format == QueryOutputFormat.ATOM_INFO),
                - A JSON-formatted string representing the deep representation of the nodes (output_format == QueryOutputFormat.JSON).

        Raises:
            ValueError: If an invalid output format is provided.

        Note:
            If node_name is provided and the specified node does not exist, an empty list is returned.

        Example:
            >>> result = obj.get_nodes(
                    node_type='Concept',
                    output_format=QueryOutputFormat.HANDLE
                )
            >>> print(result)
            [
                'af12f10f9ae2002a1607ba0b47ba8407',
                '1cdffc6b0b89ff41d68bec237481d1e1',
                '5b34c54bee150c04f9fa584b899dc030',
                'c1db9b517073e51eb7ef6fed608ec204',
                ...
            ]
        """

        if node_name is not None:
            answer = self.db.get_node_handle(node_type, node_name)
            if answer is not None:
                answer = [answer]
        else:
            answer = self.db.get_all_nodes(node_type)

        if output_format == QueryOutputFormat.HANDLE or not answer:
            return answer
        elif output_format == QueryOutputFormat.ATOM_INFO:
            return [self.db.get_atom_as_dict(handle) for handle in answer]
        elif output_format == QueryOutputFormat.JSON:
            answer = [
                self.db.get_atom_as_deep_representation(handle)
                for handle in answer
            ]
            return json.dumps(answer, sort_keys=False, indent=4)
        else:
            self._error(ValueError(f"Invalid output format: '{output_format}'"))

    def get_link(
        self,
        link_type: str,
        targets: List[str] = None,
        output_format: QueryOutputFormat = QueryOutputFormat.HANDLE,
    ) -> Union[str, Dict]:
        """
        Retrieve information about a link of a specific type and its targets.

        This method retrieves information about a link from the database based on
        type with given targets. The retrieved link information can be presented in different
        output formats as specified by the output_format parameter.

        Args:
            link_type (str): The type of the link being queried.
            targets (List[str], optional): A list of target identifiers that the link is associated with.
                Defaults to None.
            output_format (QueryOutputFormat, optional): The desired output format.
                Defaults to QueryOutputFormat.HANDLE.

        Returns:
            Union[str, Dict]: Depending on the output_format, returns either:
                - A string representing the handle of the link (output_format == QueryOutputFormat.HANDLE),
                - A dictionary containing atom information of the link (output_format == QueryOutputFormat.ATOM_INFO),
                - A JSON-formatted string representing the deep representation of the link (output_format == QueryOutputFormat.JSON).

        Raises:
            ValueError: If an invalid output format is provided.

        Note:
            If the specified link or targets do not exist, the method returns None.

        Example:
            >>> result = obj.get_link(
                    link_type='Similarity',
                    targets=['human', 'monkey'],
                    output_format=QueryOutputFormat.HANDLE
                )
            >>> print(result)
            '2931276cb5bb4fc0c2c48a6720fc9a84'
        """
        link_handle = None

        # TODO: Is there any exception action?
        try:
            link_handle = self.db.get_link_handle(link_type, targets)
        except Exception as e:
            self._error(e)

        if output_format == QueryOutputFormat.HANDLE or link_handle is None:
            return link_handle
        elif output_format == QueryOutputFormat.ATOM_INFO:
            return self.db.get_atom_as_dict(link_handle, len(targets))
        elif output_format == QueryOutputFormat.JSON:
            answer = self.db.get_atom_as_deep_representation(
                link_handle, len(targets)
            )
            return json.dumps(answer, sort_keys=False, indent=4)
        else:
            self._error(ValueError(f"Invalid output format: '{output_format}'"))

    def get_links(
        self,
        link_type: str,
        target_types: str = None,
        targets: List[str] = None,
        output_format: QueryOutputFormat = QueryOutputFormat.HANDLE,
    ) -> Union[List[str], List[Dict]]:
        """
        Retrieve information about Links based on specified criteria.

        This method retrieves information about links from the database based on the provided criteria.
        The criteria includes the link type, and can include target types and specific target identifiers.
        The retrieved links information can be presented in different output formats as specified
        by the output_format parameter.

        Args:
            link_type (str): The type of links being queried.
            target_types (str, optional): The type(s) of targets being queried. Defaults to None.
            targets (List[str], optional): A list of target identifiers that the links are associated with.
                Defaults to None.
            output_format (QueryOutputFormat, optional): The desired output format.
                Defaults to QueryOutputFormat.HANDLE.

        Returns:
            Union[List[str], List[Dict]]: Depending on the output_format, returns either:
                - A list of strings representing handles of the links (output_format == QueryOutputFormat.HANDLE),
                - A list of dictionaries containing detailed information of the links (output_format == QueryOutputFormat.ATOM_INFO),
                - A JSON-formatted string representing the deep representation of the links (output_format == QueryOutputFormat.JSON).

        Raises:
            ValueError: If an invalid output format is provided or if the provided parameters are invalid.

        Example:
            >>> result = obj.get_links(
                    link_type='Similarity',
                    target_types=['Concept', 'Concept'],
                    output_format=QueryOutputFormat.ATOM_INFO
                )
            >>> print(result)
            [
                {
                    'handle': 'a45af31b43ee5ea271214338a5a5bd61',
                    'type': 'Similarity',
                    'template': ['Similarity', 'Concept', 'Concept'],
                    'targets': [...]
                },
                {
                    'handle': '2d7abd27644a9c08a7ca2c8d68338579',
                    'type': 'Similarity',
                    'template': ['Similarity', 'Concept', 'Concept'],
                    'targets': [...]
                },
                ...
            ]
        """

        # TODO: Delete this If. This conditional will never happen
        if link_type is None:
            link_type = WILDCARD

        if target_types is not None and link_type != WILDCARD:
            db_answer = self.db.get_matched_type_template(
                [link_type, *target_types]
            )
        elif targets is not None:
            db_answer = self.db.get_matched_links(link_type, targets)
        elif link_type != WILDCARD:
            db_answer = self.db.get_matched_type(link_type)
        else:
            # TODO: Improve this message error. What is invalid?
            self._error(ValueError("Invalid parameters"))

        if output_format == QueryOutputFormat.HANDLE:
            return self._to_handle_list(db_answer)
        elif output_format == QueryOutputFormat.ATOM_INFO:
            return self._to_link_dict_list(db_answer)
        elif output_format == QueryOutputFormat.JSON:
            return self._to_json(db_answer)
        else:
            self.error(ValueError(f"Invalid output format: '{output_format}'"))

    def get_link_type(self, link_handle: str) -> str:
        """
        Get the type of a link.

        This method retrieves the type of a link based on its handle.

        Args:
            link_handle (str): The handle of the link.

        Returns:
            str: The type of the link.

        Example:
            >>> human = obj.get_node('Concept', 'human')
            >>> monkey = obj.get_node('Concept', 'monkey')
            >>> link_handle = obj.get_link('Similarity', [human, monkey])
            >>> result = obj.get_link_type(link_handle=link_handle)
            >>> print(result)
            'Similarity'
        """
        try:
            resp = self.db.get_link_type(link_handle)
            return resp
        # TODO: Find out what specific exceptions might happen
        except Exception as e:
            self._error(e)

    def get_link_targets(self, link_handle: str) -> List[str]:
        """
        Get the targets of a link.

        This method retrieves the targets of a link based on its handle.

        Args:
            link_handle (str): The handle of the link.

        Returns:
            List[str]: A list of target handles.

        Example:
            >>> human = obj.get_node('Concept', 'human')
            >>> monkey = obj.get_node('Concept', 'monkey')
            >>> link_handle = obj.get_link('Similarity', [human, monkey])
            >>> result = obj.get_link_targets(link_handle=link_handle)
            >>> print(result)
            [
                '80aff30094874e75028033a38ce677bb',
                '4e8e26e3276af8a5c2ac2cc2dc95c6d2'
            ]
        """
        try:
            resp = self.db.get_link_targets(link_handle)
            return resp
        # TODO: Find out what specific exceptions might happen
        except Exception as e:
            self._error(e)

    def get_node_type(self, node_handle: str) -> str:
        """
        Get the type of a node.

        This method retrieves the type of a node based on its handle.

        Args:
            node_handle (str): The handle of the node.

        Returns:
            str: The type of the node.

        Example:
            >>> human = obj.get_node('Concept', 'human')
            >>> result = obj.get_node_type(node_handle=human)
            >>> print(result)
            'Concept'
        """
        try:
            resp = self.db.get_node_type(node_handle)
            return resp
        # TODO: Find out what specific exceptions might happen
        except Exception as e:
            self._error(e)

    def get_node_name(self, node_handle: str) -> str:
        """
        Get the name of a node.

        This method retrieves the name of a node based on its handle.

        Args:
            node_handle (str): The handle of the node.

        Returns:
            str: The name of the node.

        Example:
            >>> animal = obj.get_node('Concept', 'animal')
            >>> result = obj.get_node_name(node_handle=animal)
            >>> print(result)
            'animal'
        """
        try:
            resp = self.db.get_node_name(node_handle)
            return resp
        # TODO: Find out what specific exceptions might happen
        except Exception as e:
            self._error(e)

    @record_execution_time()
    def query(
        self,
        query: Dict[str, Any],
        extra_parameters: Optional[Dict[str, Any]] = None,
    ) -> List[Dict[str, Any]]:
        """
        Perform a query on the knowledge base using a dict as input. Returns a
        list of dicts as result.

        The input dict is a link, used as a pattern to make the query.
        Variables can be used as link targets as well as nodes. Nested links are
        allowed as well.

        Args:
            query (Dict[str, Any]): A pattern described as a link (possibly with nested links) with
            nodes and variables used to query the knoeledge base.
            extra_paramaters (Dict[str, Any], optional): query optional parameters

        Returns:
            List[Dict[str, Any]]: a list of dicts with the matching subgraphs

        Raises:
            UnexpectedQueryFormat: If query resolution lead to an invalid state

        Notes:
            - No logical connectors (AND, OR, NOT) are allowed
            - If no match is found for the query, an empty list is returned.

        Example:

            >>> hash_table_api.add_link({
                "type": "Expression",
                "targets": [
                    {"type": "Symbol", "name": "Test"},
                    {
                        "type": "Expression",
                        "targets": [
                            {"type": "Symbol", "name": "Test"},
                            {"type": "Symbol", "name": "2"}
                        ]
                    }
                ]
            })
            >>> query_params = {
                "toplevel_only": False,
                "return_type": QueryOutputFormat.ATOM_INFO,
            }
            >>> q1 = {
                "atom_type": "link",
                "type": "Expression",
                "targets": [
                    {"atom_type": "variable", "name": "v1"},
                    {
                        "atom_type": "link",
                        "type": "Expression",
                        "targets": [
                            {"atom_type": "variable", "name": "v2"},
                            {"atom_type": "node", "type": "Symbol", "name": "2"},
                        ]
                    }
                ]
            }
            >>> result = hash_table_api.query(q1, query_params)
            >>> print(result)
            [{'handle': 'dbcf1c7b610a5adea335bf08f6509978', 'type': 'Expression', 'template': ['Expression', 'Symbol', ['Expression', 'Symbol', 'Symbol']], 'targets': [{'handle': '963d66edfb77236054125e3eb866c8b5', 'type': 'Symbol', 'name': 'Test'}, {'handle': '233d9a6da7d49d4164d863569e9ab7b6', 'type': 'Expression', 'template': ['Expression', 'Symbol', 'Symbol'], 'targets': [{'handle': '963d66edfb77236054125e3eb866c8b5', 'type': 'Symbol', 'name': 'Test'}, {'handle': '9f27a331633c8bc3c49435ffabb9110e', 'type': 'Symbol', 'name': '2'}]}]}]
        """
        query_results = self._recursive_query(query, extra_parameters)
        logger().debug(f"query: {query} result: {str(query_results)}")
        answer = []
        for result in query_results:
            answer.append(result.grounded_atom)
        return answer

    @record_execution_time()
    def pattern_matcher_query(
        self,
        query: LogicalExpression,
        extra_parameters: Optional[Dict[str, Any]] = None,
    ) -> dict | list | None:
        """
        Perform a query on the knowledge base using a logical expression.

        This method allows you to query the knowledge base using a logical expression
        to find patterns or relationships among atoms. The query result is returned
        in the specified output format.

        Args:
            query (LogicalExpression): As instance of a LogicalExpression. representing the query.
            output_format (QueryOutputFormat, optional): The desired output format for the query result
                Defaults to QueryOutputFormat.HANDLE.

        Returns:
            Union[Dict[str, Any]], List]: Depending on the `return_type` parameter sent in extra_parameters, returns:
                - A list of dictionaries (return_type == QueryOutputFormat.HANDLE or return_type == QueryOutputFormat.ATOM_INFO),
                - A JSON-formatted string representing the deep representation of the links (return_type == QueryOutputFormat.JSON).

        Raises:
            ValueError: If an invalid output format is provided.

        Notes:
            - Each query is a LogicalExpression object that may or may not be a combination of
            logical operators like `And`, `Or`, and `Not`, as well as atomic expressions like
            `Node`, `Link`, and `Variable`.

            - If no match is found for the query, an empty string is returned.

        Example:
            You can use this method to perform complex or simple queries, like the following:

            In this example we want to search the knowledge base for two inheritance links
            that connect 3 nodes such that V1 -> V2 -> V3.

            >>> V1 = Variable("V1")
            >>> V2 = Variable("V2")
            >>> V3 = Variable("V3")

            >>> logical_expression = And([
                Link("Inheritance", ordered=True, targets=[V1, V2]),
                Link("Inheritance", ordered=True, targets=[V2, V3])
            ])

            >>> result = obj.query(query=logical_expression, {'return_type': QueryOutputFormat.HANDLE})

            >>> print(result)
            {
                {'V1': '305e7d502a0ce80b94374ff0d79a6464', 'V2': '98870929d76a80c618e70a0393055b31', 'V3': '81ec21b0f1b03e18c55e056a56179fef'},
                {'V1': 'bd497eb24420dd50fed5f3d2e6cdd7c1', 'V2': '98870929d76a80c618e70a0393055b31', 'V3': '81ec21b0f1b03e18c55e056a56179fef'},
                {'V1': 'e2d9b15ab3461228d75502e754137caa', 'V2': 'c90242e2dbece101813762cc2a83d726', 'V3': '81ec21b0f1b03e18c55e056a56179fef'},
                ...
            }
        """

        if extra_parameters is not None:
            try:
                extra_parameters = QueryParameters(**extra_parameters)
            except TypeError as e:
                raise QueryParametersException(
                    message=str(e),
                    details=f'possible values {QueryParameters.values()}',
                )
        else:
            extra_parameters = QueryParameters()

        query_answer = PatternMatchingAnswer()

        matched = query.matched(
            self.db, query_answer, extra_parameters.__dict__
        )

        if not matched:
            return None

        if extra_parameters.return_type == QueryOutputFormat.HANDLE:
            result = list(query_answer.assignments)
        elif extra_parameters.return_type == QueryOutputFormat.ATOM_INFO:
            result = self._turn_into_deep_representation(
                query_answer.assignments
            )
        elif extra_parameters.return_type == QueryOutputFormat.JSON:
            objs = self._turn_into_deep_representation(
                query_answer.assignments
            )
            result = json.dumps(
                objs,
                sort_keys=False,
                indent=4,
            )
        else:
            raise ValueError(
                f"Invalid output format: '{extra_parameters.return_type}'"
            )

        if query_answer.negation:
            return {'negation': True, 'mapping': result}
        else:
            return {'negation': False, 'mapping': result}

    def add_node(self, node_params: Dict[str, Any]) -> Dict[str, Any]:
        if self._db_type == DatabaseType.RAM_ONLY.value:
            return self.db.add_node(node_params)
        else:
            self._error(MethodNotAllowed(
                message='This method is permited only in memory database',
                details='Instantiate the class sent the database type as `ram_only`',
            ))

    def add_link(self, link_params: Dict[str, Any]) -> Dict[str, Any]:
        if self._db_type == DatabaseType.RAM_ONLY.value:
            return self.db.add_link(link_params)
        else:
            self._error(MethodNotAllowed(
                message='This method is permited only in memory database',
                details='Instantiate the class sent the database type as `ram_only`',
            ))

def main_apt_test():
    from hyperon_das import DistributedAtomSpace
    from . import DistributedAtomSpaceTest
    from hyperon_das.utils import QueryOutputFormat
    from hyperon_das.pattern_matcher.pattern_matcher import And, Link, Not, Variable

    def print_pm_answer(pm_answer):
        for mapping in pm_answer["mapping"]:
            print([[key, value["name"]] for key, value in mapping.items()])

    def print_query_answer(query_answer):
        for link in query_answer:
            print(f"{link['type']}: {link['targets'][0]['name']} -> {link['targets'][1]['name']}")


    das = DistributedAtomSpace('server', host='104.238.183.115')

    all_nodes = [
            {'type': 'Concept', 'name': 'human'},
            {'type': 'Concept', 'name': 'monkey'},
            {'type': 'Concept', 'name': 'chimp'},
            {'type': 'Concept', 'name': 'snake'},
            {'type': 'Concept', 'name': 'earthworm'},
            {'type': 'Concept', 'name': 'rhino'},
            {'type': 'Concept', 'name': 'triceratops'},
            {'type': 'Concept', 'name': 'vine'},
            {'type': 'Concept', 'name': 'ent'},
            {'type': 'Concept', 'name': 'mammal'},
            {'type': 'Concept', 'name': 'animal'},
            {'type': 'Concept', 'name': 'reptile'},
            {'type': 'Concept', 'name': 'dinosaur'},
            {'type': 'Concept', 'name': 'plant'},
        ]

    all_links = [
            {
                'type': 'Similarity',
                'targets': [
                    {'type': 'Concept', 'name': 'human'},
                    {'type': 'Concept', 'name': 'monkey'},
                ],
            },
            {
                'type': 'Similarity',
                'targets': [
                    {'type': 'Concept', 'name': 'human'},
                    {'type': 'Concept', 'name': 'chimp'},
                ],
            },
            {
                'type': 'Similarity',
                'targets': [
                    {'type': 'Concept', 'name': 'chimp'},
                    {'type': 'Concept', 'name': 'monkey'},
                ],
            },
            {
                'type': 'Similarity',
                'targets': [
                    {'type': 'Concept', 'name': 'snake'},
                    {'type': 'Concept', 'name': 'earthworm'},
                ],
            },
            {
                'type': 'Similarity',
                'targets': [
                    {'type': 'Concept', 'name': 'rhino'},
                    {'type': 'Concept', 'name': 'triceratops'},
                ],
            },
            {
                'type': 'Similarity',
                'targets': [
                    {'type': 'Concept', 'name': 'snake'},
                    {'type': 'Concept', 'name': 'vine'},
                ],
            },
            {
                'type': 'Similarity',
                'targets': [
                    {'type': 'Concept', 'name': 'human'},
                    {'type': 'Concept', 'name': 'ent'},
                ],
            },
            {
                'type': 'Inheritance',
                'targets': [
                    {'type': 'Concept', 'name': 'human'},
                    {'type': 'Concept', 'name': 'mammal'},
                ],
            },
            {
                'type': 'Inheritance',
                'targets': [
                    {'type': 'Concept', 'name': 'monkey'},
                    {'type': 'Concept', 'name': 'mammal'},
                ],
            },
            {
                'type': 'Inheritance',
                'targets': [
                    {'type': 'Concept', 'name': 'chimp'},
                    {'type': 'Concept', 'name': 'mammal'},
                ],
            },
            {
                'type': 'Inheritance',
                'targets': [
                    {'type': 'Concept', 'name': 'mammal'},
                    {'type': 'Concept', 'name': 'animal'},
                ],
            },
            {
                'type': 'Inheritance',
                'targets': [
                    {'type': 'Concept', 'name': 'reptile'},
                    {'type': 'Concept', 'name': 'animal'},
                ],
            },
            {
                'type': 'Inheritance',
                'targets': [
                    {'type': 'Concept', 'name': 'snake'},
                    {'type': 'Concept', 'name': 'reptile'},
                ],
            },
            {
                'type': 'Inheritance',
                'targets': [
                    {'type': 'Concept', 'name': 'dinosaur'},
                    {'type': 'Concept', 'name': 'reptile'},
                ],
            },
            {
                'type': 'Inheritance',
                'targets': [
                    {'type': 'Concept', 'name': 'triceratops'},
                    {'type': 'Concept', 'name': 'dinosaur'},
                ],
            },
            {
                'type': 'Inheritance',
                'targets': [
                    {'type': 'Concept', 'name': 'earthworm'},
                    {'type': 'Concept', 'name': 'animal'},
                ],
            },
            {
                'type': 'Inheritance',
                'targets': [
                    {'type': 'Concept', 'name': 'rhino'},
                    {'type': 'Concept', 'name': 'mammal'},
                ],
            },
            {
                'type': 'Inheritance',
                'targets': [
                    {'type': 'Concept', 'name': 'vine'},
                    {'type': 'Concept', 'name': 'plant'},
                ],
            },
            {
                'type': 'Inheritance',
                'targets': [
                    {'type': 'Concept', 'name': 'ent'},
                    {'type': 'Concept', 'name': 'plant'},
                ],
            },
            {
                'type': 'Similarity',
                'targets': [
                    {'type': 'Concept', 'name': 'monkey'},
                    {'type': 'Concept', 'name': 'human'},
                ],
            },
            {
                'type': 'Similarity',
                'targets': [
                    {'type': 'Concept', 'name': 'chimp'},
                    {'type': 'Concept', 'name': 'human'},
                ],
            },
            {
                'type': 'Similarity',
                'targets': [
                    {'type': 'Concept', 'name': 'monkey'},
                    {'type': 'Concept', 'name': 'chimp'},
                ],
            },
            {
                'type': 'Similarity',
                'targets': [
                    {'type': 'Concept', 'name': 'earthworm'},
                    {'type': 'Concept', 'name': 'snake'},
                ],
            },
            {
                'type': 'Similarity',
                'targets': [
                    {'type': 'Concept', 'name': 'triceratops'},
                    {'type': 'Concept', 'name': 'rhino'},
                ],
            },
            {
                'type': 'Similarity',
                'targets': [
                    {'type': 'Concept', 'name': 'vine'},
                    {'type': 'Concept', 'name': 'snake'},
                ],
            },
            {
                'type': 'Similarity',
                'targets': [
                    {'type': 'Concept', 'name': 'ent'},
                    {'type': 'Concept', 'name': 'human'},
                ],
            },
        ]

    V1 = Variable("V1")
    V2 = Variable("V2")
    V3 = Variable("V3")

    query1 = And(
        [
            Link("Inheritance", ordered=True, targets=[V1, V2]),
            Link("Inheritance", ordered=True, targets=[V2, V3]),
        ]
    )
    answer = das.pattern_matcher_query(query1, {'return_type': QueryOutputFormat.ATOM_INFO})
    logger().info('=============================================================')
    query2 = {
        "atom_type": "link",
        "type": "Inheritance",
        "targets": [
            {"atom_type": "variable", "name": "v1"},
            {"atom_type": "node", "type": "Concept", "name": "mammal"},
        ]
    }
    query_params = {
        "toplevel_only": False,
        "return_type": QueryOutputFormat.ATOM_INFO,
    }
    answer = das.query(query2, query_params)

if __name__ == "__main__":
    main_apt_test()
