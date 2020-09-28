# Descripción: Ejercicio 3.16
# Autor: Gustavo Vladimir Diaz
# Fecha: 27/09/2020
# Enunciado: 
# Averigüe si el año 2000 fué bisiesto. Aplique el código de la función y vea cuantos días obtiene para febrero de 2000.
# Investigue (por ejemplo en la wikipedia sobre los años bisiestos y verá que hace falta corregir la regla que hemos desarrollado para los años que son múltiplos de 1000)
# A. Escriba la regla en castellano
# B. Genere el diagrama de flujo correspondiente y pruebe de marcar el año 2000 en amarillo y repetir las marcas para los años del ejercicio Conceptual 3.3
# C. Escriba el código correspondiente al diagrama de flujo desarrollado
#
# Objetivo de ejercicio: Describir algoritmo con palabras e implementar dicho algoritmo en función de MySQL.

# Desarrollo
# Decripción
# Referencia para implementación de funciones en MySQL: https://www.neoguias.com/funciones-almacenadas-mysql/

CREATE DATABASE prueba_eje_3_15;
USE prueba_eje_3_15;

# A. Obtenga la fecha actual
SELECT 'Obtenga la fecha actual';
SELECT CURDATE();

SELECT '';

# B. Obtenga el año de la fecha actual
SELECT 'Obtenga el año de la fecha actual';
SELECT YEAR(CURDATE());

SELECT '';

# C. Obtenga el mes de la fecha actual
SELECT 'Obtenga el mes de la fecha actual';
SELECT MONTH(CURDATE());

SELECT '';

# D. Obtenga el día de la fecha actual
SELECT 'Obtenga el día de la fecha actual';
SELECT DAY(CURDATE());

SELECT '';

# E. Obtenga la fecha correspondiente a 7 días en el futuro de la fecha actual
SELECT 'Obtenga la fecha correspondiente a 7 días en el futuro de la fecha actual';
SELECT DATE_ADD(CURDATE(), INTERVAL 7 DAY);

SELECT '';

# F. Obtenga el mes de 30 días en el futuro de la fecha actual
SELECT 'Obtenga el mes de 30 días en el futuro de la fecha actual';
SELECT MONTH(DATE_ADD(CURDATE(), INTERVAL 30 DAY));

SELECT '';

# G. Obtenga la fecha correspondiente a un año en el futuro desde la fecha actual
SELECT 'Obtenga la fecha correspondiente a un año en el futuro desde la fecha actual';
SELECT DATE_ADD(CURDATE(), INTERVAL 1 YEAR);

SELECT '';

# H. Obtenga la fecha correspondiente a 30 años en el futuro desde la fecha de su cumpleaños.
SELECT 'Obtenga la fecha correspondiente a 30 años en el futuro desde la fecha de su cumpleaños.';
SELECT DATE_ADD(STR_TO_DATE('15,09,1983','%d,%m,%Y'), INTERVAL 30 YEAR);

SELECT '';

# I. Obtenga el año correspondiente a 30 años después de la fecha de su cumpleaños.
SELECT 'Obtenga el año correspondiente a 30 años después de la fecha de su cumpleaños.';
SELECT YEAR(DATE_ADD(STR_TO_DATE('15,09,1983','%d,%m,%Y'), INTERVAL 30 YEAR));

SELECT '';

# J. Obtenga el mes correspondiente a 9 meses antes de su fecha de cumpleaños.
SELECT 'Obtenga el mes correspondiente a 9 meses antes de su fecha de cumpleaños.';
SELECT MONTH(DATE_SUB(STR_TO_DATE('15,09,1983','%d,%m,%Y'), INTERVAL 9 MONTH));

SELECT '';

DROP DATABASE prueba_eje_3_15;
