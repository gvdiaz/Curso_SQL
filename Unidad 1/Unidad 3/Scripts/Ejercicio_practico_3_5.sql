# Descripción: Ejercicio 3.5
# Autor: Gustavo Vladimir Diaz
# Fecha: 24/09/2020
# Enunciado: 
# Crear una vista donde se vea el CUIT, el IdFactura y el total de la factura
#
# Objetivo de ejercicio: generar vista de un CUIT, IdFactura y el total de la factura

# Desarrollo
# CREATE TABLE dbo.clientes
#(
# IdCliente INT NOT NULL,
# FechaAlta DATE NOT NULL,
# RazonSocial VARCHAR(50) NOT NULL,
# Vendedor VARCHAR(50) NULL
# )

CREATE DATABASE prueba_cliente_eje_3_5;
USE prueba_cliente_eje_3_5;

CREATE TABLE clientes(
    CUIT VARCHAR(50) NOT NULL PRIMARY KEY,
    FechaAlta DATE NOT NULL,
    Nombre VARCHAR(50) NOT NULL,
    Direccion VARCHAR(50) NULL
    );
    
CREATE TABLE facturas(
    CUIT VARCHAR(50) NOT NULL,
    IdFactura INT NOT NULL PRIMARY KEY,
    Fecha DATE NOT NULL,
    CondicionDePago VARCHAR(50) NOT NULL,
    FechaVencimiento DATE NOT NULL,
    Subtotal INT,
    Impuesto INT NOT NULL
    );

CREATE TABLE renglones(
	IdFactura INT NOT NULL,
    IdRenglon INT NOT NULL,
    IdArticulo INT NOT NULL,
    Cantidad INT NOT NULL,
    Precio FLOAT(5,2) NOT NULL,
    PRIMARY KEY (IdFactura, IdRenglon)
    );

CREATE TABLE articulos(
	IdArticulo INT NOT NULL PRIMARY KEY,
    Articulo VARCHAR(50) NOT NULL
    );

    
# Creación de vista para ver solamente a los clientes
# Comandos para ver las tablas y sus características

# DESCRIBE clientes;
# DESCRIBE facturas;
# DESCRIBE renglones;
# DESCRIBE articulos;

# Ingreso de Clientes
INSERT INTO clientes(CUIT, FechaAlta, Nombre, Direccion) VALUES
	('20334455660', str_to_date('15,09,2020','%d,%m,%Y'), 'Apolo SRL', 'Delfos 200'),
    ("20224455663", str_to_date('20,10,2010','%d,%m,%Y'), "Zeus SRL", "Estrato 100"),
    ("20123456783", str_to_date('09,07,2015','%d,%m,%Y'), "Asclepio SRL", "Mesene 300"),
    ("20765764659", str_to_date('04,05,2017','%d,%m,%Y'), "Dionisio SRL", "Tebas 200"),
    ("20222213348", str_to_date('29,09,1984','%d,%m,%Y'), "Poseidon SRL", "Istmo 200");

# Ingreso de Facturas
INSERT INTO facturas(CUIT, IdFactura, Fecha, CondicionDePago, FechaVencimiento, Subtotal, Impuesto) VALUES
	('20334455660', 1, str_to_date('15,09,2019','%d,%m,%Y'), 'Contado', str_to_date('15,10,2019','%d,%m,%Y'), 340, 21),
    ('20224455663', 3, str_to_date('22,11,2019','%d,%m,%Y'), 'Tarjeta', str_to_date('22,12,2019','%d,%m,%Y'), 670, 21),
    ('20224455663', 2, str_to_date('08,01,2019','%d,%m,%Y'), 'Contado', str_to_date('08,02,2019','%d,%m,%Y'), 940, 21),
    ('20123456783', 4, str_to_date('01,06,2019','%d,%m,%Y'), 'Paga Dios', str_to_date('01,07,2019','%d,%m,%Y'), 1500, 21),
    ('20334455660', 5, str_to_date('13,03,2019','%d,%m,%Y'), 'Tarjeta', str_to_date('13,04,2019','%d,%m,%Y'), 222, 21),
    ('20123456783', 10, str_to_date('22,02,2019','%d,%m,%Y'), 'Contado', str_to_date('29,03,2019','%d,%m,%Y'), 340, 21),
    ('20222213348', 6, str_to_date('05,04,2019','%d,%m,%Y'), 'Tarjeta', str_to_date('05,05,2019','%d,%m,%Y'), 1200, 10),
    ('20765764659', 7, str_to_date('18,03,2019','%d,%m,%Y'), 'Contado', str_to_date('18,04,2019','%d,%m,%Y'), 1100, 21),
    ('20334455660', 8, str_to_date('20,02,2019','%d,%m,%Y'), 'Contado', str_to_date('20,03,2019','%d,%m,%Y'), 3030, 10),
    ('20334455660', 9, str_to_date('22,01,2019','%d,%m,%Y'), 'Tarjeta', str_to_date('22,02,2019','%d,%m,%Y'), 678, 21);

# Uso de sentencia truncate
#TRUNCATE TABLE facturas;

# Comandos para eliminar tablas

DROP TABLE clientes;
DROP TABLE facturas;
DROP TABLE renglones;
DROP TABLE articulos;

# Comandos para eliminar base de datos
DROP DATABASE prueba_cliente_eje_3_5;
