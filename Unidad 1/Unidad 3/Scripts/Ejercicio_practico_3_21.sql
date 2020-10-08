# Descripción: Ejercicio 3.21
# Autor: Gustavo Vladimir Diaz
# Fecha: 07/10/2020
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
    Nombre VARCHAR(255),
    Sueldo FLOAT,
    PRIMARY KEY (IdEmpleado)
    );

CREATE TABLE liquidaciones(
	IdEmpleado INT NOT NULL,
    Mes_anio_liq DATE NOT NULL,
    Sueldo DOUBLE NOT NULL
    # PRIMARY KEY (IdEmpleado), error no es primary key porque el id de empleado se va a repetir
    );

# Ingreso de datos en tabla creada
# Ingreso de Nombre y Sueldos
INSERT INTO sueldos(IdEmpleado, Nombre, Sueldo) VALUES
	(1, 'Pepito', 50000),
    (2, 'Carlitos', 40000),
    (3, 'Norberto', 35000),
    (4, 'Facundo', 45000);

INSERT INTO liquidaciones(IdEmpleado, Mes_anio_liq, Sueldo) VALUES
	(1, '2019-12-00', 45000),
    (1, '2019-11-00', 45000),
    (1, '2019-10-00', 45000),
    (1, '2019-09-00', 40000),
    (2, '2018-12-00', 35000),
    (2, '2018-11-00', 35000),
    (2, '2018-10-00', 35000),
    (2, '2018-09-00', 30000),
    (3, '2019-12-00', 30000),
    (3, '2019-11-00', 30000),
    (3, '2019-10-00', 30000),
    (3, '2019-09-00', 25000),
    (4, '2019-12-00', 40000),
    (4, '2019-11-00', 40000),
    (4, '2019-10-00', 40000),
    (4, '2019-09-00', 40000);
    
-- Trigger de ejercicio a

DELIMITER $$

CREATE
	TRIGGER borrar_datos AFTER DELETE
	ON sueldos 
	FOR EACH ROW BEGIN
		DELETE FROM liquidaciones WHERE IdEmpleado = OLD.IdEmpleado;
    END$$
    
DELIMITER ;

-- Trigger de ejercicio b

DELIMITER $$

CREATE
	TRIGGER insertar_datos AFTER INSERT
	ON liquidaciones 
	FOR EACH ROW BEGIN
		INSERT INTO sueldos(IdEmpleado) VALUES (NEW.IdEmpleado);
    END$$
    
DELIMITER ;

-- Trigger de ejercicio c
# Nota de implementación: El ejercicio pedía que compartan el nombre ambas tablas, cosa que no hice dado que consideré que era mejor que estén
# relacionadas por el identificador de empleado (IdEmpleado). La cuestión es que no puedo seguir con el ejercicio como pide el punto c porque
# la tabla liquidaciones no tiene "nombre" Por lo cual lo que voy a hacer es realizar el Trigger update pero modificando el IdEmpleado en ambas tablas.
DELIMITER $$

CREATE
	TRIGGER actualizar_datos AFTER UPDATE
	ON sueldos 
	FOR EACH ROW BEGIN
		UPDATE liquidaciones SET IdEmpleado = (NEW.IdEmpleado) WHERE IdEmpleado = OLD.IdEmpleado;
    END$$
    
DELIMITER ;

SELECT * FROM sueldos;
SELECT * FROM liquidaciones;

# Punto A

DELETE FROM sueldos WHERE IdEmpleado = 4;

SELECT * FROM sueldos;
SELECT * FROM liquidaciones;

# Punto B
INSERT INTO liquidaciones(IdEmpleado, Mes_anio_liq, Sueldo) VALUES
	(4, '2019-12-00', 45000);
    
SELECT * FROM sueldos;
SELECT * FROM liquidaciones;

UPDATE sueldos SET IdEmpleado = 5 WHERE IdEmpleado = 3;

SELECT * FROM sueldos;
SELECT * FROM liquidaciones;

DROP DATABASE prueba_eje_3_21;
