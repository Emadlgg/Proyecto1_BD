--Inserts de Datos

-- Insertar datos de prueba en la tabla Usuario
INSERT INTO Usuario (nombre, correo, contraseña, telefono) VALUES
('Juan Perez', 'juan.perez@example.com', 'password123', '12345678'),
('Maria Lopez', 'maria.lopez@example.com', 'password456', '87654321'),
('Carlos Ramirez', 'carlos.ramirez@example.com', 'password789', '55555555'),
('Ana Gomez', 'ana.gomez@example.com', 'password101', '11111111'),
('Luis Torres', 'luis.torres@example.com', 'password202', '22222222'),
('Sofia Martinez', 'sofia.martinez@example.com', 'password303', '33333333'),
('Pedro Sanchez', 'pedro.sanchez@example.com', 'password404', '44444444'),
('Laura Diaz', 'laura.diaz@example.com', 'password505', '55555555'),
('Miguel Ruiz', 'miguel.ruiz@example.com', 'password606', '66666666'),
('Elena Castro', 'elena.castro@example.com', 'password707', '77777777');

-- Insertar datos de prueba en la tabla Reporte
INSERT INTO Reporte (fechaGeneracion, idUsuario) VALUES
('2023-10-01', 1),
('2023-10-02', 2),
('2023-10-03', 3),
('2023-10-04', 4),
('2023-10-05', 5),
('2023-10-06', 6),
('2023-10-07', 7),
('2023-10-08', 8),
('2023-10-09', 9),
('2023-10-10', 10);

-- Insertar datos de prueba en la tabla Categoria
INSERT INTO Categoria (nombre, idUsuario) VALUES
('Comida', 1),
('Transporte', 2),
('Entretenimiento', 3),
('Salud', 4),
('Educación', 5),
('Vivienda', 6),
('Ropa', 7),
('Ahorro', 8),
('Viajes', 9),
('Otros', 10);

-- Insertar datos de prueba en la tabla Transaction
INSERT INTO Transaction (monto, fecha, tipo, idCategoria, idUsuario) VALUES
(150.75, '2023-10-01', 'Gasto', 1, 1),
(50.00, '2023-10-02', 'Ingreso', 2, 2),
(200.00, '2023-10-03', 'Gasto', 3, 3),
(75.50, '2023-10-04', 'Ingreso', 4, 4),
(300.00, '2023-10-05', 'Gasto', 5, 5),
(100.00, '2023-10-06', 'Ingreso', 6, 6),
(25.00, '2023-10-07', 'Gasto', 7, 7),
(500.00, '2023-10-08', 'Ingreso', 8, 8),
(80.00, '2023-10-09', 'Gasto', 9, 9),
(150.00, '2023-10-10', 'Ingreso', 10, 10);

-- Insertar datos de prueba en la tabla Presupuesto
INSERT INTO Presupuesto (limite, idCategoria, idUsuario, periodo) VALUES
(1000.00, 1, 1, '2023-10-01'),
(500.00, 2, 2, '2023-10-01'),
(800.00, 3, 3, '2023-10-01'),
(300.00, 4, 4, '2023-10-01'),
(1200.00, 5, 5, '2023-10-01'),
(600.00, 6, 6, '2023-10-01'),
(400.00, 7, 7, '2023-10-01'),
(1500.00, 8, 8, '2023-10-01'),
(700.00, 9, 9, '2023-10-01'),
(900.00, 10, 10, '2023-10-01');

-- Insertar datos de prueba en la tabla Notificacion
INSERT INTO Notificacion (mensaje, fecha, idUsuario) VALUES
('Presupuesto de Comida casi agotado', '2023-10-01', 1),
('Nuevo ingreso registrado', '2023-10-02', 2),
('Gasto en Transporte excede el límite', '2023-10-03', 3),
('Recordatorio: Pago de Salud pendiente', '2023-10-04', 4),
('Ahorro mensual completado', '2023-10-05', 5),
('Gasto en Vivienda dentro del límite', '2023-10-06', 6),
('Nuevo gasto en Ropa registrado', '2023-10-07', 7),
('Viaje programado para el próximo mes', '2023-10-08', 8),
('Gasto en Entretenimiento excede el límite', '2023-10-09', 9),
('Recordatorio: Revisar presupuesto de Otros', '2023-10-10', 10);

-- Selects de las tablas para comprobar que los datos si se encuentran en las tablas
-- Verificar usuarios
SELECT * FROM Usuario;

-- Verificar transacciones
SELECT * FROM Transaction;

-- Verifcar notificaciones
SELECT * FROM Notificacion;