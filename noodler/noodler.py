"""
Classes
-------
AutSingleSESystem
    System of 1 string equation with regular constraints on
    variables given by automata
RESESystemSingle
    System with constraints represented by regular expressions.
QueueNoodler

"""
import awalipy
import itertools

from collections import deque
from typing import Dict, Sequence

# Classes
from .core import StringEquation, SingleSESystem
# Types
from .core import Aut, AutConstraints, SegAut

from .algos import chain_automata, eps_preserving_product, \
    eps_segmentation, multiop, split_segment_aut
from .utils import show_automata


class AutSingleSESystem(SingleSESystem):
    """
    String equation with automata constraints.

    The system is specified by a string equation and regular
    constraints on variables defined by automata.

    Functions
    ---------
    automata_for_side : "left"/"right" → list of auts
    is_balanced : bool
    show_constraints
        In Jupyter, display automaton for each variable
    """

    def __init__(self, equation: StringEquation,
                 constraints: AutConstraints):
        """
        Parameters
        ----------
        equation : StringEquation
        constraints : dict (equation.vars → aut)
        """
        super().__init__(equation, constraints)

    def automata_for_side(self, side: str,
                          make_copies: bool = False) -> Sequence[Aut]:
        """
        Return list of automata for left/right side of equation.

        Parameters
        ----------
        side : "left" or "right"
        make_copies : Bool, default False
            Create copies of constraints automata if True
        Returns
        -------
        list of auts
        """
        var_sequence = self.eq.get_side(side)
        automata = []

        for var in var_sequence:
            if make_copies:
                aut = self.constraints[var].copy()
            else:
                aut = self.constraints[var]
            automata.append(aut)

        return automata

    def is_balanced(self) -> bool:
        """
        Check if system is balanced.

        System is balanced if automata representing both
        sides recognize equivalent languages.

        Returns
        -------
        True if system is balanced
        """
        auts_l = self.automata_for_side("left")
        auts_r = self.automata_for_side("right")

        aut_l = multiop(auts_l, awalipy.concatenate)
        aut_r = multiop(auts_r, awalipy.concatenate)

        return awalipy.are_equivalent(aut_l, aut_r)

    def show_constraints(self):
        show_automata(self.constraints)

    def switched(self):
        return self.__class__(self.eq.switched, self.constraints)


class RESESystemSingle(SingleSESystem):
    """
    String equation with regular expression constraints for variables.

    The system is specified by a string equation and constraints on
    variables defined by regular expressions.

    Functions
    ---------
    automata_for_side : "left"/"right" → list of auts
    is_balanced : bool
    show_constraints
        In Jupyter, display automaton for each variable
    """

    def __init__(self, equation: StringEquation,
                 constraints: Dict[str, str]):
        """
        Parameters
        ----------
        equation : StringEquation
        constraints : dict (equation.vars → aut)
        """
        res = {
            var: awalipy.RatExp(c) for var, c in constraints.items()
        }
        super().__init__(equation, res)

    def automata_for_side(self, side: str,
                          make_copies: bool = False) -> Sequence[Aut]:
        """
        Return list of automata for left/right side of equation.

        Parameters
        ----------
        side : "left" or "right"
        make_copies : Bool, default False
            Create copies of constraints automata if True
        Returns
        -------
        list of auts
        """
        var_sequence = self.eq.get_side(side)
        aut_const = self._get_automata_constraints()
        automata = []

        for var in var_sequence:
            if make_copies:
                aut = aut_const[var].copy()
            else:
                aut = aut_const[var]
            automata.append(aut)

        return automata

    def _get_automata_constraints(self) -> AutConstraints:
        """
        Return dictionatry with constraints as automata.
        """
        return {var: c.exp_to_aut() for var, c in self.constraints.items()}

    def aut_system(self) -> AutSingleSESystem:
        """
        Convert into system with automata constraints.

        Returns
        -------
        AutSingleSESystem
        """
        aut_const = self._get_automata_constraints()
        return AutSingleSESystem(self.eq, aut_const)


def noodlify(aut: SegAut,
             include_empty: bool = False) -> Sequence[SegAut]:
    """
    Create noodles from segment automaton.
    
    Segment automaton is a chain of automata connected
    via ε-transitions. A noodle is a copy of the segment
    automaton with exactly 1 ε-transition between each
    two consecutive segments. Noodlify return the list of
    all (non-empty) noodles.
    
    Parameters
    ----------
    aut : aut
        Segment automaton to noodlify.
    include_empty : Bool (default False)
        Include also empty noodles if True.
    """
    # Stores the noodles
    noodles = []

    # We need to make a copy of the automaton before running
    # segmentation to remove non-existent transitions.
    aut = aut.copy()
    # depth → list of ε-trans
    segments = eps_segmentation(aut)

    # For each combination of ε-transitions, create the automaton.
    for noodle_trans in itertools.product(*segments.values()):
        noodle = aut.copy()
        for i in reversed(range(len(noodle_trans))):
            # Remove all ε-tr. of depth i but noodle_trans[i]
            for tr in segments[i]:
                assert noodle.label_of(tr) == "\\e"
                if tr != noodle_trans[i]:
                    noodle.del_transition(tr)

        noodle = noodle.trim()
        if include_empty or noodle.num_states() > 0:
            noodles.append(noodle)

    return noodles


