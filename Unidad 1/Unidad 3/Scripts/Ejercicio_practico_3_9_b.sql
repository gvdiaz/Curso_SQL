# Descripción: Ejercicio 3.9/11
# Autor: Gustavo Vladimir Diaz
# Fecha: 26/09/2020
# Enunciado: 
# Inspirándose en la vista que generamos como ejemplo para obtener los clientes cuya fecha de alta pertenece al año 2018 armar un procedimiento almacenado que devuelva lo mismo que la vista.
#
# Objetivo de ejercicio: crear un procedimiento que cumpla con la misma función que una vista pero mostrando altas de clientes del año 2018

# Desarrollo
# Copio lo desarrollado en el ejercicio práctico 3.4 en cuanto a la creación de la base de datos. La versión "b" la implemento con un proceso.
# Nota 1: El ejercicio 3.11 pide realizar la llamada al procedimiento creado este script cumple con lo requerido en la línea 48
# Nota 2: El ejercicio 3.12 pide borrar los procedimientos creados. Esto se realiza en la línea 50

CREATE DATABASE prueba_cliente_eje_3_9;
USE prueba_cliente_eje_3_9;
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
    (5, str_to_date('29,09,2018','%d,%m,%Y'), "Poseidon SRL", "MARISA"),
    (6, str_to_date('22,09,2004','%d,%m,%Y'), "Cronos SRL", "ROBERTO"),
    (7, str_to_date('02,02,2000','%d,%m,%Y'), "Afrodita SRL", "CARLOS"),
    (8, str_to_date('09,05,1996','%d,%m,%Y'), "Prometeo SRL", "MARISA"),
    (9, str_to_date('12,01,1984','%d,%m,%Y'), "Atlas SRL", "PEPE");


# Crear el procedimiento
DELIMITER //

CREATE PROCEDURE procedimiento_cliente()
BEGIN
   SELECT RazonSocial, Vendedor,FechaAlta FROM clientes WHERE YEAR (FechaAlta) = 2018;
END //

DELIMITER ;
    
# Uso de vista para ver solamente a Razon social de los clientes
CALL prueba_cliente_eje_3_9.procedimiento_cliente;

# Borrado de procedimiento creado
DROP PROCEDURE procedimiento_cliente;

# Comandos para eliminar tablas
DROP TABLE clientes;

# Comandos para eliminar base de datos
DROP DATABASE prueba_cliente_eje_3_9;
