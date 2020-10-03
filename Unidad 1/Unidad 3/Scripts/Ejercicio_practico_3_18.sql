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
CREATE FUNCTION cadena_pares(ingreso INT) RETURNS VARCHAR
BEGIN
	DECLARE n INT;
    DECLARE cadena VARCHAR(255);
    DECLARE aux CHAR;
    
    SET n = 0;
	
	WHILE (ingreso > n) DO
        SET aux = CAST(n AS CHAR);
        SET cadena = CONCAT(cadena,',',aux);
        SET n = n + 2;
    END WHILE;
--     Error: En una función no se puede declarar SELECT. Fuente de error: considerar que puedo utilizar while en una función. En la red lo utilizan en un store procedure. Voy a ir por ese lado. referencia: https://stackoverflow.com/questions/5125096/for-loop-example-in-mysql
    #SELECT cadena;
    
	RETURN cadena;
END //

DELIMITER ;

# Inicio script
SET @numero = 23;
SELECT cadena_pares(23);

DROP DATABASE prueba_eje_3_18;
