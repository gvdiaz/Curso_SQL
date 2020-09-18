# Descripción: Caso 1 de ejercicio 3.4
# Autor: Gustavo Vladimir Diaz
# Fecha: 12/09/2020
# Enunciado: 
# Crear una vista muestra la tabla clientes que están asignados al vendedor PEPE
#
# Objetivo de ejercicio: generar vista de vendedor PEPE

# Desarrollo
# CREATE TABLE dbo.clientes
#(
# IdCliente INT NOT NULL,
# FechaAlta DATE NOT NULL,
# RazonSocial VARCHAR(50) NOT NULL,
# Vendedor VARCHAR(50) NULL
# )

CREATE DATABASE prueba_cliente_eje_3_4;
USE prueba_cliente_eje_3_4;
CREATE TABLE clientes(
    IdCliente INT NOT NULL,
    FechaAlta DATE NOT NULL,
    RazonSocial VARCHAR(50) NOT NULL,
    Vendedor VARCHAR(50) NULL
    );
    
# Creación de vista para ver solamente a los clientes
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
