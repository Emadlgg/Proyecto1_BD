-- Crear la base de datos
CREATE DATABASE FinanzasPersonales;

-- Usar la base de datos
USE FinanzasPersonales;


-- Crear la tabla Usuario
CREATE TABLE Usuario (
    idUsuario SERIAL PRIMARY KEY,  
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    contraseña VARCHAR(100) NOT NULL
);

-- Crear la tabla Reporte
CREATE TABLE Reporte (
    idReporte SERIAL PRIMARY KEY, 
    fechaGeneracion DATE NOT NULL,
    idUsuario INT,
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario)
);

-- Crear la tabla Categoría
CREATE TABLE Categoria (
    idCategoria SERIAL PRIMARY KEY, 
    nombre VARCHAR(100) NOT NULL,
    idUsuario INT,
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario)
);

-- Crear la tabla Transaction
CREATE TABLE Transaction (
    idTransaction SERIAL PRIMARY KEY, 
    monto DOUBLE PRECISION NOT NULL,  
    fecha DATE NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    idCategoria INT,
    idUsuario INT,
    FOREIGN KEY (idCategoria) REFERENCES Categoria(idCategoria),
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario)
);

-- Crear la tabla Presupuesto
DROP TABLE IF EXISTS Presupuesto;
CREATE TABLE Presupuesto (
    idPresupuesto SERIAL PRIMARY KEY,
    limite DOUBLE PRECISION NOT NULL,
    idCategoria INT,
    idUsuario INT,
    periodo DATE NOT NULL,
    FOREIGN KEY (idCategoria) REFERENCES Categoria(idCategoria),
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario)
);

-- Agregar tabla Notificacion
CREATE TABLE Notificacion (
    idNotificacion SERIAL PRIMARY KEY,
    mensaje VARCHAR(255) NOT NULL,
    fecha DATE NOT NULL,
    idUsuario INT,
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario)
);

-- Modificar tabla Usuario para agregar telefono
ALTER TABLE Usuario ADD telefono VARCHAR(15);