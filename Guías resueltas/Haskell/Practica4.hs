-- Ejercicio 1)
fibonacci:: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)


-- Ejercicio 2
parteEntera :: Float -> Int
parteEntera n | n < 1 && n > -1 = 0
              | n <= -1 = 1 + parteEntera (n + 1)
              | otherwise = 1 + parteEntera (n - 1)


--Ejercicio 3)
esDivisible :: Int -> Int -> Bool
esDivisible n 1 = True
esDivisible n m | n == m = True
                | n < m = False
                | otherwise = esDivisible (n - 2) m


--Ejercicio 4)
sumaImpares :: Int -> Int
sumaImpares 0 = 0
sumaImpares n = sumaImpares (n - 1) + (2*n - 1)


-- Ejercicio 5)
medioFact :: Int -> Int
medioFact 0 = 1
medioFact 1 = 1
medioFact n = n*medioFact (n - 2)


-- Ejercicio 6)
sumaDigitos :: Int -> Int
sumaDigitos n | n < 10 = n
              | otherwise = mod n 10 + sumaDigitos (div n 10)


-- Ejercicio 7)
todosDigitosIguales :: Int -> Bool
todosDigitosIguales n | n < 10 = True
                      | mod n 10 /= mod (div n 10) 10 = False
                      | otherwise = todosDigitosIguales (div n 10)

-- Ejercicio 8)
iesimoDigito :: Int -> Int -> Int
iesimoDigito n i = mod (div n (10^(cantDigitos n - i))) 10

cantDigitos :: Int -> Int
cantDigitos n | n < 10 = 1
              | otherwise = 1 + cantDigitos (div n 10)


--Ejercicio 9)
--Es capicua si se lee igual de izquierda a derecha y de derecha a izquierda
esCapicua :: Int -> Bool
esCapicua n | n < 10 = True
            | iesimoDigito n 1 == iesimoDigito n (cantDigitos n) = esCapicua (esCapicuaAux n)
            | otherwise = False

esCapicuaAux :: Int -> Int
esCapicuaAux n = div (n - iesimoDigito n 1*(10^(cantDigitos n - 1))) 10


-- Ejercicio 10)
--a)
primeraSuma :: Int -> Int
primeraSuma 0 = 1
primeraSuma n = 2^n + primeraSuma (n - 1)

--b)
segundaSuma :: Int -> Int -> Int
segundaSuma 0 q = 0
segundaSuma n q = q^n + segundaSuma (n - 1) q

--Funcion auxiliar de terceraSuma y cuartaSuma
sumaDesdeHasta :: Int -> Int -> Int -> Int
sumaDesdeHasta n q m | n == m = q^m
                     | otherwise = q^n + sumaDesdeHasta (n + 1) q m

--c)
terceraSuma :: Int -> Int -> Int
terceraSuma n q = sumaDesdeHasta 1 q (2*n)

--d)
cuartaSuma :: Int -> Int -> Int
cuartaSuma n q = sumaDesdeHasta n q (2*n)


--Ejercicio 11)
{- La funcion fromIntegral cambia el tipo de un numero entero.
    fromIntegral :: Int -> Float
-}
eAprox :: Int -> Float
eAprox 0 = 1 / fromIntegral (factorial 0)
eAprox n = 1 / fromIntegral (factorial n) + eAprox (n - 1)
--Funcion Auxiliar:
factorial :: Int -> Int
factorial 0 = 1
factorial n = n*factorial (n - 1)

--b)
e :: Float
e = eAprox 9


-- Ejercicio 12)
raizDe2Aprox :: Int -> Float
raizDe2Aprox 1 = 1
raizDe2Aprox n = suceDefPorRecurencia (fromIntegral n) 2.0 2.0 - 1

--Funcion Auxiliar:
suceDefPorRecurencia :: Float -> Float -> Float -> Float
suceDefPorRecurencia n m j| j == n = 2 + 1/m
                          | otherwise = suceDefPorRecurencia n (2 + 1/m) (j + 1)


--Ejercicio 13)
--En este ejercicio usamos una funcion auxiliar
laSumaDeLasSumas :: Int -> Int -> Int
laSumaDeLasSumas n m | n == 1 = segundaSuma m n
                   | otherwise = segundaSuma m n + laSumaDeLasSumas (n - 1) m


--Ejercicio 14)
sumaPotencias :: Int -> Int -> Int -> Int
sumaPotencias q n m | n == 0 = 0
                    | otherwise = sumaPotenciasAux q n m + sumaPotencias q (n - 1) m

sumaPotenciasAux :: Int -> Int -> Int -> Int
sumaPotenciasAux q n 0 = 0
sumaPotenciasAux q n m = q^(n + m) + sumaPotenciasAux q n (m - 1)


--Ejercicio 15)
sumaRacionales :: Int -> Int -> Float
sumaRacionales 1 m = sumaRacionalesAux 1 m 
sumaRacionales n m = sumaRacionalesAux n m + sumaRacionales (n - 1) m

sumaRacionalesAux :: Int -> Int -> Float
sumaRacionalesAux p 1 = fromIntegral p
sumaRacionalesAux p q = fromIntegral p / fromIntegral q + sumaRacionalesAux p (q - 1)

--Ejercicio 16)
--a)
menorDivisor :: Int -> Int
menorDivisor n = menorDivisorAux n 2

menorDivisorAux :: Int -> Int -> Int           
menorDivisorAux n k | n == k = k
                    | mod n k == 0 = k
                    | otherwise = menorDivisorAux n (k + 1)

--b)
