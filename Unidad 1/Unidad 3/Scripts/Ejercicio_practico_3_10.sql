# Descripción: Ejercicio 3.10/11
# Autor: Gustavo Vladimir Diaz
# Fecha: 26/09/2020
# Enunciado: 
# Incorporar un parámetro al ejercicio 3.9 para que el procedimiento almacenado sirva para cualquier año para el que se lo quiera usar.
#
# Objetivo de ejercicio: crear un procedimiento que traiga los clientes de determinado año que podremos especificar como entrada en el procedimiento

# Desarrollo
# Copio lo desarrollado en el ejercicio práctico 3.4 en cuanto a la creación de la base de datos.
# Nota: El ejercicio 3.11 pide realizar la llamada al procedimiento creado este script cumple con lo requerido en la línea 49   

CREATE DATABASE prueba_cliente_eje_3_10;
USE prueba_cliente_eje_3_10;
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

CREATE PROCEDURE procedimiento_cliente(IN filtro_anio INT)
BEGIN
   SELECT RazonSocial, Vendedor,FechaAlta 
   FROM clientes
   WHERE YEAR (FechaAlta) = filtro_anio;
END //

DELIMITER ;
    
# Uso de vista para ver solamente a Razon social de los clientes
CALL prueba_cliente_eje_3_10.procedimiento_cliente(2015);

# Comandos para eliminar tablas
DROP TABLE clientes;

# Comandos para eliminar base de datos
DROP DATABASE prueba_cliente_eje_3_10;
