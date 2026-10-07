-- 1. Crear base de datos
CREATE DATABASE IF NOT EXISTS Hotel;
USE Hotel;

-- 2. Crear tabla Habitaciones
CREATE TABLE Habitaciones (
    IdHabitacion INT PRIMARY KEY AUTO_INCREMENT,
    Numero INT NOT NULL,
    Tipo VARCHAR(50) NOT NULL,
    Capacidad INT NOT NULL,
    PrecioNoche DECIMAL(10, 2) NOT NULL,
    Estado VARCHAR(30) NOT NULL
);

-- 3. Crear índice en Tipo
CREATE INDEX idx_habitaciones_tipo ON Habitaciones(Tipo);

-- 4. Insertar 8 habitaciones
INSERT INTO Habitaciones (Numero, Tipo, Capacidad, PrecioNoche, Estado) VALUES
(101, 'Individual', 1, 200.00, 'Disponible'),
(102, 'Doble', 2, 350.00, 'Disponible'),
(103, 'Suite', 4, 750.00, 'Ocupada'),
(104, 'Individual', 1, 200.00, 'Mantenimiento'),
(201, 'Doble', 2, 350.00, 'Disponible'),
(202, 'Familiar', 5, 800.00, 'Ocupada'),
(203, 'Suite Presidencial', 4, 1200.00, 'Disponible'),
(204, 'Doble Deluxe', 2, 450.00, 'Disponible');

-- 5. Cambiar el estado de tres habitaciones
UPDATE Habitaciones SET Estado = 'Ocupada' WHERE IdHabitacion = 1;
UPDATE Habitaciones SET Estado = 'Disponible' WHERE IdHabitacion = 3;
UPDATE Habitaciones SET Estado = 'Disponible' WHERE IdHabitacion = 4;

-- 6. Modificar el precio de dos habitaciones
UPDATE Habitaciones SET PrecioNoche = 380.00 WHERE IdHabitacion = 2;
UPDATE Habitaciones SET PrecioNoche = 850.00 WHERE IdHabitacion = 6;

-- 7. Eliminar una habitación
DELETE FROM Habitaciones
WHERE IdHabitacion = 8;
