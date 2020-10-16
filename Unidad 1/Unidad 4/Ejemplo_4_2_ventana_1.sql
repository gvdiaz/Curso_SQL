CREATE TABLE colores
(
color VARCHAR(50) NOT NULL
);

INSERT INTO colores(color) VALUES
('rojo'),
('amarillo'),
('azul');

SELECT * FROM colores;

BEGIN TRANSACTION
UPDATE dbo.colores SET color = 'celeste' WHERE color = 'azul';

