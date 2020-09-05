# Descripción: Ejercicio práctico 2.4 (o implementación de ejercicio conceptual 2.4)
# Autor: Gustavo Vladimir Diaz
# Fecha: 05/09/2020
# Enunciado: 
# Ejecutar la sentencia del ejemplo y obtener todos los datos de los Jugadores.
# Ejecutar la sentencia del ejercicio conceptual 2.4 y obtener de nuevo todos los datos de los Jugadores.
#

# Objetivo de ejercicio: Implementación de borrado de registro en DB cuando se da una condición. Comparo lo traído por SELECT antes y después de borrar.

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
DELETE FROM datos_futbolistas WHERE edad < 22;
SELECT * FROM datos_futbolistas;
DROP TABLE datos_futbolistas;
DROP DATABASE futbolistas;
