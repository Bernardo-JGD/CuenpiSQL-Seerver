ALTER PROC SP_InsertarCompra(
	@modelo VARCHAR(50),
	@idDeudor INT,
	@cantidad TINYINT,
	@totalCompra SMALLINT,
	@detalleCompra VARCHAR(200),
	@fechaCompra DATE
)
AS
DECLARE @idProducto INT
SET @idProducto =  (SELECT idProducto FROM Producto WHERE modelo = @modelo)

INSERT INTO Compra
VALUES(@idProducto, @idDeudor, @cantidad, @totalCompra, @detalleCompra, @fechaCompra)

--
INSERT INTO Compra VALUES (1, 1, 1, 'Detalle', GETDATE())

--
