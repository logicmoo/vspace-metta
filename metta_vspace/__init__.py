#from .metta_repl import REPL
#from .fb_test_metta import PatternValue
from hyperon.atoms import V, S, E, ValueAtom, GroundedAtom, ExpressionAtom, G, AtomType
from hyperon.runner import MeTTa
from hyperon.ext import register_atoms
from hyperon.ext import register_tokens
from pyswip import registerForeign, PL_foreign_context, PL_foreign_control, PL_FIRST_CALL, PL_REDO, PL_PRUNED, PL_retry, PL_FA_NONDETERMINISTIC, Variable, Prolog as PySwip, Atom as PySwipAtom
gswip = PySwip()
import hyperon as hp
from . import metta_learner
from .metta_learner import VSpace
#from . import metta_learner



