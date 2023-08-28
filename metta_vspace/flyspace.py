import os
from collections import Counter
from time import monotonic_ns, time
from glob import glob

from hyperon import MeTTa, interpret, S, SymbolAtom, VariableAtom, ExpressionAtom, GroundedAtom, OperationAtom, AtomType

#import openai
#openai.api_key = os.environ["OPENAI_API_KEY"]
from hyperon import *
from hyperon.atoms import *
#from hyperon.atoms import G, AtomType
#from hyperon.atoms import OperationAtom, ValueAtom
#from hyperon.base import Atom
from hyperon.ext import *
#from hyperon.ext import register_atoms
#from hyperon.ext import register_tokens
from hyperon.runner import MeTTa
import atexit
import hyperonpy as hp
import os
import re
import readline
import sys


histfile = os.path.join(os.path.expanduser("~"), ".metta_history")

try:
    readline.set_history_length(10000)
    readline.read_history_file(histfile)
    h_len = readline.get_current_history_length()
except FileNotFoundError:
    open(histfile, 'wb').close()
    h_len = 0

def save(prev_h_len, histfile):
    new_h_len = readline.get_current_history_length()
    readline.set_history_length(10000)
    readline.append_history_file(new_h_len - prev_h_len, histfile)
atexit.register(save, h_len, histfile)





def color(t, c):
    cmap = [90, 91, 31, 93, 92, 32, 36, 96, 94, 34, 35, 95, 38]
    return f"\033[{cmap[c % len(cmap)]}m{t}\033[0m"


def oblique(t):
    return f"\033[3m{t}\033[0m"


def underline(t):
    return f"\033[4m{t}\033[0m"


def expr_vars(expr):
    if isinstance(expr, SymbolAtom):
        return []
    elif isinstance(expr, VariableAtom):
        return [str(expr)]
    elif isinstance(expr, ExpressionAtom):
        return [e for c in expr.get_children() for e in expr_vars(c)]
    elif isinstance(expr, GroundedAtom):
        return []
    else:
        raise Exception("Unexpected sexpr type: " + str(type(expr)))


def color_expr(expr, level=0, unif_vars=None):
    name = str(expr)
    if level == 0:
        unif_vars = frozenset(e for e, c in Counter(expr_vars(expr)).items() if c > 1) \
            if unif_vars is None else frozenset()
    if isinstance(expr, SymbolAtom):
        return name
    elif isinstance(expr, VariableAtom):
        return oblique(name) if name in unif_vars else name
    elif isinstance(expr, ExpressionAtom):
        return (color("(", level) +
                " ".join(color_expr(c, level + 1, unif_vars) for c in expr.get_children()) +
                color(")", level))
    elif isinstance(expr, GroundedAtom):
        return underline(name)
    else:
        raise Exception("Unexpected sexpr type: " + str(type(expr)))


class ExtendedMeTTa(MeTTa):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.register_atom("transform", OperationAtom("transform", lambda pattern, template: self.space().subst(pattern, template),
                                                      type_names=[AtomType.ATOM, AtomType.ATOM, AtomType.UNDEFINED], unwrap=False))
        self.register_atom("join", OperationAtom("join", lambda a, b: interpret(self.space(), a) + interpret(self.space(), b),
                                                 type_names=[AtomType.ATOM, AtomType.ATOM, AtomType.ATOM], unwrap=False))

class LazyMeTTa(ExtendedMeTTa):
    def lazy_import_file(self, fname):
        path = fname.split(os.sep)
        with open(os.sep.join(self.cwd + path), "r") as f:
            program = f.read()
        self.lazy_run(self._parse_all(program))

    def lazy_run(self, stream):
        for i, (expr, result_set) in enumerate(self.lazy_run_loop(stream)):
            if result_set:
                print(f"> {color_expr(expr)}")
                for result in result_set:
                    print(color_expr(result))
            else:
                print(f"> {color_expr(expr)} /")

    def lazy_run_loop(self, stream):
        interpreting = False
        commented = False
        for expr in stream:
            if expr == S('!') and not commented:
                interpreting = True
            elif expr == S('/*'):
                commented = True
            elif expr == S('*/'):
                commented = False
            elif interpreting and not commented:
                yield expr, interpret(self.space(), expr)
                interpreting = False
            elif not commented:
                self.space().add_atom(expr)

