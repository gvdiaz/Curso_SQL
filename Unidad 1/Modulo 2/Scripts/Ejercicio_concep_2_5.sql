# Descripción: Ejercicio conceptual 2.4
# Autor: Gustavo Vladimir Diaz
# Fecha: 31/08/2020
# Enunciado: 
# Escribir la sentencia necesaria para modificar la edad de Rodriguez a 38 años
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
