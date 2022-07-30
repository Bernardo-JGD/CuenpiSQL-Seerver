
CREATE DATABASE CuenpiV1Desk
USE CuenpiV1Desk

CREATE TABLE Marca(
	idMarca TINYINT PRIMARY KEY IDENTITY,
	nombre VARCHAR(50) NOT NULL
)

DROP TABLE Marca

CREATE TABLE Deudor(
	idDeudor INT PRIMARY KEY IDENTITY,
	nombre VARCHAR(50) NOT NULL,
	apodo VARCHAR(50) NOT NULL,
	direccion VARCHAR(50) NULL,
	telefono VARCHAR(15) NULL
)

DROP TABLE Deudor

CREATE TABLE Abono(
	idAbono INT PRIMARY KEY IDENTITY,
	idDeudor INT NOT NULL,
	cantidad SMALLINT NOT NULL,
	fecha DATE NOT NULL,
	CONSTRAINT fk_idDeudorAbono FOREIGN KEY (idDeudor)
	REFERENCES Deudor (idDeudor)
)

DROP TABLE Abono

CREATE TABLE Producto(
	idProducto INT PRIMARY KEY IDENTITY,
	modelo VARCHAR (50) NOT NULL,
	precioOriginal SMALLINT NOT NULL,
	idMarca TINYINT NOT NULL,
	cantidad TINYINT NOT NULL,
	detalle VARCHAR (300) NULL,
	fechaCarga DATE,
	CONSTRAINT fk_idMarcaProducto FOREIGN KEY (idMarca)
	REFERENCES Marca (idMarca)
)

ALTER TABLE Producto ADD precioGanancia SMALLINT NOT NULL

DROP TABLE Producto

--Original
CREATE TABLE Compra (
	idCompra INT PRIMARY KEY IDENTITY,
	idProducto INT NOT NULL,
	idDeudor INT NOT NULL,
	cantidadProducto TINYINT NOT NULL,
	detalleCompra VARCHAR (200) NULL,
	fechaCompra DATE,
	CONSTRAINT fk_idProducto FOREIGN KEY (idProducto)
	REFERENCES Producto (idProducto),
	CONSTRAINT fk_idDeudor FOREIGN KEY (idDeudor)
	REFERENCES Deudor (idDeudor)
)

DROP Table Compra

--Parchada
--Para poder sumar la columna totalCompra
CREATE TABLE Compra (
	idCompra INT PRIMARY KEY IDENTITY,
	idProducto INT NOT NULL,
	idDeudor INT NOT NULL,
	cantidadProducto TINYINT NOT NULL,
	totalCompra SMALLINT NOT NULL,
	detalleCompra VARCHAR (200) NULL,
	fechaCompra DATE,
	CONSTRAINT fk_idProducto FOREIGN KEY (idProducto)
	REFERENCES Producto (idProducto),
	CONSTRAINT fk_idDeudor FOREIGN KEY (idDeudor)
	REFERENCES Deudor (idDeudor)
)





