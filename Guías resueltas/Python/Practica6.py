import math

#Ejercicio 1.1)
def imprimir_hola_mundo() -> None:
    print("Hola Mundo")

#Ejercicio 1.2)
#\n es el caracter salto de linea
def imprimir_un_verso() -> None:
    print("Te quiero yo y tu a mi\nsomos un familia feliz\ncon un fuerte abrazo jijo")

#Ejercicio 1.3)
#La funcion round acorta los decimales de nuestro numero, si los tiene
#sqrt es la funcion raiz cuadrada
def raizDe2() -> None:
    res = round(math.sqrt(2),4)
    return res

#Ejercicio 1.4)
def factorial_de_dos() -> None:
    res = 2*1
    return res

#Ejercicio 1.5)
def perimetro() -> float:
    res = 2*math.pi
    return res


#Ejercicio 2.1)
#Devuelve none porque no usamos return
def imprimir_saludo(nombre: str) -> None:
    print("Hola",nombre)

#Ejercicio 2.2)
def raiz_cuadrada_de(numero):
    res = math.sqrt(numero)
    return res

#Ejercicio 2.3)
def fahrenheit_a_celcius(t: float) -> float:
    res = ((t-32)*5)/9
    return res

#Ejercicio 2.4)
def imprimir_dos_veces(estribillo: str) -> None:
    print(estribillo)
    print(estribillo)

#Ejercicio 2.5)
def es_multiplo_de(n:int, m:int) -> bool:
    res: bool = True
    if n%m != 0:
        res = False
    return res

#Ejercicio 2.6)
def es_par(numero: int) -> bool:
    res: bool = True
    if es_multiplo_de(numero,2) != 0:
        res = False
    return res
    
#Ejercicio 2.7)
#Para hacer este ejercicio se necesita saber la definicion de resto y divisor de una division.
def cantidad_de_pizzas(comensales: int, min_cant_de_porciones: int) -> int:
    cant_de_pizzas: int = comensales*min_cant_de_porciones//8
    porciones_restantes: int = comensales*min_cant_de_porciones%8
    if cant_de_pizzas == 0 and porciones_restantes >= 0:
        cant_de_pizzas = 1
    else:
        cant_de_pizzas = cant_de_pizzas + 1 
    return cant_de_pizzas


#Ejercicio 3.1)
def alguno_es_0(numero1: float, numero2: float) -> bool:
    res = numero1 == 0 or numero2 == 0 
    return res

#Ejercicio 3.2)
def ambos_son_0(numero1: float, numero2: float) -> float:
    res = numero1 == 0 and numero2 == 0
    return res

#Ejercicio 3.3)
def es_nombre_largo(nombre: str) -> bool:
    res =  3 <= len(nombre) <= 8 
    return res

#Ejercicio 3.4)
def es_bisiesto(año: int) -> bool:
    res = año%400 == 0 and año%4 == 0 and año%100 != 0
    return res


#Ejercicio 4.1)
"""No se porque en este ejercicio nos pide usar la funcion max() y min() si nisiquiera vimos listas
    o cualquier iterable que no sea un string en este punto de la cursada"""
def peso_pino(altura: float) -> float:
    peso: float = 0
    if altura <= 3:
        peso = altura*100*3
    else:
        peso = 900 + (altura - 3)*100*2
    return peso

#Ejercicio 4.2)
def es_peso_util(peso: float) -> bool:
    le_sirve: bool = False
    if 400 <= peso <= 1000:
        le_sirve = True  
    return le_sirve

#Ejercicio 4.3)
#Vamos a usar la funcion auxiliar peso_pino
def sirve_pino(altura: float) -> bool:
    peso: float = peso_pino(altura)
    le_sirve: bool = False
    if 400 <= peso <= 1000:
        le_sirve = True
    return le_sirve

#Ejercicio 4.4)
#Vamos a usar las funciones auxiliares peso_pino y es_peso_util.
#En la sentencia if, si es_peso_util es True, entonces le_sirve es igual a True.
def sirve_pino_comp(altura: float) -> bool:
    peso: float = peso_pino(altura)
    le_sirve: bool = False
    if es_peso_util(peso):     
        le_sirve = True
    return le_sirve


#Ejercicio 5.1)
#El enunciado nos pide no utilizar if y else. 
#En python True es igual a 1 y False es igual a 0.
def es_doble_si_es_par(numero: int) -> int:
    res: int = numero * (1 + es_par(numero))
    return res

#Ejercicio 5.2)
#En este caso no utilizaremos if y else.
def devolver_valor_si_es_par_sino_el_que_sigue(numero: int) -> int:
    res: int = not es_par(numero) + numero

def devolver_el_valor_si_es_par_sino_el_que_sigue_v2(numero: int) -> int:
    if numero%2 == 0:
        res = True
    else:
        res = False
    return res
#Tendriamos que usar las anotaciones de tipado, pero no es necesario si esta en un bloque (Lo dijo un profesor).
def devolver_el_valor_si_es_par_sino_el_que_sigue_v3(numero: int) -> int:
    if numero%2 == 0:
        res = True
    if numero%2 != 0:
        res= False
    return res

#Ejercicio 5.3)
def devolver_el_doble_si_es_multipo3_el_triple_si_es_multiplo9(numero: int) -> int:
    res: int = numero*(1 + es_multiplo_de(numero,3) + es_multiplo_de(numero,9)) 
    return res

def devolver_el_doble_si_es_multipo3_el_triple_si_es_multiplo9_v2(numero: int) -> int:
    res: int = numero
    if es_multiplo_de(numero,9):
        numero = numero*3
    else:
        numero = numero*(1 + es_multiplo_de(numero,3))
    return res

def devolver_el_doble_si_es_multipo3_el_triple_si_es_multiplo9_v3(numero: int) -> int:
    res: int = numero
    if es_multiplo_de(numero,9):
        numero = numero*3
    if es_multiplo_de(numero,3):
        numero = numero*2
    return res

def devolver_el_doble_si_es_multipo3_el_triple_si_es_multiplo9_v4(numero: int) -> int:
    res: int = numero*( 1 + (es_multiplo_de(numero,3) or False) + (es_multiplo_de(numero,9) or False) )
    return res

#Ejercicio 5.4) 


    