class InteractiveMeTTa(LazyMeTTa):


    # Add the string to the history
    readline.add_history("@prolog")
    readline.add_history("@metta")
    readline.add_history("!(match &self $ $)")
    readline.add_history('!(get-by-key &my-dict "A")')
    readline.add_history("!(get-by-key &my-dict 6)")          
    readline.add_history("!(extend-py! flyspace)")
        
    
    def repl_loop(self):
        self.mode = "metta"
        self.history = []
        
        while True:
            try:
                # Use the input function to get user input
                prmpt = self.mode + "> "
                line = input(prmpt)
                if line: 
                    sline = line.lstrip()
                    self.history.append(line)
                else: 
                    continue
                
                # Check for history commands
                if sline.rstrip() == '.history':
                    for idx, item in enumerate(self.history):
                        print(f"{idx + 1}: {item}")
                    continue

                # Switch to python mode
                elif sline.startswith("@py"):
                    self.mode = "python"
                    print("Switched to Python mode.")
                    readline.add_history("@prolog")
                    readline.add_history("@metta")
                    continue

                # Switch to prolog mode
                elif sline.startswith("@p"):
                    self.mode = "prolog"
                    print("Switched to Prolog mode.")
                    readline.add_history("prolog")
                    readline.add_history("mine_overlaps")
                    readline.add_history("listing(maybe_corisponds/2)")
                    readline.add_history("try_overlaps")
                    readline.add_history("synth_query(4,Query)")
                    readline.add_history("ensure_loaded('metta_vspace/pyswip/swi_flybase'),call(load_flybase)")
                    continue

                # Switch to metta mode
                elif sline.startswith("@m"):
                    self.mode = "metta"
                    print("Switched to MeTTa mode.")
                    readline.add_history("!(match &self $ $)")
                    continue

                # Show help
                elif sline.startswith("@h"):
                    print("Help:")
                    print("@m       - Switch to MeTTa mode.")
                    print("@py      - Switch to Python mode.")
                    print("@p       - Switch to Prolog mode.")
                    print("Ctrl-D   - Exit interpreter.")
                    print("@h       - Display this help message.")                   
                    print("+        - Add an atom.")
                    print("-        - Remove an atom.")
                    print("?        - Query an atom.")
                    print("!        - Interpret an atom.")
                    print("s        - Save session.")
                    print("l        - Load the latest session.")
                    print("q        - Quit the session.")
                    print(".history - Display command history.")
                    continue

                prefix = sline[0]
                    
                if self.mode == "prolog":
                    # comment
                    if prefix == "%":
                        print(line);
                        continue

                    if sline.startswith("("):
                       expr = self.parse_single(sline)
                       print(f"% S-Expr {line}")
                       print(f"% M-Expr {expr}")
                       prolog_obj = atomspace_to_prolog(expr);
                       print(f"% P-Expr {prolog_obj}")
                       call_sexpr = Functor("call_sexpr", 2)
                       user = newModule("user")
                       X = Variable()
                       q = Query(call_sexpr(prolog_obj, X), module=user)
                       while q.nextSolution():
                           print(X.value)
                       q.closeQuery()
                       continue

                elif self.mode == "python":
                    # comment
                    if prefix == "#":
                        print(line);
                        continue
                    result = eval(line)
                    print(result)
                    continue

                elif self.mode == "metta":                    
                    rest = line[1:].strip()

                    # comment
                    if prefix == ";":
                        print(line);
                        continue
                        
                    elif prefix == "s":
                        name = f"session_{round(time())}.mettar" if rest == "" else (
                            rest if rest.endswith("mettar") else rest + ".mettar")
                        with open(os.sep.join(self.cwd + name), 'w') as f:
                            f.writelines(history)
                        continue
                    elif prefix == "l":
                        name = max(glob("session_*.mettar")) if rest == "" else (
                            rest if rest.endswith("mettar") else rest + ".mettar")
                        self.lazy_import_file(name)
                        continue
                    elif prefix == "q":
                        break
        
                    expr = self.parse_single(rest)
        
                    if prefix == "!":
                        yield expr, interpret(self.space(), expr)
                        continue
                    elif prefix == "?":
                        yield expr, self.space().subst(expr, expr)
                        continue
                    elif prefix == "+":
                        self.space().add_atom(expr)
                        continue
                    elif prefix == "-":
                        self.space().remove_atom(expr)
                        continue
                    else:
                        result = runner.run(line)
                        if result is not None:
                            print(result)
                        continue

            except KeyboardInterrupt:
                # Handle Ctrl+C to exit
                print("\n^C Exiting...")
                sys.exit(3)

            except EOFError:
                # Handle Ctrl+D to exit
                print("\n^D EOF...")
                sys.exit(0)
                
            except Exception as e:
                # If there's an error, print it
                print(f"Error: {e}")
                continue

    def repl(self):
        for i, (expr, result_set) in enumerate(self.repl_loop()):
            if result_set:
                for result in result_set:
                    print(color_expr(result))
            else:
                print(f"/")


