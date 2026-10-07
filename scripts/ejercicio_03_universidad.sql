-- 1. Crear base de datos
CREATE DATABASE IF NOT EXISTS Universidad;
USE Universidad;

-- 2. Crear tabla Cursos
CREATE TABLE Cursos (
    IdCurso INT PRIMARY KEY AUTO_INCREMENT,
    NombreCurso VARCHAR(100) NOT NULL,
    Carrera VARCHAR(80) NOT NULL,
    Creditos INT NOT NULL,
    Catedratico VARCHAR(100) NOT NULL,
    Horario VARCHAR(50) NOT NULL
);

-- 3. Crear índice en NombreCurso
CREATE INDEX idx_cursos_nombre ON Cursos(NombreCurso);

-- 4. Insertar 6 cursos
INSERT INTO Cursos (NombreCurso, Carrera, Creditos, Catedratico, Horario) VALUES
('Bases de Datos I', 'Ingeniería en Sistemas', 5, 'Ing. Mario Silva', 'Sábado 07:00-09:00'),
('Sistemas Operativos', 'Ingeniería en Sistemas', 5, 'Inga. Claudia Morales', 'Sábado 09:00-11:00'),
('Compiladores', 'Ingeniería en Sistemas', 6, 'Ing. Roberto Paz', 'Sábado 11:00-13:00'),
('Contabilidad General', 'Administración de Empresas', 4, 'Lic. Juan Díaz', 'Lunes 18:00-20:00'),
('Derecho Mercantil', 'Ciencias Jurídicas', 4, 'Licda. Karen Soto', 'Miércoles 18:00-20:00'),
('Redes de Computadoras', 'Ingeniería en Sistemas', 5, 'Ing. Carlos Mendoza', 'Viernes 18:00-20:00');

-- 5. Modificar el número de créditos de un curso
UPDATE Cursos
SET Creditos = 6
WHERE IdCurso = 1;

-- 6. Cambiar el catedrático de otro curso
UPDATE Cursos
SET Catedratico = 'Ing. Fernando Reyes'
WHERE IdCurso = 2;

-- 7. Eliminar un curso
DELETE FROM Cursos
WHERE IdCurso = 5;
