# Descripción: Ejercicio 3.16 y 3.17
# Autor: Gustavo Vladimir Diaz
# Fecha: 02/10/2020
# Enunciados: 
# Ejercicio práctico 3.16
# Averigüe si el año 2000 fué bisiesto. Aplique el código de la función y vea cuantos días obtiene para febrero de 2000.
# Investigue (por ejemplo en la wikipedia sobre los años bisiestos y verá que hace falta corregir la regla que hemos desarrollado para los años que son múltiplos de 1000)
# A. Escriba la regla en castellano
# B. Genere el diagrama de flujo correspondiente y pruebe de marcar el año 2000 en amarillo y repetir las marcas para los años del ejercicio Conceptual 3.3
# C. Escriba el código correspondiente al diagrama de flujo desarrollado

# Ejercicio práctico 3.17
# Escriba el código para la creación de la función desarrollada en el ejercicio 3.16
#
# Objetivo de ejercicio: Describir algoritmo con palabras e implementar dicho algoritmo en función de MySQL.

# Desarrollo
# Decripción
# Referencia para implementación de funciones en MySQL: https://www.neoguias.com/funciones-almacenadas-mysql/

# Punto "A"
# Si el año ingresado a la función a implementar es múltiplo de 4 y no de 100 entonces es bisiesto.

# Punto "C"
# CREATE FUNCTION calc_anio_bisiesto(anio INT) RETURNS INT
# BEGIN
# 	DECLARE dias_febrero INT;
#     
# 	SET dias_febrero = 
# 	IF ((FLOOR(anio/4)*4) = anio,
# 		# Condición verdadera
#        IF ((FLOOR(anio/100)*100) = anio,
#			# Condición verdadera
#           28,
#            # Condición falsa
#            29),
#		# Condición falsa
#       28);
#	RETURN dias_febrero;
# END //

# Ejercicio práctico 3.17 Implementar función de año bisiesto y utilizarla

CREATE DATABASE prueba_eje_3_16;
USE prueba_eje_3_16;

# Línea agregada porque sino tira "Error Code: 1418.
SET GLOBAL log_bin_trust_function_creators = 1;

#Uso delimitadores: en MySQL sirve para parasarle código de definición como por ejemplo procedimientos almacenados o funciones
DELIMITER //
# Función en si
CREATE FUNCTION calc_anio_bisiesto(anio INT) RETURNS INT
BEGIN
	DECLARE dias_febrero INT;
    
    SET dias_febrero = 
	IF ((FLOOR(anio/4)*4) = anio,
		# Condición verdadera
        IF ((FLOOR(anio/100)*100) = anio,
			# Condición verdadera
            28,
            # Condición falsa
            29),
		# Condición falsa
        28);
	RETURN dias_febrero;
END //

DELIMITER ;

# A. Obtenga la fecha actual
SELECT 'Calculo si el año ingresado es bisiesto';
SET @anio_a_calc = 2000;
SELECT @anio_a_calc AS Año;
SELECT calc_anio_bisiesto(@anio_a_calc) AS Dias_Febrero;

DROP DATABASE prueba_eje_3_16;
