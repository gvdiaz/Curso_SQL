# Descripción: Ejercicio 3.22
# Autor: Gustavo Vladimir Diaz
# Fecha: 09/10/2020
# Enunciados: 
# Ejercicio práctico 3.22
# Asuma que tiene en una tabla PERSONAL con campos NOMBRE y FECHAINGRESO los datos correspondientes al personal de su empresa.
# Alguien le dijo que necesita agregar un identificador único correlativo que será el número de legajo. Usted ya ha creado el campo
# LEGAJO pero está vacío y quiere llenarlo
# a. Escriba un cursor que recorra la tabla PERSONAL y vaya cargando los legajos en forma correlativa de acuerdo al orden de ingreso a la empresa
# (Al más antiguo el 1, al siguiente el 2, y así siguiendo adelante)
# b. Usted ya hizo el punto a pero ahora ha comprado a un competidor y tiene que consolidar las tablas de personal. Le insertará todos los
# nombres y luego necesitará un cursor que recorra solo los registros que tienen LEGAJO en NULL y les inserte números de legajo a partir del
# último número pre-existente.
# Objetivo de ejercicio: Definir y utilizar cursores
#
# Página de referencia: https://www.mysqltutorial.org/mysql-cursor/

# Desarrollo

CREATE DATABASE prueba_eje_3_22;
USE prueba_eje_3_22;

# Inicio script
# Creo tabla de personal
CREATE TABLE personal(
    Nombre VARCHAR(255),
    fecha_ingreso DATE NOT NULL DEFAULT '2000-01-01'
    );
CREATE TABLE prueba(
    legajo_p INT,
    fecha_ingreso_p DATE DEFAULT '2000-01-01'
    );

# Ingreso de datos en tabla creada
# Ingreso de Nombre y fecha de ingreso
INSERT INTO personal(Nombre, fecha_ingreso) VALUES
	('Pepito', 		'2009-01-20'),
    ('Carlitos', 	'2019-02-10'),
    ('Norberto', 	'2001-03-22'),
    ('Cacho', 		'2003-08-23'),
    ('Tete', 		'2005-05-12'),
    ('Tito', 		'2010-12-03'),
    ('Facundo', 	'2012-11-20');

SELECT * FROM personal;

# Agrego el campo "legajo" a la tabla personal
ALTER TABLE personal
  add legajo INT UNSIGNED;

-- SELECT * FROM personal;

-- SELECT legajo, fecha_ingreso, NOMBRE FROM personal ORDER BY fecha_ingreso ASC;

DELIMITER $$
CREATE PROCEDURE proceso ()
BEGIN
	DECLARE terminado INT DEFAULT 0;
-- 	#DECLARE orden_legajo INT DEFAULT 1;
    DECLARE var_legajo INT DEFAULT 1;
    DECLARE aux INT DEFAULT 1;
    DECLARE d_ingreso DATE;

	-- Declarar cursor para agregar número de legajo
	DEClARE cursor_1 
		CURSOR FOR 
			SELECT legajo, fecha_ingreso FROM personal ORDER BY fecha_ingreso ASC;

	-- declare NOT FOUND handler
	DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET terminado = 1;

	OPEN cursor_1;

	#getEmail: LOOP
    def_loop: LOOP
		FETCH cursor_1 INTO var_legajo, d_ingreso;
		IF terminado = 1 THEN 
			LEAVE def_loop;
		END IF;
-- 		Agrego tabla de prueba para ver que variables toma el cursor
        INSERT INTO prueba(legajo_p,fecha_ingreso_p) VALUES (aux, d_ingreso);
		-- Llenar número de legajo
--         # INSERT INTO personal(legajo) VALUES (aux);
        UPDATE personal SET legajo = aux WHERE fecha_ingreso = d_ingreso;
        -- Sumo 1 a la variable "orden_legajo"
        SET aux = aux + 1;
	END LOOP def_loop;
	CLOSE cursor_1;

END$$
DELIMITER ;

CALL prueba_eje_3_22.proceso;

SELECT * FROM personal;

SELECT * FROM prueba;

DROP DATABASE prueba_eje_3_22;
