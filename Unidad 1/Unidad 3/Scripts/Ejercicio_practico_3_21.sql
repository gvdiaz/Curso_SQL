# Descripción: Ejercicio 3.21
# Autor: Gustavo Vladimir Diaz
# Fecha: 05/10/2020
# Enunciados: 
# Ejercicio práctico 3.21
# Asuma que tiene en una tabla SUELDOS con campos NOMBRE y SUELDO los datos correspondientes al personal de su empresa.
# También tiene una tabla de liquidaciones con NOMBRE, MES y LIQUIDACIÓN donde se guarda lo que se pagó a cada persona.

# a. Escriba un trigger que borre las liquidaciones al borrar un empleado en la tabla SUELDOS.
# b. Escriba un trigger que inserte al empleado en la tabla SUELDOS al cargar una liquidación
# c. Escriba un trigger que modifique el nombre en la tabla liquidaciones si se modifica el nombre en la tabla SUELDOS. (Muy desafiante)
#
# Objetivo de ejercicio: Aplicar funciones a una base de datos

# Desarrollo

CREATE DATABASE prueba_eje_3_21;
USE prueba_eje_3_21;

# Inicio script
# Creo tabla de sueldos
CREATE TABLE sueldos(
	IdEmpleado INT NOT NULL,
    Nombre VARCHAR(255) NOT NULL,
    Sueldo FLOAT NOT NULL,
    PRIMARY KEY (IdEmpleado)
    );

CREATE TABLE liquidaciones(
	IdEmpleado INT NOT NULL,
    Mes_anio_liq DATE NOT NULL,
    Sueldo FLOAT NOT NULL,
    PRIMARY KEY (IdEmpleado)
    );

# Ingreso de datos en tabla creada
# Ingreso de Nombre y Sueldos
INSERT INTO sueldos(IdEmpleado, Nombre, Sueldo) VALUES
	(1, 'Pepito', 50000),
    (2, 'Carlitos', 40000),
    (3, 'Norberto', 35000),
    (4, 'Facundo', 45000);

INSERT INTO liquidaciones(IdEmpleado, Mes_anio_liq, Sueldo) VALUES
	(1, 2019-12-00, 45000),
    (1, 2019-11-00, 45000),
    (1, 2019-10-00, 45000),
    (1, 2019-09-00, 40000),
    (2, 2018-12-00, 35000),
    (2, 2018-11-00, 35000),
    (2, 2018-10-00, 35000),
    (2, 2018-09-00, 30000),
    (3, 2019-12-00, 30000),
    (3, 2019-11-00, 30000),
    (3, 2019-10-00, 30000),
    (3, 2019-09-00, 25000),
    (4, 2019-12-00, 40000),
    (4, 2019-11-00, 40000),
    (4, 2019-10-00, 40000),
    (4, 2019-09-00, 40000);
    
DELIMITER $$

CREATE
	TRIGGER `blog_after_update` AFTER DELETE
	ON sueldos 
	FOR EACH ROW BEGIN
	
		IF NEW.deleted THEN
			SET @changetype = 'DELETE';
		ELSE
			SET @changetype = 'EDIT';
		END IF;
    
		INSERT INTO audit (blog_id, changetype) VALUES (NEW.id, @changetype);
		
    END$$

DELIMITER ;

SELECT MAX(sueldo) AS Mayor_sueldo FROM sueldos;
SELECT MIN(sueldo) AS Menor_sueldo FROM sueldos;
SELECT AVG(sueldo) AS Promedio FROM sueldos;
SELECT COUNT(sueldo) AS Cantidad_empleados FROM sueldos;


DROP DATABASE prueba_eje_3_21;
