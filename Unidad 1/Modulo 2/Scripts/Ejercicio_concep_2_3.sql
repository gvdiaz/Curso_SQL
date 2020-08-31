# Descripción: Ejercicio conceptual 2.3
# Autor: Gustavo Vladimir Diaz
# Fecha: 31/08/2020
# Enunciado: 
#Escriba la sentencia de recuperación de datos que permita ver los DNI y los nombres
#

# Objetivo de ejercicio: Implementación de selección de datos a observar en DB

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
SELECT dni, nombre FROM datos_futbolistas;
#describe root;
DROP TABLE datos_futbolistas;
DROP DATABASE futbolistas;
