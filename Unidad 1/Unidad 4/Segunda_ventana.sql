SELECT * FROM colores;

INSERT INTO colores(color) VALUES
('amarillo'),
('rojo'),
('violeta');

SELECT * FROM colores;

BEGIN TRANSACTION
INSERT INTO colores(color) VALUES
('verde'),
('marron'),
('gris');

ROLLBACK TRANSACTION