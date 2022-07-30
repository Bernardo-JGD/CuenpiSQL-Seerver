CREATE PROC SP_TotalCompra(
	@idDeudor INT
)
AS
SELECT SUM(totalCompra) as SUMValor  from Compra where idDeudor = @idDeudor;


