-- 1. Crear base de datos
CREATE DATABASE IF NOT EXISTS Biblioteca;
USE Biblioteca;

-- 2. Crear tabla Libros
CREATE TABLE Libros (
    IdLibro INT PRIMARY KEY AUTO_INCREMENT,
    Titulo VARCHAR(150) NOT NULL,
    Autor VARCHAR(100) NOT NULL,
    AnioPublicacion INT,
    Categoria VARCHAR(50),
    Precio DECIMAL(10, 2) NOT NULL
);

-- 3. Crear índice en Titulo
CREATE INDEX idx_libros_titulo ON Libros(Titulo);

-- 4. Insertar 5 registros
INSERT INTO Libros (Titulo, Autor, AnioPublicacion, Categoria, Precio) VALUES
('Cien años de soledad', 'Gabriel García Márquez', 1967, 'Novela', 120.00),
('Don Quijote de la Mancha', 'Miguel de Cervantes', 1605, 'Clásico', 150.00),
('El principito', 'Antoine de Saint-Exupéry', 1943, 'Infantil', 85.50),
('1984', 'George Orwell', 1949, 'Ciencia Ficción', 95.00),
('Ficciones', 'Jorge Luis Borges', 1944, 'Cuento', 110.00);

-- 5. Modificar el precio de uno de los libros
UPDATE Libros
SET Precio = 135.00
WHERE IdLibro = 1;

-- 6. Modificar la categoría de otro libro
UPDATE Libros
SET Categoria = 'Distopía'
WHERE IdLibro = 4;

-- 7. Eliminar uno de los libros
DELETE FROM Libros
WHERE IdLibro = 5;
