import json

import pytest
from hyperon_das_atomdb.utils.expression_hasher import ExpressionHasher

from hyperon_das.client import FunctionsClient
from hyperon_das.constants import QueryOutputFormat


class TestAWSClientIntegration:
    @pytest.fixture()
    def server(self):
        return FunctionsClient(url='http://44.198.65.35/prod/query-engine')

    def test_get_node(self, server: FunctionsClient):
        human_handle = ExpressionHasher.terminal_hash('Concept', 'human')
        ret = server.get_node(
            node_type="Concept",
            node_name="human",
            output_format=QueryOutputFormat.HANDLE,
        )
        assert ret == human_handle
        ret = server.get_node(
            node_type="Concept",
            node_name="human",
            output_format=QueryOutputFormat.ATOM_INFO,
        )
        assert ret == {
            'handle': human_handle,
            'type': 'Concept',
            'name': 'human',
        }
        ret = server.get_node(
            node_type="Concept",
            node_name="human",
            output_format=QueryOutputFormat.JSON,
        )
        assert json.loads(ret) == {"type": "Concept", "name": "human"}

    def test_get_nodes(self, server: FunctionsClient):
        human_handle = ExpressionHasher.terminal_hash('Concept', 'human')
        ret = server.get_nodes(
            node_type="Concept",
            node_name="human",
            output_format=QueryOutputFormat.HANDLE,
        )
        assert ret == [human_handle]
        ret = server.get_nodes(
            node_type="Concept",
            node_name="human",
            output_format=QueryOutputFormat.ATOM_INFO,
        )
        assert ret == [
            {'handle': human_handle, 'type': 'Concept', 'name': 'human'}
        ]
        ret = server.get_nodes(
            node_type="Concept",
            node_name="human",
            output_format=QueryOutputFormat.JSON,
        )
        assert json.loads(ret) == [{'type': 'Concept', 'name': 'human'}]

    def test_get_node_type(self, server: FunctionsClient):
        human_handle = ExpressionHasher.terminal_hash('Concept', 'human')
        ret = server.get_node_type(node_handle=human_handle)
        assert ret == 'Concept'

    def test_get_node_name(self, server: FunctionsClient):
        human_handle = ExpressionHasher.terminal_hash('Concept', 'human')
        ret = server.get_node_name(node_handle=human_handle)
        assert ret == 'human'

    def test_get_link(self, server: FunctionsClient):
        human_handle = ExpressionHasher.terminal_hash('Concept', 'human')
        monkey_handle = ExpressionHasher.terminal_hash('Concept', 'monkey')
        link_handle = ExpressionHasher.expression_hash(
            ExpressionHasher.named_type_hash('Similarity'),
            [human_handle, monkey_handle],
        )
        ret = server.get_link(
            link_type='Similarity',
            targets=[human_handle, monkey_handle],
            output_format=QueryOutputFormat.HANDLE,
        )
        assert ret == link_handle
        ret = server.get_link(
            link_type='Similarity',
            targets=[human_handle, monkey_handle],
            output_format=QueryOutputFormat.ATOM_INFO,
        )
        assert ret == {
            'handle': link_handle,
            'type': 'Similarity',
            'template': ['Similarity', 'Concept', 'Concept'],
            'targets': [human_handle, monkey_handle],
        }
        ret = server.get_link(
            link_type='Similarity',
            targets=[human_handle, monkey_handle],
            output_format=QueryOutputFormat.JSON,
        )
        assert json.loads(ret) == {
            'type': 'Similarity',
            'targets': [
                {'type': 'Concept', 'name': 'human'},
                {'type': 'Concept', 'name': 'monkey'},
            ],
        }

    def test_get_links(self, server: FunctionsClient):
        human_handle = ExpressionHasher.terminal_hash('Concept', 'human')
        monkey_handle = ExpressionHasher.terminal_hash('Concept', 'monkey')
        link_handle = ExpressionHasher.expression_hash(
            ExpressionHasher.named_type_hash('Similarity'),
            [human_handle, monkey_handle],
        )
        ret = server.get_links(
            link_type='Similarity',
            target_types=['Concept', 'Concept'],
            output_format=QueryOutputFormat.HANDLE,
        )
        assert len(ret) == 14

    def test_get_link_type(self, server: FunctionsClient):
        human_handle = ExpressionHasher.terminal_hash('Concept', 'human')
        monkey_handle = ExpressionHasher.terminal_hash('Concept', 'monkey')
        link_handle = ExpressionHasher.expression_hash(
            ExpressionHasher.named_type_hash('Similarity'),
            [human_handle, monkey_handle],
        )
        ret = server.get_link_type(link_handle=link_handle)
        assert ret == 'Similarity'

    def test_get_link_targets(self, server: FunctionsClient):
        human_handle = ExpressionHasher.terminal_hash('Concept', 'human')
        monkey_handle = ExpressionHasher.terminal_hash('Concept', 'monkey')
        link_handle = ExpressionHasher.expression_hash(
            ExpressionHasher.named_type_hash('Similarity'),
            [human_handle, monkey_handle],
        )
        ret = server.get_link_targets(link_handle=link_handle)
        assert set(ret) == set([human_handle, monkey_handle])

    def test_get_atom(self, server: FunctionsClient):
        human_handle = ExpressionHasher.terminal_hash('Concept', 'human')
        monkey_handle = ExpressionHasher.terminal_hash('Concept', 'monkey')
        link_handle = ExpressionHasher.expression_hash(
            ExpressionHasher.named_type_hash('Similarity'),
            [human_handle, monkey_handle],
        )
        ret = server.get_atom(
            handle=monkey_handle, output_format=QueryOutputFormat.HANDLE
        )
        assert ret == monkey_handle
        ret = server.get_atom(
            handle=monkey_handle, output_format=QueryOutputFormat.ATOM_INFO
        )
        assert ret == {
            'handle': monkey_handle,
            'type': 'Concept',
            'name': 'monkey',
        }
        ret = server.get_atom(
            handle=monkey_handle, output_format=QueryOutputFormat.JSON
        )
        assert json.loads(ret) == {'type': 'Concept', 'name': 'monkey'}
        ret = server.get_atom(
            handle=link_handle, output_format=QueryOutputFormat.HANDLE
        )
        assert ret == link_handle
        ret = server.get_atom(
            handle=link_handle, output_format=QueryOutputFormat.ATOM_INFO
        )
        assert ret == {
            'handle': link_handle,
            'type': 'Similarity',
            'template': ['Similarity', 'Concept', 'Concept'],
            'targets': [human_handle, monkey_handle],
        }
        ret = server.get_atom(
            handle=link_handle, output_format=QueryOutputFormat.JSON
        )
        assert json.loads(ret) == {
            'type': 'Similarity',
            'targets': [
                {'type': 'Concept', 'name': 'human'},
                {'type': 'Concept', 'name': 'monkey'},
            ],
        }

    def test_count_atoms(self, server: FunctionsClient):
        ret = server.count_atoms()
        assert ret[0] == 14
        assert ret[1] == 26

    def test_query(self, server: FunctionsClient):
        query = {
            "atom_type": "link",
            "type": "Inheritance",
            "targets": [
                {"atom_type": "variable", "name": "v1"},
                {"atom_type": "node", "type": "Concept", "name": "mammal"},
            ],
        }
        params = {
            "toplevel_only": False,
            "return_type": QueryOutputFormat.ATOM_INFO,
        }
        ret = server.query(query, params)
        assert len(ret) == 4

    # TODO: pattern_matcher_query does not work in functions because
    # is need to serialize the PatterMatcher object to send to the function
    """
    def test_pattern_matcher_query(self, server: FunctionsClient):
        from hyperon_das.pattern_matcher import And, Link, Variable

        V1 = Variable("V1")
        V2 = Variable("V2")
        V3 = Variable("V3")

        query = And(
            [
                Link("Inheritance", ordered=True, targets=[V1, V2]),
                Link("Inheritance", ordered=True, targets=[V2, V3]),
            ]
        )

        params = {
            "toplevel_only": False,
            "return_type": QueryOutputFormat.ATOM_INFO,
        }
        ret = server.pattern_matcher_query(query, params)
        assert len(ret) == 4
    """


