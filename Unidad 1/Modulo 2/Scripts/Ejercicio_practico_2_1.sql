# Descripción: Ejercicio práctico 2.1 y 2.2 (o Implementación ejercicio conceptual 2.1)
# Autor: Gustavo Vladimir Diaz
# Fecha: 05/09/2020
# Enunciado: 
# Se tienen los datos de los jugadores de un equipo de fútbol:
# Alberto Perez, 21 años, Delantero, DNI 31.222.333
# Juan Rodriguez, 23 años, Defensor, DNI 30.222.444
# José Sanchez, 25 años, Arquero, DNI 29.444.333
#
# Se pide:

# -Organizarlos en una tabla
# Implementado en cuerpo de script

# -Indicar los nombres que propone para los campos
# Los nombres de los campos son "nombre", "apellido", "edad", "posicion" (sin acento) y "dni"

# -Indicar el nombre que propone para la tabla
# El nombre de la tabla es "datos_futbolistas" y el de la db es "futbolistas"

# Objetivo de ejercicio: Implementación de conceptos de base de datos en mysql

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
DROP TABLE datos_futbolistas;
DROP DATABASE futbolistas;
