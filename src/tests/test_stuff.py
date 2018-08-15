from .. import summarize, multiply, foobar


def test_sum():
    assert summarize(3, 6) == 9


def test_multiply():
    assert multiply(3, 6) == 18

def test_foobar():
    assert foobar(1, 1, 1) == 2
