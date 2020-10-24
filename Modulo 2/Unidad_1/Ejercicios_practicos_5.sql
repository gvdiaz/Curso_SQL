# Descripción: Ejercicio 5.1/2/3
# Autor: Gustavo Vladimir Diaz
# Fecha: 22/10/2020
# Enunciados: 
# Ejercicio práctico 5.1
# Cree una tabla Alumnos con un campo IdAlumno que sea autonumérico y otro campo DsAlumno con su nombre y apellido

# Objetivo de ejercicio: Definir y utilizar cursores
#
# Página de referencia: https://www.mysqltutorial.org/mysql-cursor/

# Desarrollo
CREATE DATABASE prueba;
USE prueba;
CREATE TABLE alumnos(
IdAlumno INT PRIMARY KEY AUTO_INCREMENT,
DsAlumno VARCHAR(50)
);

# Ejercicio Práctico 5.2
# Cree una tabla que se llame Inscripciones en la cual tengamos el IdCurso y el IdAlumno

CREATE TABLE inscripciones(
IdCurso INT, -- PRIMARY KEY AUTO_INCREMENT,
IdAlumno INT
);

# Ejercicio Práctico 5.3 Cree una clave primaria compuesta para la tabla Inscripciones que incluya el campo IdAlumno y el campo IdCurso

ALTER TABLE `prueba`.`inscripciones` 
CHANGE COLUMN `IdCurso` `IdCurso` INT NOT NULL ,
CHANGE COLUMN `IdAlumno` `IdAlumno` INT NOT NULL ,
ADD PRIMARY KEY (`IdCurso`, `IdAlumno`);


# Ejercicio Práctico 5.4 Cargar tres alumnos que se llamen Mengano, Fulano y Sutano

INSERT INTO alumnos(IdAlumno, DsAlumno) VALUES
(1, 'Mengano'),
(2, 'Fulano'),
(3, 'Sutano');

# Ejercicio Práctico 5.5 Escriba una consulta para obtener todos los alumnos y pruébela.

SELECT * FROM prueba.alumnos;

# Ejercicio Práctico 5.6 Cargue seis registros en la tabla Inscripciones para que Fulano este tomando los tres cursos, Mengano sólo los dos primeros
# y Sutano sólo el primero de todos.

# Este ejercicio requiere que lea la guía para entender de que cursos se habla

INSERT INTO inscripciones(IdCurso, IdAlumno) VALUES
(1, 1),		# Mengano en curso 1
(2, 1),		# Mengano en curso 2
(3, 1),		# Mengano en curso 3
(1, 2),		# Fulano en curso 1
(2, 2),		# Fulano en curso 2
(1, 3);		# Sutano en curso 1

# Ejercicio Práctico 5.7 Cree y ejecute una consulta que indique cuantos alumnos hay en cada curso (va a tener que combinar GROUP BY y JOIN)

SELECT IdCurso, COUNT(IdAlumno) FROM inscripciones GROUP BY IdCurso;

# Ejercicio Práctico 5.8 Cargue valores para la tabla de inscripciones de manera que el primer alumno tenga asignados 3 cursos,
# el segundo 2 y el tercero 1. Si no ha cargado aún los alumnos hágalo.

# Borro los datos ingresados en el punto 5.6
TRUNCATE TABLE inscripciones;

# Ingreso lo mismo, Megano (IdAlumno = 1) está anotado en los 3 cursos, Fulano (IdAlumno =2) está anotado en 2 cursos y
# Sutano (IdAlumno = 3) está anotado en un solo curso. 
INSERT INTO inscripciones(IdCurso, IdAlumno) VALUES
(1, 1),		# Mengano en curso 1
(2, 1),		# Mengano en curso 2
(3, 1),		# Mengano en curso 3
(1, 2),		# Fulano en curso 1
(2, 2),		# Fulano en curso 2
(1, 3);		# Sutano en curso 1

# Ejercicio Práctico 5.9 Vuelva a ejecutar el procedimiento almacenado para verificar que lista los cursos adecuadamente.

SELECT * FROM inscripciones;

DROP TABLE prueba.alumnos;
DROP DATABASE prueba;