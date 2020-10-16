USE EJERCICIO_4;

CREATE TABLE dbo.colores
(
color VARCHAR(50) NOT NULL
);
SELECT * FROM colores;

BEGIN TRANSACTION

DELETE FROM colores WHERE color = 'amarillo';
DELETE FROM colores WHERE color = 'rojo';
DELETE FROM colores WHERE color = 'violeta';

COMMIT TRANSACTION