# Descripción: Ejercicio práctico 2.5 (o implementación de ejercicio conceptual 2.5)
# Autor: Gustavo Vladimir Diaz
# Fecha: 05/09/2020
# Enunciado: 
# Ejecutar la sentencia del ejemplo de UPDATE
# Ejecutar la sentencia del ejercicio conceptual 2.5
#

# Objetivo de ejercicio: Modificar un registro de la DB

# Desarrollo

CREATE DATABASE futbolistas;
USE futbolistas;
CREATE TABLE datos_futbolistas (
    nombre      VARCHAR (30),
    apellido    VARCHAR(30),
    edad        INT,
    posicion    VARCHAR(30),
    dni         INT
);

INSERT INTO datos_futbolistas (
    nombre,
    apellido,
    edad,
    posicion,
    dni)
    VALUES(
    "Alberto",
    "Perez",
    21,
    "Delantero",
    31222333),
    (
    "Juan",
    "Rodriguez",
    23,
    "Defensor",
    30222444),
    (
    "José",
    "Sanchez",
    25,
    "Arquero",
    29444333)
    ;
SELECT * FROM datos_futbolistas;
UPDATE datos_futbolistas SET edad = 38 WHERE apellido = "Rodriguez";
SELECT * FROM datos_futbolistas;
DROP TABLE datos_futbolistas;
DROP DATABASE futbolistas;
