ALTER PROC SP_SeleccionarModeloCompra(
	@idCompra INT
)
AS
SELECT Producto.modelo, Producto.cantidad, Producto.precioGanancia, Compra.cantidadProducto, Compra.detalleCompra
FROM Producto 
INNER JOIN Compra
ON Compra.idProducto = Producto.idProducto
WHERE Compra.idCompra = @idCompra 