class TestVultrClientIntegration:
    @pytest.fixture()
    def server(self):
        return FunctionsClient(
            url='http://104.238.183.115:8081/function/query-engine'
        )

    def test_get_node(self, server: FunctionsClient):
        human_handle = ExpressionHasher.terminal_hash('Concept', 'human')
        ret = server.get_node(
            node_type="Concept",
            node_name="human",
            output_format=QueryOutputFormat.HANDLE,
        )
        assert ret == human_handle
        ret = server.get_node(
            node_type="Concept",
            node_name="human",
            output_format=QueryOutputFormat.ATOM_INFO,
        )
        assert ret == {
            'handle': human_handle,
            'type': 'Concept',
            'name': 'human',
        }
        ret = server.get_node(
            node_type="Concept",
            node_name="human",
            output_format=QueryOutputFormat.JSON,
        )
        assert ret == {'type': 'Concept', 'name': 'human'}

    def test_get_nodes(self, server: FunctionsClient):
        human_handle = ExpressionHasher.terminal_hash('Concept', 'human')
        ret = server.get_nodes(
            node_type="Concept",
            node_name="human",
            output_format=QueryOutputFormat.HANDLE,
        )
        assert ret == [human_handle]
        ret = server.get_nodes(
            node_type="Concept",
            node_name="human",
            output_format=QueryOutputFormat.ATOM_INFO,
        )
        assert ret == [
            {'handle': human_handle, 'type': 'Concept', 'name': 'human'}
        ]
        ret = server.get_nodes(
            node_type="Concept",
            node_name="human",
            output_format=QueryOutputFormat.JSON,
        )
        assert ret == [{'type': 'Concept', 'name': 'human'}]

    def test_get_node_type(self, server: FunctionsClient):
        human_handle = ExpressionHasher.terminal_hash('Concept', 'human')
        ret = server.get_node_type(node_handle=human_handle)
        assert ret == 'Concept'

    def test_get_node_name(self, server: FunctionsClient):
        human_handle = ExpressionHasher.terminal_hash('Concept', 'human')
        ret = server.get_node_name(node_handle=human_handle)
        assert ret == 'human'

    def test_get_link(self, server: FunctionsClient):
        human_handle = ExpressionHasher.terminal_hash('Concept', 'human')
        monkey_handle = ExpressionHasher.terminal_hash('Concept', 'monkey')
        link_handle = ExpressionHasher.expression_hash(
            ExpressionHasher.named_type_hash('Similarity'),
            [human_handle, monkey_handle],
        )
        ret = server.get_link(
            link_type='Similarity',
            targets=[human_handle, monkey_handle],
            output_format=QueryOutputFormat.HANDLE,
        )
        assert ret == link_handle
        ret = server.get_link(
            link_type='Similarity',
            targets=[human_handle, monkey_handle],
            output_format=QueryOutputFormat.ATOM_INFO,
        )
        assert ret == {
            'handle': link_handle,
            'type': 'Similarity',
            'template': ['Similarity', 'Concept', 'Concept'],
            'targets': [human_handle, monkey_handle],
        }
        ret = server.get_link(
            link_type='Similarity',
            targets=[human_handle, monkey_handle],
            output_format=QueryOutputFormat.JSON,
        )
        assert ret == {
            'type': 'Similarity',
            'targets': [
                {'type': 'Concept', 'name': 'human'},
                {'type': 'Concept', 'name': 'monkey'},
            ],
        }

    def test_get_links(self, server: FunctionsClient):
        human_handle = ExpressionHasher.terminal_hash('Concept', 'human')
        monkey_handle = ExpressionHasher.terminal_hash('Concept', 'monkey')
        link_handle = ExpressionHasher.expression_hash(
            ExpressionHasher.named_type_hash('Similarity'),
            [human_handle, monkey_handle],
        )
        ret = server.get_links(
            link_type='Similarity',
            target_types=['Concept', 'Concept'],
            output_format=QueryOutputFormat.HANDLE,
        )
        assert len(ret) == 14

    def test_get_link_type(self, server: FunctionsClient):
        human_handle = ExpressionHasher.terminal_hash('Concept', 'human')
        monkey_handle = ExpressionHasher.terminal_hash('Concept', 'monkey')
        link_handle = ExpressionHasher.expression_hash(
            ExpressionHasher.named_type_hash('Similarity'),
            [human_handle, monkey_handle],
        )
        ret = server.get_link_type(link_handle=link_handle)
        assert ret == 'Similarity'

    def test_get_link_targets(self, server: FunctionsClient):
        human_handle = ExpressionHasher.terminal_hash('Concept', 'human')
        monkey_handle = ExpressionHasher.terminal_hash('Concept', 'monkey')
        link_handle = ExpressionHasher.expression_hash(
            ExpressionHasher.named_type_hash('Similarity'),
            [human_handle, monkey_handle],
        )
        ret = server.get_link_targets(link_handle=link_handle)
        assert set(ret) == set([human_handle, monkey_handle])

    def test_get_atom(self, server: FunctionsClient):
        human_handle = ExpressionHasher.terminal_hash('Concept', 'human')
        monkey_handle = ExpressionHasher.terminal_hash('Concept', 'monkey')
        link_handle = ExpressionHasher.expression_hash(
            ExpressionHasher.named_type_hash('Similarity'),
            [human_handle, monkey_handle],
        )
        ret = server.get_atom(
            handle=monkey_handle, output_format=QueryOutputFormat.HANDLE
        )
        assert ret == monkey_handle
        ret = server.get_atom(
            handle=monkey_handle, output_format=QueryOutputFormat.ATOM_INFO
        )
        assert ret == {
            'handle': monkey_handle,
            'type': 'Concept',
            'name': 'monkey',
        }
        ret = server.get_atom(
            handle=monkey_handle, output_format=QueryOutputFormat.JSON
        )
        assert ret == {'type': 'Concept', 'name': 'monkey'}
        ret = server.get_atom(
            handle=link_handle, output_format=QueryOutputFormat.HANDLE
        )
        assert ret == link_handle
        ret = server.get_atom(
            handle=link_handle, output_format=QueryOutputFormat.ATOM_INFO
        )
        assert ret == {
            'handle': link_handle,
            'type': 'Similarity',
            'template': ['Similarity', 'Concept', 'Concept'],
            'targets': [human_handle, monkey_handle],
        }
        ret = server.get_atom(
            handle=link_handle, output_format=QueryOutputFormat.JSON
        )
        assert ret == {
            'type': 'Similarity',
            'targets': [
                {'type': 'Concept', 'name': 'human'},
                {'type': 'Concept', 'name': 'monkey'},
            ],
        }

    def test_count_atoms(self, server: FunctionsClient):
        ret = server.count_atoms()
        assert ret[0] == 14
        assert ret[1] == 26

    def test_query(self, server: FunctionsClient):
        query = {
            "atom_type": "link",
            "type": "Inheritance",
            "targets": [
                {"atom_type": "variable", "name": "v1"},
                {"atom_type": "node", "type": "Concept", "name": "mammal"},
            ],
        }
        params = {
            "toplevel_only": False,
            "return_type": QueryOutputFormat.ATOM_INFO,
        }
        ret = server.query(query, params)
        assert len(ret) == 4

    # TODO: pattern_matcher_query does not work in functions because
    # is need to serialize the PatterMatcher object to send to the function
    """
    def test_pattern_matcher_query(self, server: FunctionsClient):
        from hyperon_das.pattern_matcher import And, Link, Variable

        V1 = Variable("V1")
        V2 = Variable("V2")
        V3 = Variable("V3")

        query = And(
            [
                Link("Inheritance", ordered=True, targets=[V1, V2]),
                Link("Inheritance", ordered=True, targets=[V2, V3]),
            ]
        )

        params = {
            "toplevel_only": False,
            "return_type": QueryOutputFormat.ATOM_INFO,
        }
        ret = server.pattern_matcher_query(query, params)
        assert len(ret) == 4
    """
