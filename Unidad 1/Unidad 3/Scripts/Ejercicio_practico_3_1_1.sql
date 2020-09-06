# Descripción: Caso 1 de ejercicio 3.1
# Autor: Gustavo Vladimir Diaz
# Fecha: 06/09/2020
# Enunciado: 
# Escriba las sentencias para la creación de las tablas utilizadas en el ejercicio conceptual 2.12
# Habrá que decidir interpretando los contenidos si los campos podrán almacenar o no valores nulos. En cualquier caso resultará instructivo tomar una decisión sobre cuáles serán las claves primarias y hacerla explícita en la resolución de este ejercicio.
#
# Objetivo de ejercicio: Implementación de caso 1 elegiendo si los campos pueden o no ser nulos, también si son claves primarias.

# Desarrollo
# CASO 1
# Se desea registrar la información relevante para la gestión de una empresa de transportes dedicada a repartir paquetes por todo el país. Los mismos conductores del vehículo son los encargados de llevar los paquetes. Necesitamos guardar los datos del conductor de cada camión:
# dni                                       OK
# nombre                                    OK
# teléfono                                  OK
# dirección                                 OK
# salario                                   OK
# ciudad de residencia                      OK

CREATE DATABASE entregas;
USE entregas;
CREATE TABLE conductor (
    IdConductor     INT UNSIGNED NOT NULL PRIMARY KEY,
    dni             INT UNSIGNED NOT NULL,
    nombre_cond     VARCHAR(30) NOT NULL,
    apellido_cond   VARCHAR(30) NOT NULL,            # Agrego como campo apellido de conductor
    telefono        INT UNSIGNED,
    dirección       VARCHAR(30),
    numero_dir      INT UNSIGNED,                    # Número de dirección
    ciudad          VARCHAR(30),
    salario         INT NOT NULL
);

# De los paquetes transportados interesa conocer:
# identificador único del paquete           OK
# descripción                               OK
# destinatario                              -> en tabla destinarario
# dirección del destinatario                -> en tabla destinatario
# remitente                                 -> en tabla remitente
# dirección del remitente                   -> en tabla remitente

CREATE TABLE paquete (
    IdPaquete       INT UNSIGNED NOT NULL PRIMARY KEY,
    descripcion     VARCHAR(50),
    IdDestino       INT UNSIGNED NOT NULL,
    IdRemitente     INT UNSIGNED NOT NULL,
    IdConductor     INT UNSIGNED NOT NULL,
    IdCamion        INT UNSIGNED NOT NULL
);

# De los camiones que conducen los camioneros, interesa conocer:
# la patente o matrícula                    OK
# modelo                                    OK
# marca                                     OK
# potencia del motor                        OK

CREATE TABLE camion (
    IdCamion        INT UNSIGNED NOT NULL PRIMARY KEY,
    patente         INT UNSIGNED NOT NULL,
    modelo          VARCHAR(30) NOT NULL,
    marca           VARCHAR(30) NOT NULL,
    Potencia_motor  INT UNSIGNED
);

# Agrego tabla de descripción de destinatario

CREATE TABLE destinatario (
    IdDestino       INT UNSIGNED NOT NULL PRIMARY KEY,
    direccion       VARCHAR(30) NOT NULL,
    numero_dir      INT UNSIGNED NOT NULL,
    localidad       VARCHAR(30) NOT NULL,
    provincia       VARCHAR(30) NOT NULL,
    nombre_dest     VARCHAR(30) NOT NULL,
    apellido_dest   VARCHAR(30) NOT NULL,
    fecha_entrega   DATE NOT NULL
);

# Agrego tabla de descripción de remitente

CREATE TABLE remitente (
    IdRemitente     INT UNSIGNED NOT NULL PRIMARY KEY,
    direccion       VARCHAR(30) NOT NULL,
    numero_dir      INT UNSIGNED NOT NULL,
    localidad       VARCHAR(30) NOT NULL,
    provincia       VARCHAR(30) NOT NULL,
    nombre_rem      VARCHAR(30) NOT NULL,
    apellido_rem    VARCHAR(30) NOT NULL,
    fecha_envio     DATE NOT NULL
);

# Comandos para ver las tablas y sus características

DESCRIBE conductor;
DESCRIBE paquete;
DESCRIBE camion;
DESCRIBE destinatario;
DESCRIBE remitente;

# Comandos para eliminar tablas
DROP TABLE conductor;
DROP TABLE paquete;
DROP TABLE camion;
DROP TABLE destinatario;
DROP TABLE remitente;

# Comandos para eliminar base de datos
DROP DATABASE entregas;
