from calculadora import sumar, restar, multiplicar


def test_sumar():
    assert sumar(2, 3) == 5


def test_restar():
    assert restar(5, 3) == 2


def test_multiplicar():
    assert multiplicar(4, 3) == 12