class MeTTaFly(InteractiveMeTTa):
    def copy(self):
        return self
        


def _response2bindings(txt):
        res = re.findall(r'\{.*?\}', txt)
        new_bindings_set = BindingsSet.empty()
        if res == []:
            return new_bindings_set
        res = res[0][1:-1]
        _var, val = res.split(':')
        var = re.findall(r'\".*?\"', _var)
        var = var[0][1:-1] if len(var) > 0 else _var.replace(" ", "")
        if var[0] == '$':
            var = var[1:]
        var = V(var)
        try:
            val = ValueAtom(int(val))
            bindings = Bindings()
            bindings.add_var_binding(var, val)
            new_bindings_set.push(bindings)
        except ValueError:
            ss = re.findall(r'\".*?\"', val)
            if ss == []:
                ss = ['"' + val + '"']
            for s in ss:
                val = S(s[1:-1])
                bindings = Bindings()
                bindings.add_var_binding(var, val)
                new_bindings_set.push(bindings)
        return new_bindings_set

class FlySpace(MeTTaFly):
    def query(self, query_atom):
        tot_str = "Answer the question taking into account the following information (each fact is in brackets):\n"
        for atom in self.atoms_iter():
            tot_str += str(atom) + "\n"
        tot_str += "If the question contains letters in brackets with $ sign, for example ($x), provide the answer in the json format in curly brackets, that is { $x: your answer }.\n"
        # tot_str += "If information is not provided, return the entry to be queried in JSON {unknown value: UNKNOWN}."
        tot_str += "The question is: " + str(query_atom)[1:-1] + "?"
        #response = openai.ChatCompletion.create(
        #        model="gpt-3.5-turbo-0613",
        #        messages=[{'role': 'system', 'content': 'Reason carefully about user request'},
        #            {'role': "user", "content": tot_str}],
        #        temperature=0)
        #txt = response['choices'][0]['message']['content']
        return tot_str #_response2bindings(txt)



@register_atoms
def flyspace_atoms():
    counter = 0
    print("flyspace_atoms called")

    def new_value_atom_func():
        nonlocal counter
        counter += 1
        return [ValueAtom({'A': counter, 6: 'B'})]

    newNSpaceAtom = OperationAtom('new-fly-space', lambda: [G(SpaceRef(FlySpace()))], unwrap=False)
    newISpaceAtom = OperationAtom('new-value-atom', new_value_atom_func, unwrap=False)
    # (new-intent-space)
    # this was stored in the space.. 
    # !(match &self $ $)
    # and each time the space is matched it will be incremented
    # !(match &self $ $)
    # !(match &self $ $)
    # (new-intent-space)
    # they share a counter
    # !(match &self $ $)   
    return {
        r"new-fly-space": newNSpaceAtom,
        r"new-intent-space": newISpaceAtom,        
        #'&self': runner, '&prolog': G(swip),
        '&my-dict': ValueAtom({'A': 5, 6: 'B'}),
        'get-by-key': OperationAtom('get-by-key', lambda d, k: d[k]),
        'call-pyswip': OperationAtom('call-pyswip', lambda d, k: call_pyswip(d,k))
    }

def call_pyswip(d,k):
    return k

@register_tokens(pass_metta=True)
def flyspace_tokens(metta):

    print("flyspace_tokens called")

    def run_resolved_symbol_op(runner, atom, *args):
        # Print the arguments passed
        print(f"run_resolved_symbol_op: runner={runner}, atom={atom}, args={args}")
    
        expr = E(atom, *args)
        result1 = hp.metta_evaluate_atom(runner.cmetta, expr.catom)
        result = [Atom._from_catom(catom) for catom in result1]
        print(f"run_resolved_symbol_op: result1={result1}, result={result}")
        return result

    def resolve_atom(metta, token):
        print(f"resolve_atom: token={token}")
        # TODO: nested modules...
        runner_name, atom_name = token.split('::')
        # FIXME: using `run` for this is an overkill,
        #        but there is no good Python API for this;
        #        we may have an interface function for
        #        `tokenizer` to resolve individual symbols -
        #        metta.tokenizer().find_token ...
        #        or something else...
        # TODO: assert
        runner = metta.run('! ' + runner_name)[0][0].get_object()
        atom = runner.run('! ' + atom_name)[0][0]
        # A hack to make runner::&self work
        # TODO? the problem is that we need to return an operation to make this
        # work in parent expressions, thus, it is unclear how to return pure
        # symbols
        if atom.get_type() == hp.AtomKind.GROUNDED:
            return atom
        # TODO: borrow atom type to op
        return OperationAtom( token, lambda *args: run_resolved_symbol_op(runner, atom, *args), unwrap=False)

    return {
        '&runner': lambda _: ValueAtom(metta),
        r"[^\s]+::[^\s]+": lambda token: resolve_atom(metta, token)
    }

