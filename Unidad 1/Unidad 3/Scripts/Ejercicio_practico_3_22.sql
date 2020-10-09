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
    fecha_ingreso DATE NOT NULL DEFAULT '2000-01-00'
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

SELECT * FROM personal;

SELECT legajo, fecha_ingreso, NOMBRE FROM personal ORDER BY fecha_ingreso ASC;

DELIMITER $$
CREATE PROCEDURE crear_legajo ()
BEGIN
	DECLARE terminado INT DEFAULT 0;
	#DECLARE orden_legajo INT DEFAULT 1;
    DECLARE var_legajo INT DEFAULT 1;
    DECLARE aux INT DEFAULT 1;

	-- Declarar cursor para agregar número de legajo
	DEClARE agregar_legajo 
		CURSOR FOR 
			SELECT legajo FROM personal ORDER BY fecha_ingreso ASC;

	-- declare NOT FOUND handler
	DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET terminado = 1;

	OPEN agregar_legajo;

	#getEmail: LOOP
    traer_legajo: LOOP
		FETCH agregar_legajo INTO var_legajo;
		IF terminado = 1 THEN 
			LEAVE traer_legajo;
		END IF;
		-- Llenar número de legajo
        # INSERT INTO personal(legajo) VALUES (aux);
        UPDATE personal SET legajo = aux;
        -- Sumo 1 a la variable "orden_legajo"
        SET aux = aux + 1;
	END LOOP traer_legajo;
	CLOSE agregar_legajo;

END$$
DELIMITER ;

CALL prueba_eje_3_22.crear_legajo;

SELECT * FROM personal;

DROP DATABASE prueba_eje_3_22;
