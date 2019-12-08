import re
from pytest_bdd import scenario, given, when, then, parsers


@scenario('example.feature', 'Arguments for given, when, thens')
def test_arguments():
    pass


@given(parsers.parse('there are {start:d} cucumbers'))
def start_cucumbers(start):
    return dict(start=start, eat=0)


@when(parsers.parse('I eat {eat:d} cucumbers'))
def eat_cucumbers(start_cucumbers, eat):
    start_cucumbers['eat'] += eat


@then(parsers.parse('I should have {left:d} cucumbers'))
def should_have_left_cucumbers(start_cucumbers, start, left):
    assert start_cucumbers['start'] == start
    assert start - start_cucumbers['eat'] == left