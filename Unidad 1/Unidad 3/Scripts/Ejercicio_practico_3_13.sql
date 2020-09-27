# Descripción: Ejercicio 3.13
# Autor: Gustavo Vladimir Diaz
# Fecha: 26/09/2020
# Enunciado: 
# A. Usar una función para calcular la raíz cuadrada de 4
# B. Usar una función para calcular el seno de 90 grados (recordar que 90 grados es Pi/2)
# C. Usar una función para calcular el logaritmo natural de 10
# D. Usar una función para redondear 1/3 a tres decimales
# E. Usar una función para calcular 5 al cubo
# F. Usar una función para calcular la tangente de 45 grados
# G. Usar una función para calcular el coseno de 180 grados
# H. Usar una función para calcular la raíz quinta de 32 (recordar que para calcular la raíz quinta se puede elevar a la 1/5)
# I. Calcular el logaritmo de 5, el logaritmo de 3 y sumarlos. Luego calcular el logaritmo de 15. ¿Les recuerda alguna propiedad de los logaritmos?
# J. Calcular el logaritmo de 25 y el logaritmo de 5. ¿Algún recuerdo de lo que pasa con el logaritmo de una potencia?
#
# Objetivo de ejercicio: Implementar las funciones pedidas y devolver los resultados.

# Desarrollo
CREATE DATABASE prueba_eje_3_13;
USE prueba_eje_3_13;

# Cálculo de raiz cuadrada de 4
SELECT 'Cálculo de Raiz cuadrada de 4';
SELECT power(4,1/2);

SELECT '';

# Cálculo de seno de 90°
SELECT 'Cálculo de Seno 90°';
SELECT sin(pi()/2);

SELECT '';

# Cálculo de logaritmo natural de 10
SELECT 'Cálculo de ln(10)';
SELECT LN(10);

SELECT '';

# Redondear 1/3 a tres decimales
SELECT 'Redondeo de 1/3 a 3 decimales';
SELECT ROUND(1/3, 3);

SELECT '';

# Calcular 5 al cubo
SELECT 'Calcular 5 al cubo';
SELECT POWER(5,3);

SELECT '';

# Calcular la tangente de 45 grados
SELECT 'Calcular la tangente de 45 grados';
SELECT TAN(PI()/4);

SELECT '';

# Calcular el coseno de 180 grados
SELECT 'Calcular el coseno de 180 grados';
SELECT COS(PI());

SELECT '';

# Calcular la raíz quinta de 32
SELECT 'Calcular la raíz quinta de 32';
SELECT POWER(32,1/5);

SELECT '';

# Calcular el logaritmo de 5, el logaritmo de 3 y sumarlos
SELECT 'Calcular el logaritmo de 5, el logaritmo de 3 y sumarlos';
SELECT LOG(5);
SELECT LOG(3);
SELECT LOG(5)+LOG(3);

SELECT '';

# Luego calcular el logaritmo de 15
SELECT 'Luego calcular el logaritmo de 15';
SELECT LOG(15);
SELECT LOG(15)-(LOG(5)+LOG(3));
# La propiedad a la cual hace referencia es la que indica la relación entre el producto log (a) + log(b) = log (a*b)

SELECT '';

# Calcular el logaritmo de 25 y el logaritmo de 5
SELECT 'Calcular el logaritmo de 25 y el logaritmo de 5';
SELECT LOG(25);
SELECT LOG(5);
SELECT 2*LOG(5) - LOG(25);

SELECT '';

DROP DATABASE prueba_eje_3_13;