def noodlify_system(system: AutSingleSESystem) -> Sequence[SegAut]:
    """
    Make left-noodles from system.

    The noodles (result) are not necessary unified.

    Parameters
    ----------
    system : AutSingleSESystem
        System to be noodlified

    Returns
    -------
    noodles : Sequence[Aut]
        left-noodles for ``system``
    """
    left_in = system.automata_for_side("left")
    right_in = system.automata_for_side("right")
    left_seg_aut = chain_automata(left_in)
    right_aut: awalipy.Automaton = multiop(right_in, awalipy.concatenate)
    right_aut = right_aut.minimal_automaton().trim()
    product = eps_preserving_product(left_seg_aut, right_aut,
                                     history=True)

    return noodlify(product)


def create_unified_system(equation: StringEquation,
                          left_auts: Sequence[Aut],
                          right_auts: Sequence[Aut]) -> AutSingleSESystem:
    """
    Create unified system from equation and automata.

    Unify automata given by left_auts and right_auts
    with respect to equation. That is, for each variable v
    present in the equation, make a product of automata
    that correspond to a occurrence of `v`. The product
    automaton is a constraint for `v` in the resulting
    system.

    If the language (of the product) for some variable is
    empty, the system can't be unified.

    Parameters
    ----------
    equation: StringEquation
    left_auts, right_auts: list of auts
        list of automata of the same length as ``equation.left``
        resp. ``equation.right``.
    Returns
    -------
    AutSingleSESystem
        Unified system for ``equation`` and None if the system cannot
        be unified.
    """
    if len(left_auts) != len(equation.left):
        raise ValueError(f"""
        The length of `left_auts` must agree with length of `equation.left`.
        Given len(left_auts) = {len(left_auts)} and 
              len(equation.left) = {len(equation.left)}.""")
    if len(right_auts) != len(equation.right):
        raise ValueError(f"""
        The length of `right_auts` must agree with length of `equation.right`.
        Given len(right_auts) = {len(right_auts)} and 
              len(equation.right) = {len(equation.right)}.""")

    const: AutConstraints = {}

    for var in equation.vars:
        aut_l = {left_auts[i] for i in equation.indices_l[var]}
        aut_r = {right_auts[i] for i in equation.indices_r[var]}
        var_auts = aut_l.union(aut_r)
        product: Aut = multiop(list(var_auts), awalipy.product)
        const[var] = product.minimal_automaton().trim()
        if const[var].num_states() == 0:
            return None

    return AutSingleSESystem(equation, const)


def is_unified(equation, auts_l, auts_r):
    """
    Check if system is unified.

    Check for each variable of equation whether
    all corresponding automata in auts_l and auts_r
    recognize the same language.

    The lengths of auts must correspond to lengths
    of equation sides.

    Parameters
    ----------
    equation : StringEquation
    auts_l, auts_r : list of auts
        Automata representing eq_l

    Returns
    -------
        False if two automata for the same variable recognize
        different languages. True otherwise.
    """
    pass


class QueueNoodler:
    """
    QueueNoodler makes and unifies automata noodles.

    Attributes
    ----------
    Q : deque
        Keep systems to be processed.
    """

    def __init__(self, system):
        """
        Create a noodler with an initialized queue.

        Parameters
        ----------
        system: AutSingleSESystem
            System to start with
        """
        self.Q = deque([system])
        self.solutions = []

    def one_solution(self):
        """
        Attempts to find a solution.

        Take one system out of queue, noodlify it and then
        unify each noodle with the right-hand side automata.
        If this unified system is balanced, store it into
        self.solutions and return it. Otherwise, add it to
        queue and continue.

        No guarantees on termination.

        Returns
        -------
        Balanced and unified system or None
        """
        system = self.Q.popleft()
        if system.is_balanced():
            self.solutions.append(system)
            return system

        while system:
            noodles = noodlify_system(system)
            for noodle in noodles:
                auts_l = split_segment_aut(noodle)
                auts_r = system.automata_for_side("right")
                noodle_sys = create_unified_system(system.eq,
                                                   auts_l,
                                                   auts_r)
                # Noodle cannot be unified
                if noodle_sys is None:
                    continue

                if noodle_sys.is_balanced():
                    self.solutions.append(noodle_sys)
                    return noodle_sys
                else:
                    self.Q.append(noodle_sys.switched())

            system = self.Q.popleft()

        # Nothing was found
        return None


    def process_one(self, verbose=False):
        system = self.Q.popleft()

        if verbose:
            print(f"""
================================
Processing the following system:
{system.eq}
Constraints:
{system.constraints}
--------------------------------""")

        noodles: Sequence[SegAut] = noodlify_system(system)
        for noodle in noodles:
            auts_l = split_segment_aut(noodle)
            auts_r = system.automata_for_side("right")
            noodle_sys = create_unified_system(system.eq,
                                               auts_l,
                                               auts_r)

            noodle_sys.eq = noodle_sys.eq.switched
            self.Q.append(noodle_sys)

        if verbose:
            print(f"""Found {len(noodles)} non-empty noodles.
================================""")
