CREATE PROC SP_ConsultarUnProducto(
	@modelo VARCHAR(50)
)
AS
SELECT precioGanancia, cantidad FROM Producto WHERE modelo = @modelo