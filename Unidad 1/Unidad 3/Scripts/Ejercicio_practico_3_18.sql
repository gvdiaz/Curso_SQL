# Descripción: Ejercicio 3.18
# Autor: Gustavo Vladimir Diaz
# Fecha: 03/10/2020
# Enunciados: 
# Ejercicio práctico 3.18
# Escriba el código para mostrar todos los números pares menores que 23 (Sugerencia: considere arrancar en un número par y sumar de a 2)
#
# Objetivo de ejercicio: Seguir utilizando funciones en base de datos

# Desarrollo

CREATE DATABASE prueba_eje_3_18;
USE prueba_eje_3_18;

# Línea agregada porque sino tira "Error Code: 1418.
SET GLOBAL log_bin_trust_function_creators = 1;

#Uso delimitadores: en MySQL sirve para parasarle código de definición como por ejemplo procedimientos almacenados o funciones
DELIMITER //
# Función en si
CREATE PROCEDURE cadena_pares(IN ingreso INT)
BEGIN
	DECLARE n INT;
    DECLARE cadena VARCHAR(255) DEFAULT '0';
    DECLARE aux VARCHAR(2);
    
    SET n = 0;
	
	WHILE (ingreso > n) DO
        SET aux = CAST(n AS CHAR);
        SET cadena = CONCAT(cadena,',',aux);
        SET n = n + 2;
    END WHILE;

    SELECT cadena;
    
END //

DELIMITER ;

# Inicio script
SET @numero = 23;
CALL cadena_pares(@numero);

DROP DATABASE prueba_eje_3_18;
