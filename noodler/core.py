"""
Define basic data structures and types.

A **segment automaton** is a NFA with ε-transitions such
that no ε-transition is on a cycle. Segment automata are
concatenation of _segments_.

Classes
-------
String_equation
SingleSEQuery
    Abstract class for String-equation queries

Types
-----
Aut : awalipy.Automaton
    General type of automaton.
AutConstraints : Dict[str, Aut]
    Automata as constraints for SE queries.
SegAut : awalipy.Automaton
    Segment automaton.
TransID : int
    ID of transition in automaton
"""

from typing import Dict, Type, Union, Sequence

import awalipy

Aut = awalipy.Automaton
SegAut: Type[awalipy.Automaton] = awalipy.Automaton
RE = awalipy.RatExp

TransID = int

AutConstraints = Dict[str, Aut]
REConstraints = Dict[str, RE]
StrConstraints = Dict[str, str]
Constraints = Union[AutConstraints, REConstraints, StrConstraints]


class StringEquation:
    # noinspection PyUnresolvedReferences
    """
        The basic class of string equations.

        If ``self.left[i] == v`` then `v` _occurs_ on left at `i`.

        Attributes
        ----------
        variables : str or list of str
            Variables that appear in the equation.
        left, right : str over vars or iterable of vars
            Left and right side of the equation.
        indices_l, indices_r : dict (vars → list of ints)
            Sequence of occurrences of `v` on each side for each var `v`.
        switched : StringEquation
            Pointer to equation with a switched sides.


        Public functions
        ----------------
        get_side : {"left","right"} → str or iterable of vars
            Returns corresponding side of the equation

        Notes
        -----
        By default ``self.switched.switched == self``.
        """

    def __init__(self, left_side: str, right_side: str,
                 switched=None, variables=None):
        """
        Create a String_equation.

        If ``vars`` is string, each character of it is treated as
        a variable.

        If switched is not specified, create it.

        Parameters
        ----------
        left_side, right_side : str over vars or list of vars
        switched : String_equation, default None
            Equation with switched sides.
        variables : str or list of str
            The variables that appear in the equation.
        """
        if variables is None:
            variables = set(left_side).union(set(right_side))
        self.vars = variables
        self.left = left_side
        self.right = right_side

        # Set indices dicts
        ind_l = {}
        ind_r = {}
        for var in self.vars:
            ind_l[var] = [i for i, v in enumerate(self.left) if v == var]
            ind_r[var] = [i for i, v in enumerate(self.right) if v == var]
        self.indices_l = ind_l
        self.indices_r = ind_r

        # Setup switched equation
        if switched is None:
            switched = StringEquation(self.right, self.left,
                                      switched=self,
                                      variables=self.vars)
        self.switched = switched

    def get_side(self, side: str) -> str:
        """
        Return the left or right side of equation.

        Parameters
        ----------
        side : {"left", "right"}

        Returns
        -------
        self.left or self.right
        """
        if side not in ["left", "right"]:
            raise ValueError("side must be 'left' or 'right'."
                             f"Given {side}.")
        if side == "left":
            return self.left
        return self.right

    def __str__(self):
        """Print equation in the form of left=right."""
        return f"{self.left} = {self.right}"

    def __repr__(self):
        return f"{self.__class__.__name__}: {self.left} = {self.right}"


def create_automata_constraints(constraints: Constraints) -> AutConstraints:
    """
    Parse any constraints-like dictionary into automata constraints.

    Parameters
    ----------
    constraints: Constraints Dict[str,RE] or Dict[str,str]
        Dictionary var → RE (where RE is either string or awalipy.RatExp)
    Returns
    -------
    AutConstraint
        The automata representation of constraints
    """
    res = {}
    for var, const in constraints.items():
        if isinstance(const, str):
            const = awalipy.RatExp(const)

        if not isinstance(const, RE):
            raise TypeError("constraints must be a regular expression")

        res[var] = const.exp_to_aut()

    return res