-- Ejercicio 1.a)
f :: Int -> Int
f 1 = 8
f 4 = 131
f 16 = 16

-- Ejercicio 1.b)
g :: Int -> Int
g 8 = 16
g 16 = 4
g 131 = 1

{-
Especificacion:
requiere: {n = 8 or n = 16 or n = 131}
asegura: {res = 16 <--> n = 8}
asegura: {res = 4 <--> n = 16}
asegura: {res = 1 <--> n = 131}
-}

-- Ejercicio 1.c)
h :: Int -> Int
h x = f (g x)

k :: Int -> Int
k x = g (f x)


-- Ejercicio 2.a)
{- Si vamos a ingresar un dato de entrada negativo, entonces tenemos que rodearlo con un parentesis.
   Eje: 
   absoluto (-2) --> 2
-}
absoluto :: Int -> Int
absoluto n | n >= 0 = n
           | otherwise = -n

-- Ejercicio 2.b)
-- La ultima guarda, otherwise, me devuelve un valor si ninguna de las propiedades anteriores se cumple (Es similiar a la sentencia if de python).
maximoAbsoluto :: Int -> Int -> Int
maximoAbsoluto n m | absoluto n > absoluto m = absoluto n
                   | otherwise = absoluto m

-- Ejercicio 2.c)
maximo3 :: Int -> Int -> Int -> Int
maximo3 n m j | n > m && n > j = n
              | m > n && m > j = m
              | otherwise = j

-- Ejercicio 2.d)
-- pattern matching:
algunoEs0ConPm :: Float -> Float -> Bool
algunoEs0ConPm n m = n == 0 || m == 0 
-- guardas:
algunoEs0ConGuardas :: Float -> Float -> Bool
algunoEs0ConGuardas n m | n == 0 || m == 0 = True
                        | otherwise = False

--Ejercicio 2.e)     
-- pattern matching   
ambosSon0ConPm :: Float -> Float -> Bool
ambosSon0ConPm n m = n == 0 && m == 0
-- guardas
ambosSon0ConGuardas :: Float -> Float -> Bool
ambosSon0ConGuardas n m | n == 0 && m == 0 = True
                        | otherwise = False

-- Ejercicio 2.f)
mismoIntervalo :: Float -> Float -> Bool
mismoIntervalo n m | n <= 3 && m <= 3 = True
                   | (n > 3 && n <= 7) && (m > 3 && m <= 7) = True
                   | n > 7 && m > 7 = True
                   | otherwise = False

-- Ejercicio 2.g)
sumaDistintos :: Float -> Float -> Float -> Float
sumaDistintos n m j | n == m && n == j && m == j = n
                    | m == n || m == j = n + j
                    | j == n || j == m = n + m
                    | n == m || n == j = m + j
                    | otherwise = m + m + j

-- Ejercicio 2.h)
esMultiploDe :: Int -> Int -> Bool
esMultiploDe n m | mod n m == 0 = True
                 | otherwise = False

-- Ejercicio 2.i)
digitoUnidades :: Int -> Int 
digitoUnidades n = mod (mod n 10) 10

--Ejercicio 2.j)
{- La funcion mod nos da como resutado el resto de la division.
   La funcion div nos da como resultado el cociente de la division.
-}
digitoDecenas :: Int -> Int
digitoDecenas n = mod (div n 10) 10


-- Ejercicio 3)
-- Para resolver este ejercicio es necesario saber la definicion de divsibilidad.
estanRelacionados :: Int -> Int -> Bool
estanRelacionados a b = mod a b == 0


--Ejercicio 4.a)
-- Leer: !La especificacion de cada ejercicio aun no esta hecha¡
{- La funcion fst nos da como resultado la primera componente de una tupla
   La funcion snd nos da como resultado la segunda componente de una tupla
-}
prodInt :: (Float, Float) -> (Float, Float) -> Float
prodInt a b = (fst a * fst b) + (snd a * snd b)

-- Ejercicio 4.b) 
-- Preguntar al profesor por el enunciado
todoMenor :: (Float, Float) -> (Float, Float) ->Bool
todoMenor a b | fst a > fst b && snd a > snd b = True
              | otherwise = False

-- Ejercicio 4.c)
{- Para calcular la distancia entre 2 puntos, tenemos que restar los 2 vectores
  (Imaginemos que la distancia es un vector que llevaremos al origen para calcular su modulo)
   y calcular el modulo del vector obtenido.
-}
distanciaPuntos :: (Float, Float) -> (Float, Float) -> Float
distanciaPuntos (x1, y1) (x2, y2) = sqrt ((x1 - x2)^2 + (y1 - y2)^2)

-- Ejercicio 4.d)
sumaTerna :: (Int, Int, Int) -> Int
sumaTerna (x,y,z) = x + y + z

