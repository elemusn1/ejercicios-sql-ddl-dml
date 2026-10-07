-- 1. Crear base de datos
CREATE DATABASE IF NOT EXISTS Empresa;
USE Empresa;

-- 2. Crear tabla Empleados
CREATE TABLE Empleados (
    IdEmpleado INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Puesto VARCHAR(50) NOT NULL,
    Salario DECIMAL(10, 2) NOT NULL,
    Departamento VARCHAR(50) NOT NULL
);

-- 3. Crear índice en Apellido
CREATE INDEX idx_empleados_apellido ON Empleados(Apellido);

-- 4. Insertar 6 empleados
INSERT INTO Empleados (Nombre, Apellido, Puesto, Salario, Departamento) VALUES
('Carlos', 'López', 'Desarrollador Junior', 4500.00, 'TI'),
('Ana', 'Gómez', 'Analista de Datos', 6000.00, 'TI'),
('Luis', 'Martínez', 'Contador General', 5500.00, 'Finanzas'),
('Sofía', 'Ramírez', 'Especialista RRHH', 4800.00, 'Recursos Humanos'),
('Pedro', 'Hernández', 'Diseñador UI/UX', 5200.00, 'Diseño'),
('Elena', 'Castillo', 'Gerente de Proyectos', 8500.00, 'Operaciones');

-- 5. Aumentar el salario de uno de los empleados
UPDATE Empleados
SET Salario = 5000.00
WHERE IdEmpleado = 1;

-- 6. Cambiar el departamento de otro empleado
UPDATE Empleados
SET Departamento = 'Innovación y TI'
WHERE IdEmpleado = 2;

-- 7. Eliminar un empleado
DELETE FROM Empleados
WHERE IdEmpleado = 6;
