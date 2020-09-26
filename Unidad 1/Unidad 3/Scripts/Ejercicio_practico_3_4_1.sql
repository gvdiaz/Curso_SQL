# Descripción: Ejercicio práctico 3.4
# Autor: Gustavo Vladimir Diaz
# Fecha: 26/09/2020
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

# Ingreso de datos en tabla creada
# Ingreso de Clientes
INSERT INTO clientes(IdCliente, FechaAlta, RazonSocial, Vendedor) VALUES
	(1, str_to_date('15,09,2020','%d,%m,%Y'), 'Apolo SRL', 'PEPE'),
    (2, str_to_date('20,10,2010','%d,%m,%Y'), "Zeus SRL", "CARLOS"),
    (3, str_to_date('09,07,2015','%d,%m,%Y'), "Asclepio SRL", "ROBERTO"),
    (4, str_to_date('04,05,2017','%d,%m,%Y'), "Dionisio SRL", "PEPE"),
    (5, str_to_date('29,09,1984','%d,%m,%Y'), "Poseidon SRL", "MARISA");


# Finalmente planteo la cuestión del ejercicio, crear la vista
CREATE VIEW vista_clientes AS
SELECT RazonSocial, Vendedor FROM clientes WHERE Vendedor = 'PEPE';
    
# Uso de vista para ver solamente a Razon social de los clientes
SELECT * FROM prueba_cliente_eje_3_4.vista_clientes;

# Comandos para eliminar tablas
DROP TABLE clientes;

# Comandos para eliminar base de datos
DROP DATABASE prueba_cliente_eje_3_4;
