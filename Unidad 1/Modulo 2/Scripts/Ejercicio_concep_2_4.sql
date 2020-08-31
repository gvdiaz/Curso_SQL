# Descripción: Ejercicio conceptual 2.4
# Autor: Gustavo Vladimir Diaz
# Fecha: 31/08/2020
# Enunciado: 
# Escribir una sentencia para borrar a todos los que tengan menos de 21 años de edad.
#

# Objetivo de ejercicio: Implementación de borrado de registro en DB cuando se da una condición

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
DELETE FROM datos_futbolistas WHERE posicion = "Arquero";
SELECT * FROM datos_futbolistas;
DROP TABLE datos_futbolistas;
DROP DATABASE futbolistas;
