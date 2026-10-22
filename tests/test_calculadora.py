
from calculadora import sumar, restar, multiplicar


def test_sumar():
    assert sumar(2, 3) == 5


def test_restar():
    assert restar(5, 3) == 2


def test_multiplicar():
    assert multiplicar(4, 3) == 12

def test_funcion_nueva():
    # Este test falla a propósito para simular detección por CI
    from calculadora import funcion_nueva_con_bug
    # Si CI hace bien su trabajo, esto nunca llega a producción
    resultado = funcion_nueva_con_bug()
    assert resultado is not None