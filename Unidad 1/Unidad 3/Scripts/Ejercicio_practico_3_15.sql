# Descripción: Ejercicio 3.15
# Autor: Gustavo Vladimir Diaz
# Fecha: 27/09/2020
# Enunciado: 
# A. Obtenga la fecha actual
# B. Obtenga el año de la fecha actual
# C. Obtenga el mes de la fecha actual
# D. Obtenga el día de la fecha actual
# E. Obtenga la fecha correspondiente a 7 días en el futuro de la fecha actual
# F. Obtenga el mes de 30 días en el futuro de la fecha actual
# G. Obtenga la fecha correspondiente a un año en el futuro desde la fecha actual
# H. Obtenga la fecha correspondiente a 30 años en el futuro desde la fecha de su cumpleaños.
# I. Obtenga el año correspondiente a 30 años después de la fecha de su cumpleaños.
# J. Obtenga el mes correspondiente a 9 meses antes de su fecha de cumpleaños.
#
# Objetivo de ejercicio: Implementar las funciones pedidas y devolver los resultados.

# Desarrollo
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
