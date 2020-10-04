# Descripción: Ejercicio 3.19
# Autor: Gustavo Vladimir Diaz
# Fecha: 04/10/2020
# Enunciados: 
# Ejercicio práctico 3.19
# Escriba el código para mostrar todos los números menores que 100 indicando si son pares o impares. (Sugerencia: considere incluir dentro del ciclo a un IF que pregunte si 2*FLOOR(@N/2) es igual a @N)
#
# Objetivo de ejercicio: Seguir utilizando procedimientos o funciones en base de datos

# Desarrollo

CREATE DATABASE prueba_eje_3_19;
USE prueba_eje_3_19;

#Uso delimitadores: en MySQL sirve para parasarle código de definición como por ejemplo procedimientos almacenados o funciones
DELIMITER //
# Procedimiento en si
CREATE PROCEDURE paridad(IN ingreso INT)
BEGIN
    DECLARE aux_1 VARCHAR(3) DEFAULT NULL;              -- Variable para guardar valor de entero de aux_1 en tipo CHAR
	DECLARE aux_2 INT;                                  -- Variable para incrementar y guardar en cadena "par" o "impar"
    DECLARE par VARCHAR(255) DEFAULT '';                           -- Cadena de valores pares
    DECLARE impar VARCHAR(255) DEFAULT '';                         -- Cadena de valores impares
    
    SET aux_2 = 0;                                      -- Inicialización de aux_2 para arrancar la comparación en 0
	
	WHILE (aux_2 <= ingreso) DO                         -- Repito este ciclo mientras aux_2 sea menor que @ingreso
        
        IF (2*FLOOR(aux_2/2)) = aux_2 THEN              -- Consulto si aux_2 es par
            SET aux_1 = CAST(aux_2 AS CHAR);            -- Paso aux_2 a CHAR y lo guardo en aux_1
            SET par = CONCAT(aux_1,',',par);            -- Concateno aux_1 a la cadena par y lo guardo en la cadena "par"
        ELSE                                            -- En caso de que la consulta de "falso" lo trato como impar
            SET aux_1 = CAST(aux_2 AS CHAR);            -- Paso aux_2 a CHAR y lo guardo en aux_1
            SET impar = CONCAT(aux_1,',',impar);        -- Concateno aux_1 a la cadena par y lo guardo en la cadena "impar"
        END IF;
    
        SET aux_2 = aux_2 + 1;
        
    END WHILE;

    SELECT par;
    SELECT impar;
    
END //

DELIMITER ;

# Inicio script
SET @numero = 100;
CALL paridad(@numero);

DROP DATABASE prueba_eje_3_19;
