# Descripción: Ejercicio 3.20
# Autor: Gustavo Vladimir Diaz
# Fecha: 04/10/2020
# Enunciados: 
# Ejercicio práctico 3.20
# Asuma que tiene en una tabla SUELDOS con campos NOMBRE y SUELDO los datos correspondientes al personal de su empresa. Necesita escribir las consultas para determinar:
# a. El mayor sueldo
# b. El menor sueldo
# c. El sueldo promedio
# d. La cantidad de empleados
#
# Objetivo de ejercicio: Aplicar funciones a una base de datos

# Desarrollo

CREATE DATABASE prueba_eje_3_20;
USE prueba_eje_3_20;

# Inicio script

CREATE TABLE sueldos(
    Nombre VARCHAR(255) NOT NULL,
    Sueldo FLOAT NOT NULL
    );
    
# Ingreso de datos en tabla creada
# Ingreso de Nombre y Sueldos
INSERT INTO sueldos(Nombre, Sueldo) VALUES
	('Pepito', 50000),
    ('Carlitos', 40000),
    ('Norberto', 35000),
    ('Facundo', 45000);

SELECT MAX(sueldo) AS Mayor_sueldo FROM sueldos;
SELECT MIN(sueldo) AS Menor_sueldo FROM sueldos;
SELECT AVG(sueldo) AS Promedio FROM sueldos;
SELECT COUNT(sueldo) AS Cantidad_empleados FROM sueldos;


DROP DATABASE prueba_eje_3_20;
