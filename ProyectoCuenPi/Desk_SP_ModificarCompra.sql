ALTER PROC SP_ModificarCompra(
	@idCompra INT,
	@modelo VARCHAR (50),
	@cantidad TINYINT,
	@totalCompra SMALLINT,
	@detalle VARCHAR (200),
	@fechaCompra DATE
)
AS
DECLARE @idProducto INT
SET @idProducto =  (SELECT idProducto FROM Producto WHERE modelo = @modelo)

UPDATE Compra SET idProducto = @idProducto,
				  cantidadProducto = @cantidad,
				  totalCompra = @totalCompra,
				  detalleCompra = @detalle,
				  fechaCompra = @fechaCompra
WHERE idCompra = @idCompra
