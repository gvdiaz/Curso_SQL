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
# Objetivo de ejercicio: crear un procedimiento que traiga los clientes de determinado año que podremos especificar como entrada en el procedimiento

# Desarrollo
CREATE DATABASE prueba_eje_3_13;
USE prueba_eje_3_13;

SELECT 'Raiz cuadrada de 4';
SELECT power(4,1/2);

SELECT '';

SELECT 'Seno 90°';
SELECT sin(pi()/2);

DROP DATABASE prueba_eje_3_13;
