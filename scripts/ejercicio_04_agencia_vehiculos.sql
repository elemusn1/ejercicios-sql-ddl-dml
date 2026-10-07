-- 1. Crear base de datos
CREATE DATABASE IF NOT EXISTS AgenciaVehiculos;
USE AgenciaVehiculos;

-- 2. Crear tabla Vehiculos
CREATE TABLE Vehiculos (
    IdVehiculo INT PRIMARY KEY AUTO_INCREMENT,
    Marca VARCHAR(50) NOT NULL,
    Modelo VARCHAR(50) NOT NULL,
    Anio INT NOT NULL,
    Color VARCHAR(30) NOT NULL,
    Precio DECIMAL(12, 2) NOT NULL
);

-- 3. Crear índice en Marca
CREATE INDEX idx_vehiculos_marca ON Vehiculos(Marca);

-- 4. Insertar 7 vehículos
INSERT INTO Vehiculos (Marca, Modelo, Anio, Color, Precio) VALUES
('Toyota', 'Corolla', 2022, 'Blanco', 145000.00),
('Honda', 'Civic', 2021, 'Gris', 150000.00),
('Mazda', '3', 2023, 'Rojo', 165000.00),
('Hyundai', 'Tucson', 2020, 'Azul', 135000.00),
('Nissan', 'Sentra', 2019, 'Negro', 110000.00),
('Ford', 'Ranger', 2022, 'Plata', 210000.00),
('Chevrolet', 'Tracker', 2021, 'Blanco', 125000.00);

-- 5. Modificar el precio de dos vehículos
UPDATE Vehiculos SET Precio = 140000.00 WHERE IdVehiculo = 1;
UPDATE Vehiculos SET Precio = 148000.00 WHERE IdVehiculo = 2;

-- 6. Cambiar el color de un vehículo
UPDATE Vehiculos
SET Color = 'Negro Perlado'
WHERE IdVehiculo = 3;

-- 7. Eliminar un vehículo
DELETE FROM Vehiculos
WHERE IdVehiculo = 7;
