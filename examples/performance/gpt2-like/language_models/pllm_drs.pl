% eval_80/6: Evaluates a Python function call within MeTTa.
% Parameters:
% - Eq: denotes get-type, match, or interpret call.
% - RetType: Expected return type of the MeTTa function.
% - Depth: Recursion depth or complexity control.
% - Self: Context or environment for the evaluation.
% - [MyFun|More]: List with MeTTa function and additional arguments.
% - RetVal: Variable to store the result of the Python function call.
eval_80(Eq, RetType, Depth, Self, [MyFun|More], RetVal) :-
    % MyFun as a registered Python function with its module and function name.
    metta_atom(Self, ['registered-python-function', PyModule, PyFun, MyFun]),
    % Tries to fetch the type definition for MyFun, ignoring failures.
    ((  get_operator_typedef(Self, MyFun, Params, RetType),
        try_adjust_arg_types(RetType, Depth, Self, [RetType|Params], [RetVal|More], [MVal|Adjusted])
    )->true; (maplist(as_prolog, More , Adjusted), MVal=RetVal)),
    % Constructs a compound term for the Python function call with adjusted arguments.
    compound_name_arguments(Call, PyFun, Adjusted),
    % Optionally prints a debug tree of the Python call if tracing is enabled.
    if_trace(host;python, print_tree(py_call(PyModule:Call, RetVal))),
    % Executes the Python function call and captures the result in MVal which propagates to RetVal.
    py_call(PyModule:Call, MVal),
    % Checks the return value against the expected type and criteria.
    check_returnval(Eq, RetType, RetVal).