-- Ejercicio 4.e)
sumarSoloMultiplos :: (Int, Int, Int) -> Int -> Int
sumarSoloMultiplos (x,y,z) n | mod x n == 0 && mod y n == 0 && mod z n == 0 = x + y + z
                             | mod x n == 0 && mod y n == 0 && mod z n /= 0 = x + y
                             | mod x n == 0 && mod y n /= 0 && mod z n == 0 = x + z
                             | mod x n /= 0 && mod y n == 0 && mod z n == 0 = y + z
                             | mod x n /= 0 && mod y n /= 0 && mod z n == 0 = z
                             | mod x n /= 0 && mod y n == 0 && mod z n /= 0 = y
                             | mod x n == 0 && mod y n /= 0 && mod z n /= 0 = x
                             | otherwise = 0

-- Ejercicio 4.f)
posPrimerPar :: (Int, Int, Int) -> Int
posPrimerPar (x,y,z) | mod x 2 == 0 = 0
                     | mod y 2 == 0 = 1
                     | mod z 2 == 0 = 2
                     | otherwise = 4

-- Ejercicio 4.g)
crearPar :: a -> b -> (a, b)
crearPar a b = (a,b)

--Ejercicio 4.h)
invertir :: (a,b) -> (b,a)
invertir (a,b) = (b,a)


--Ejercicio 5)
todosMenores :: (Int, Int, Int) -> Bool
todosMenores (x,y,z) | f1 x > g1 x && f1 y > g1 y && f1 z > g1 z = True
                     | otherwise = False

f1 :: Int -> Int
f1 n | n <= 7 = n^2
     | otherwise = 2*n - 1

g1 :: Int -> Int
g1 n | mod n 2 == 0 = div n 2
     | otherwise = 3*n + 1


-- Ejercicio 6)
bisiesto :: Int -> Bool
bisiesto año | mod año 4 /= 0 || mod año 100 == 0 && mod año 400 /= 0 = False
             | otherwise = True


-- Ejercicio 7)
-- Vamos a crear una funcion auxiliar para facilitar el ejercicio.
distanciaManhattan :: (Float, Float, Float) -> (Float, Float, Float) -> Float
distanciaManhattan (x1,y1,z1) (x2,y2,z2) = absolutoAux (x1 - y1) + absolutoAux (y1 - y2) + absolutoAux (z1 - z2)

absolutoAux :: Float -> Float
absolutoAux n | n >= 0 = n
              | otherwise = -n


-- Ejercicio 8)
comparar :: Int -> Int -> Int
comparar a b | sumaUltimosDosDigitos a < sumaUltimosDosDigitos b = 1
             | sumaUltimosDosDigitos a > sumaUltimosDosDigitos b = -1
             | otherwise = 0

{-Vamos a utilizar dos funciones auxiliares:
 1) Digito unidades
 2) Digito decenas 
-}
sumaUltimosDosDigitos :: Int -> Int
sumaUltimosDosDigitos x = digitoUnidades x + digitoDecenas x 


-- Ejercicio 9.a)
{- Invocamos la funcion f1 que nos dara como resultado 1, si y solo si, "n" es
   igual 0 o (o excluyente) 0, si y solo si, "n" no es igual a 0.
   Ingresamos un dato de tipo coma flotante para recibir un dato de tipo coma flotante.
   Especificacion:
   - requiere: {True}
   - asegura: {res = 1 <--> n = 0
               res = 0 <--> n /= 0}
-}

-- Ejercicio 9.b)
{- Invocamos la funcion f2 que nos dara como resultado 15, si y solo si, "n" es
   igual a 1 o (o excluyente) -15, si y solo si, n es igual a -1.
   Ingresamos un dato de tipo coma flotante para recibir un dato de tipo coma flotante.

   Especificacion:
   - requiere: {True}
   - asegura: {res = 15 <--> n = 1
               res = -15 <--> n = -1}
-}

--Ejercicio 9.c)
{- Invocamos la funcion f3 que nos dara 7, si y solo si, "n" es menor o igual a 9 
   o (o excluyente) 5, si y solo si, n es mayor o igual 3.
   Ingresamos un dato de tipo coma flotante para recibir un dato de tipo coma flotante.

   Especificacion:
   - requiere: {True}
   - asegura: {res = 7 <--> n <= 9
               res = 5 <--> n >= 3}
-}

-- Ejercicio 9.d)
{- Invocamos la funcion f4 que nos dara como resultado la suma de x mas y, dividido por 2.
   Ingresamos 2 datos de tipo coma flotante para recibir un dato de tipo coma flotante.

   Especificacion:
   - requiere: {True}
   - asegura: {res = (x+y)/2}
-}

-- Ejercico 9.e)
{- Invocamos la funcion f5 que nos dara como resultado la suma de x mas y, dividido por 2.
   Ingresamos una tupla con su primera componente que es un dato de tipo coma flotante y su
   segunda componente que es un dato de tipo coma flotante para recibir un dato de tipo coma flotante. 

   Especificacion:
   - requiere: {True}
   - asegura {res = (x+y)/2}
-}

-- Ejercicio 9.f)
{- Invocamos la funcion f6 que nos dara como resultado True, si y solo si, el numero a sin decimales
   es igual al numero b.
   Ingresamos un dato de tipo coma flotante y un dato de tipo entero para recibir un dato de tipo booleano.

   Especificacion:
   - requiere: {True}
   - asegura: {res = True <--> truncate a = b
               res = False <--> truncate a /= b}
-}


