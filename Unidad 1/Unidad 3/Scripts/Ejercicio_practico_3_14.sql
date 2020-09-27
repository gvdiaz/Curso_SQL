# Descripción: Ejercicio 3.13
# Autor: Gustavo Vladimir Diaz
# Fecha: 26/09/2020
# Enunciado: 
# A. Obtener los 5 primeros caracteres de la cadena "ABCDEFGHIJ"
# B. Obtener los 5 últimos caracteres de la cadena "ABCDEFGHIJ"
# C. Convertir a minúsculas la cadena "ABCDEFGHIJ"
# D. Convertir a mayúsculas el resultado de C.
# E. Obtener los caracteres 3ro, 4to y 5to de la cadena "ABCDEFGHIJ"
# F. Obtener una cadena que repita veinte veces la letra "A"
# G. Tomar la cadena "MAMA" y reemplazar cada "M" por una "C". (Prohibido protestar si la respuesta les huele mal)
# H. Eliminar los espacios en blanco a derecha de la cadena " ABC "
# I. Eliminar los espacios en blanco a izquierda de la cadena " ABC "
# J. Eliminar los espacios en blanco a derecha y a izquierda en la cadena "
#
# Objetivo de ejercicio: Implementar las funciones pedidas y devolver los resultados.

# Desarrollo
CREATE DATABASE prueba_eje_3_14;
USE prueba_eje_3_14;

# Obtener los 5 primeros caracteres de la cadena "ABCDEFGHIJ"
SELECT 'Obtener los 5 primeros caracteres de la cadena "ABCDEFGHIJ"';
SELECT LEFT("ABCDEFGHIJ", 5);

SELECT '';

# Obtener los 5 últimos caracteres de la cadena "ABCDEFGHIJ"
SELECT 'Obtener los 5 últimos caracteres de la cadena "ABCDEFGHIJ"';
SELECT RIGHT("ABCDEFGHIJ", 5);

SELECT '';

# Convertir a minúsculas la cadena "ABCDEFGHIJ"
SELECT 'Convertir a minúsculas la cadena "ABCDEFGHIJ"';
SELECT LOWER("ABCDEFGHIJ");

SELECT '';

# Convertir a mayúsculas el resultado de C
SELECT 'Convertir a mayúsculas el resultado de C.';
SELECT UPPER(LOWER("ABCDEFGHIJ"));

SELECT '';

# Obtener los caracteres 3ro, 4to y 5to de la cadena "ABCDEFGHIJ"
SELECT 'Obtener los caracteres 3ro, 4to y 5to de la cadena "ABCDEFGHIJ"';
SELECT SUBSTRING("ABCDEFGHIJ", 3, 3);

SELECT '';

# Obtener una cadena que repita veinte veces la letra "A"
SELECT 'Obtener una cadena que repita veinte veces la letra "A"';
SELECT REPEAT('A', 20); # En SQL server la función se llama "REPLICATE"

SELECT '';

# Tomar la cadena "MAMA" y reemplazar cada "M" por una "C".
SELECT 'Tomar la cadena "MAMA" y reemplazar cada "M" por una "C".';
SELECT 'MAMA';
SELECT REPLACE('MAMA', 'M', 'C');

SELECT '';

# Eliminar los espacios en blanco a derecha de la cadena " ABC "
SELECT 'Eliminar los espacios en blanco a derecha de la cadena " ABC "';
SELECT RTRIM(" ABC ");

SELECT '';

# Eliminar los espacios en blanco a izquierda de la cadena " ABC "
SELECT 'Eliminar los espacios en blanco a izquierda de la cadena " ABC "';
SELECT LTRIM(" ABC ");

SELECT '';

# Eliminar los espacios en blanco a derecha y a izquierda en la cadena "
SELECT 'Eliminar los espacios en blanco a derecha y a izquierda en la cadena "';
SELECT RTRIM(LTRIM(" ABC "));

SELECT '';

DROP DATABASE prueba_eje_3_14;