runner = FlySpace()
runner.run("!(extend-py! pyswip)")
runner.run("!(extend-py! pyswip.easy)")
runner.run("!(extend-py! pyswip.prolog)")
runner.run("!(extend-py! flyspace)")
runnerAtom = G(runner, AtomType.ATOM)

#from pyswip.prolog import Prolog
from pyswip.easy import *
from pyswip import registerForeign, PL_foreign_context, PL_foreign_control, PL_FIRST_CALL, PL_REDO, PL_PRUNED, PL_retry, PL_FA_NONDETERMINISTIC, Variable, Prolog

def test_nondeterministic_foreign():

    def nondet(a, context):
        control = PL_foreign_control(context)
        context = PL_foreign_context(context)
        if control == PL_FIRST_CALL:
            context = 0
            a.unify(int(context))
            context += 1
            return PL_retry(context)
        elif control == PL_REDO:
            a.unify(int(context))
            if context == 10:
                return False
            context += 1
            return PL_retry(context)
        elif control == PL_PRUNED:
            pass


    nondet.arity = 1
    registerForeign(nondet, flags=PL_FA_NONDETERMINISTIC)
    result = list(swip.query("nondet(X)"))

    print(result)

    if len(result) != 10:
        print('Query should return 10 results')

    for i in range(10):
        if {'X': i} not in result:
            print('Expected result X:{} not present'.format(i))


    def hello(t):
        print("Hello,", t)

    hello.arity = 1

    registerForeign(hello)
    
    swip.assertz("father(michael,john)")
    swip.assertz("father(michael,gina)")

    result = list(swip.query("father(michael,X), hello(X)"))

    print(result)

    if len(result) != 2:
        print('Query should return two results')
    for name in ('john', 'gina'):
        if {'X': name} not in result:
            print('Expected result X:{} not present'.format(name))


#def test_atoms_and_strings_distinction(self):
    test_string = "string"

    def get_str(string):
        string.value = test_string
    
    def test_for_string(string, test_result):
        test_result.value = (test_string == string.decode('utf-8'))

    get_str.arity = 1
    test_for_string.arity = 2

    registerForeign(get_str)
    registerForeign(test_for_string)
    
    result = list(swip.query("get_str(String), test_for_string(String, Result)"))

    print(result)

    if result[0]['Result'] != 'true':
          print('A string return value should not be converted to an atom.')

    print()
    print()
    print()

def prolog_to_atomspace(prolog_obj):

    if isinstance(prolog_obj, str):
        return S(prolog_obj)

    if isinstance(prolog_obj, Atom):
        return S(prolog_obj.get_value())

    if isinstance(prolog_obj, Variable):
        return V(prolog_obj.chars if prolog_obj.chars else "Var")

    if isinstance(prolog_obj, Functor):
        # Convert the functor to an expression in Atomspace
        if isinstance(prolog_obj.name, Atom):
            sfn = prolog_obj.name.value
        else:
            sfn = prolog_obj.name

        if sfn=="[|]":
            sfn = "::";

        fn = S(sfn)

        # Create an array of arguments first
        argz = [prolog_to_atomspace(arg) for arg in prolog_obj.args]

        args_len = len(argz)
    
        # Handle the creation of E based on the length of argz
        if args_len == 1:
            main_expr = E(fn, argz[0])
        elif args_len == 2:
            main_expr = E(fn, argz[0], argz[1])
        elif args_len == 3:
            main_expr = E(fn, argz[0], argz[1], argz[2])
        elif args_len == 4:
            main_expr = E(fn, argz[0], argz[1], argz[2], argz[3])
        elif args_len == 5:
            main_expr = E(fn, argz[0], argz[1], argz[2], argz[3], argz[4])
        elif args_len == 6:
            main_expr = E(fn, argz[0], argz[1], argz[2], argz[3], argz[4], argz[5])
        elif args_len == 7:
            main_expr = E(fn, argz[0], argz[1], argz[2], argz[3], argz[4], argz[5], argz[6])
        elif args_len == 8:
            main_expr = E(fn, argz[0], argz[1], argz[2], argz[3], argz[4], argz[5], argz[6], argz[7])
        elif args_len == 9:
            main_expr = E(fn, argz[0], argz[1], argz[2], argz[3], argz[4], argz[5], argz[6], argz[7], argz[8])
        elif args_len == 10:
            main_expr = E(fn, argz[0], argz[1], argz[2], argz[3], argz[4], argz[5], argz[6], argz[7], argz[8], argz[9])        
        return main_expr

    # Handle numbers and convert them to ValueAtom objects in Atomspace
    if isinstance(prolog_obj, (int, float)):
        return ValueAtom(prolog_obj)

    # Handle Prolog lists
    if isinstance(prolog_obj, list):
        list_expr = E("::")
        for item in prolog_obj:
            list_expr.add_sub_expression(prolog_to_atomspace(item))
        return list_expr

    raise ValueError(f"Unknown Prolog object type: {type(prolog_obj)}")

