# Descripción: Ejercicio práctico 2.6
# Autor: Gustavo Vladimir Diaz
# Fecha: 05/09/2020
# Enunciado: 
# Identifique como dibuja Access las claves primarias en las tablas
#
# Objetivo de ejercicio: Mostrar como se identifica la clave primaria en este caso en mysql

# Desarrollo

# Al ejecutar el script la línea DESCRIBE muestra las columnas declaradas y la de "dni" tiene indicado que es una PRI (primary) key

CREATE DATABASE futbolistas;
USE futbolistas;
CREATE TABLE datos_futbolistas (
    nombre      VARCHAR (30),
    apellido    VARCHAR(30),
    edad        INT,
    posicion    VARCHAR(30),
    dni         INT,
    PRIMARY KEY (dni)
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
DESCRIBE datos_futbolistas;
DROP TABLE datos_futbolistas;
DROP DATABASE futbolistas;
