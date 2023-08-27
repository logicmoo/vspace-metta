import readline
import sys
from hyperon.base import Atom
from hyperon.atoms import OperationAtom, E
from hyperon.ext import register_tokens
from hyperon.atoms import G, AtomType
from hyperon.runner import MeTTa
import hyperonpy as hp

class MeTTaVS(MeTTa):

    def copy(self):
        return self


@register_atoms
def my_imported_runner_atom():
    # We don't use metta here, but we could...
    content = '''
        (: fact (-> Number Number))
        (= (fact $x)
           (case $x
            ((0 1)
             ($_ (* $x (fact (- $x 1)))))
           )
        )

        (some content)
        (= (self-from-self)
           (match &self (some $x) $x))

        something

        (= (call_func $f $arg) ($f $arg))
    '''
    runner = MeTTaVS()
    runner.run(content)
    runnerAtom = G(runner, AtomType.ATOM)
    return {
        'r': runnerAtom
    }

@register_tokens(pass_metta=True)
def my_resolver_atoms(metta):

    def run_resolved_symbol_op(runner, atom, *args):
        expr = E(atom, *args)
        result = hp.metta_evaluate_atom(runner.cmetta, expr.catom)
        result = [Atom._from_catom(catom) for catom in result]
        return result

    def resolve_atom(metta, token):
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
        return OperationAtom(
            token,
            lambda *args: run_resolved_symbol_op(runner, atom, *args),
            unwrap=False)

    return {
        r"[^\s]+::[^\s]+": lambda token: resolve_atom(metta, token)
    }


class REPL:
    def __init__(self):
        self.history = []

    def main_loop(self):

        runner = MeTTaVS()
        runner.run(content)
        runnerAtom = G(runner, AtomType.ATOM)
        while True:
            try:
                # Use the input function to get user input
                line = input(">>> ")
                
                # Check for history commands
                if line == '.history':
                    for idx, item in enumerate(self.history):
                        print(f"{idx + 1}: {item}")
                    continue

                # If the line isn't empty, evaluate it
                if line:
                    self.history.append(line)
                    result = eval(line)
                    if result is not None:
                        print(result)

            except KeyboardInterrupt:
                # Handle Ctrl+C to exit
                print("\nExiting...")
                sys.exit(0)
                
            except Exception as e:
                # If there's an error, print it
                print(f"Error: {e}")

if __name__ == "__main__":
    repl = REPL()

    repl.main_loop()