@staticmethod
def atomspace_to_prolog(atomspace_obj):

    if isinstance(atomspace_obj, ValueAtom):
        return atomspace_obj.get_value()

    if isinstance(atomspace_obj, SymbolAtom):
        return Atom(atomspace_obj.get_value())


    if isinstance(atomspace_obj, E):
        # Convert the main expression and its sub-expressions to a Functor in Prolog
        if atomspace_obj.get_value() == "::":  # Convert Atomspace list to Prolog list
            return [atomspace_to_prolog(sub_expr) for sub_expr in atomspace_obj.sub_expressions]
        else:
            args = [atomspace_to_prolog(sub_expr) for sub_expr in atomspace_obj.sub_expressions]
            return Functor(Atom(atomspace_obj.get_value()), len(args), args)

    if isinstance(atomspace_obj, V):
        return Variable(name=atomspace_obj.get_value())

    raise ValueError(f"Unknown Atomspace object type: {type(atomspace_obj)}")



@staticmethod
def prolog_to_atomspace_wrapper(prolog_obj, atomspace_obj):
    result = prolog_to_atomspace(prolog_obj)
    atomspace_obj.unify(atomspace_to_prolog(result))
    return True

@staticmethod
def atomspace_to_prolog_wrapper(atomspace_obj, prolog_obj):
    result = atomspace_to_prolog(atomspace_obj)
    prolog_obj.unify(result)
    return True

@staticmethod
def atomspace_to_prolog_tests1():
    # Register the methods as foreign predicates
    registerForeign(prolog_to_atomspace_wrapper, arity=2)
    registerForeign(atomspace_to_prolog_wrapper, arity=2)

    # Usage:
    prolog_functor = Functor(Atom("example"), 2, [Atom("sub1"), 3.14])
    print(f"prolog_functor={prolog_functor}"),
    atomspace_expr = prolog_to_atomspace(prolog_functor)
    print(f"atomspace_expr={atomspace_expr}"),
    converted_back_to_prolog = atomspace_to_prolog(atomspace_expr)
    print(f"converted_back_to_prolog={converted_back_to_prolog}"),


    # Now you can use the methods in Prolog queries
    print(list(swip.query("prolog_to_atomspace_wrapper('example', X).")))
    print(list(swip.query("atomspace_to_prolog_wrapper(X, 'example').")))

@staticmethod
def atomspace_to_prolog_tests2():
    # Register the methods as foreign predicates
    registerForeign(prolog_to_atomspace_wrapper, arity=2)
    registerForeign(atomspace_to_prolog_wrapper, arity=2)

    # Now you can use the methods in Prolog queries
    list(swip.query("prolog_to_atomspace_wrapper('example', X)."))
    list(swip.query("atomspace_to_prolog_wrapper(X, 'example')."))

    # Usage:
    prolog_list = ["a", "b", 3]
    atomspace_expr = prolog_to_atomspace(prolog_list)
    converted_back_to_prolog = atomspace_to_prolog(atomspace_expr)
    prolog_functor = Functor(Atom("example"), 2, [Atom("sub1"), 3.14])
    atomspace_expr = prolog_to_atomspace(prolog_functor)
    converted_back_to_prolog = atomspace_to_prolog(atomspace_expr)



swip = Prolog()

if __name__ == "__main__":
    os.system('clear')
    print(underline("Fly-Space\n"))

    test_nondeterministic_foreign()
    # @TODO fix this atomspace_to_prolog_tests1()
    runner.cwd = ["."]
    t0 = monotonic_ns()
    runner.lazy_import_file("autoexec.metta")    
    print(f"\nloading took {(monotonic_ns() - t0)/1e9:.5} seconds, repl:")
    runner.repl()

