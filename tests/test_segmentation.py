import awalipy
import pytest
from noodler import chain_automata, multiop, split_segment_aut
from example_system import system

auts_l = system.automata_for_side("left")
segment_l = chain_automata(auts_l)
concat_l = multiop(auts_l, awalipy.concatenate)


def test_chaining():
    assert segment_l.are_equivalent(concat_l)


def test_segmantation():
    split = split_segment_aut(segment_l)
    for i in range(len(split)):
        assert awalipy.are_equivalent(auts_l[i], split[i])


def test_split_returns_no_eps():
    split = split_segment_aut(segment_l)
    for aut in split:
        with pytest.raises(RuntimeError):
            aut.add_eps_transition(0, 1)
        with pytest.raises(ValueError):
            aut.add_transition(0,1,"\\e")
