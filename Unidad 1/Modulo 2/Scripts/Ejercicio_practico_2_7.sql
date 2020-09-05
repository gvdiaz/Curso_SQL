# Descripción: Ejercicio práctico 2.7
# Autor: Gustavo Vladimir Diaz
# Fecha: 05/09/2020
# Enunciado: 
# Implemente en su base de datos el cambio sugerido en el ejercicio conceptual 2.7
#
# Objetivo de ejercicio: Implementar la base de datos como se muestra la página 20 del apunte "UNIDAD 2    -M1-   -DBD-  -VALIDADA-   -25-6-2018-.pdf"

# Desarrollo

# Escribo el Script para definir la base de datos indicada en el apunte

CREATE DATABASE facturacion;
USE facturacion;
CREATE TABLE facturas (
    cuit            VARCHAR(20),
    IdFactura       INT,
    fecha           DATE,
    condicion_pago  VARCHAR(30),
    fecha_venc      DATE,
    subtotal        FLOAT,
    impuesto        FLOAT,
    PRIMARY KEY (IdFactura)
);

CREATE TABLE clientes (
    cuit            VARCHAR(20),
    nombre          VARCHAR(20),
    direccion       VARCHAR(20),
    PRIMARY KEY (cuit)
);

CREATE TABLE renglones (
    IdFactura       INT,
    IdRenglon       INT,
    IdArticulo      INT,
    cantidad        INT,
    PRIMARY KEY (IdFactura,IdRenglon)
);

CREATE TABLE articulos (
    IdArticulo      INT,
    articulo        VARCHAR(30),
    PRIMARY KEY (IdArticulo)
);

DESCRIBE clientes;
DESCRIBE facturas;
DESCRIBE renglones;
DESCRIBE articulos;
DROP TABLE clientes,facturas,renglones,articulos;
DROP DATABASE facturacion;
