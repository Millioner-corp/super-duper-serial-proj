from .. import summarize, multiply


def test_sum():
    assert summarize(3, 6) == 9


def test_multiply():
    assert multiply(3, 6) == 18

