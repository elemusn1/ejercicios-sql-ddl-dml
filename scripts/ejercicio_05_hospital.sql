-- 1. Crear base de datos
CREATE DATABASE IF NOT EXISTS Hospital;
USE Hospital;

-- 2. Crear tabla Pacientes
CREATE TABLE Pacientes (
    IdPaciente INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    FechaNacimiento DATE NOT NULL,
    Genero VARCHAR(10) NOT NULL,
    Ciudad VARCHAR(50) NOT NULL
);

-- 3. Crear índice en Apellido
CREATE INDEX idx_pacientes_apellido ON Pacientes(Apellido);

-- 4. Insertar 6 pacientes
INSERT INTO Pacientes (Nombre, Apellido, FechaNacimiento, Genero, Ciudad) VALUES
('Lucía', 'Álvarez', '1995-04-12', 'Femenino', 'Guatemala'),
('Jorge', 'Estrada', '1988-11-23', 'Masculino', 'Mixco'),
('Mariana', 'Fuentes', '2001-07-05', 'Femenino', 'Villa Nueva'),
('Andrés', 'Castillo', '1975-01-30', 'Masculino', 'Quetzaltenango'),
('Beatriz', 'Pineda', '1992-09-18', 'Femenino', 'Antigua Guatemala'),
('Gabriel', 'Ríos', '2005-03-15', 'Masculino', 'Escuintla');

-- 5. Modificar la ciudad de dos pacientes
UPDATE Pacientes SET Ciudad = 'Santa Catarina Pinula' WHERE IdPaciente = 1;
UPDATE Pacientes SET Ciudad = 'San Miguel Petapa' WHERE IdPaciente = 2;

-- 6. Corregir el nombre de un paciente
UPDATE Pacientes
SET Nombre = 'María Mariana'
WHERE IdPaciente = 3;

-- 7. Eliminar un paciente
DELETE FROM Pacientes
WHERE IdPaciente = 6;
