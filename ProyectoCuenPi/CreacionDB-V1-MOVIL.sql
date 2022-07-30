CREATE DATABASE CuenpiV1Movil
USE CuenpiV1Movil
--Marcan error porque como ya están creadas,
--indica que no las vuelva a crear
CREATE TABLE Producto(
	idProducto INT PRIMARY KEY IDENTITY,
	modelo VARCHAR(15) NOT NULL,
	precio SMALLINT NOT NULL,
	marca VARCHAR,
	fechaCarga DATE NOT NULL
)
-- Lo ideal es que la marca tenga su propia tabla
-- Y se referencié por medio de un id

CREATE TABLE Deudor(
	idDeudor INT PRIMARY KEY IDENTITY,
	nombre VARCHAR(50) NOT NULL,
	apodo VARCHAR(25),
	direccion VARCHAR(100),
	telefono VARCHAR(15)
)

CREATE TABLE Abono(
	idAbono INT PRIMARY KEY IDENTITY,
	idDeudor INT NOT NULL,
	cantidad SMALLINT NOT NULL,
	fecha DATE NOT NULL,
	CONSTRAINT fk_idDeudor FOREIGN KEY (idDeudor)
	REFERENCES Deudor (idDeudor)
)

CREATE TABLE Compra(
	idCompra INT PRIMARY KEY IDENTITY,
	idProducto INT NOT NULL,
	idDeudor INT NOT NULL,
	cantidad SMALLINT NOT NULL,
	fechaCompra DATE,
	CONSTRAINT fk_idProducto FOREIGN KEY (idProducto)
	REFERENCES Producto (idProducto),
	CONSTRAINT fk_idDeudorCompra FOREIGN KEY (idDeudor)
	REFERENCES Deudor (idDeudor)
)