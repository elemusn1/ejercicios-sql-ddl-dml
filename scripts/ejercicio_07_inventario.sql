-- 1. Crear base de datos
CREATE DATABASE IF NOT EXISTS Inventario;
USE Inventario;

-- 2. Crear tabla Productos
CREATE TABLE Productos (
    IdProducto INT PRIMARY KEY AUTO_INCREMENT,
    Codigo VARCHAR(20) NOT NULL,
    Nombre VARCHAR(100) NOT NULL,
    Categoria VARCHAR(50) NOT NULL,
    Existencia INT NOT NULL,
    Precio DECIMAL(10, 2) NOT NULL
);

-- 3. Crear índice en Codigo
CREATE INDEX idx_productos_codigo ON Productos(Codigo);

-- 4. Insertar 8 productos
INSERT INTO Productos (Codigo, Nombre, Categoria, Existencia, Precio) VALUES
('PROD001', 'Teclado Mecánico', 'Periféricos', 25, 450.00),
('PROD002', 'Mouse Inalámbrico', 'Periféricos', 40, 180.00),
('PROD003', 'Monitor 24 pulgadas', 'Pantallas', 15, 1200.00),
('PROD004', 'Memoria RAM 16GB', 'Componentes', 30, 350.00),
('PROD005', 'Disco SSD 1TB', 'Almacenamiento', 20, 500.00),
('PROD006', 'Audífonos Gamer', 'Audio', 18, 300.00),
('PROD007', 'Cable HDMI 2.0', 'Accesorios', 50, 45.00),
('PROD008', 'Silla Ergonómica', 'Mobiliario', 8, 1100.00);

-- 5. Modificar el precio de dos productos
UPDATE Productos SET Precio = 425.00 WHERE IdProducto = 1;
UPDATE Productos SET Precio = 1150.00 WHERE IdProducto = 3;

-- 6. Actualizar la existencia de tres productos
UPDATE Productos SET Existencia = 22 WHERE IdProducto = 1;
UPDATE Productos SET Existencia = 35 WHERE IdProducto = 2;
UPDATE Productos SET Existencia = 12 WHERE IdProducto = 5;

-- 7. Eliminar un producto
DELETE FROM Productos
WHERE IdProducto = 8;

/*
8. ¿Por qué puede ser conveniente crear un índice sobre Código?
Respuesta:
Es conveniente porque el código de un producto suele ser el campo más utilizado
para realizar búsquedas, filtros y lecturas operativas (por ejemplo, con lectores de
código de barras o consultas tipo WHERE Codigo = '...'). 

Al contar con un índice, el gestor de base de datos evita recorrer la tabla fila por fila
(Full Table Scan) y accede directamente a la ubicación del registro mediante una estructura
de árbol (B-Tree), optimizando drásticamente la velocidad de respuesta.
*/
