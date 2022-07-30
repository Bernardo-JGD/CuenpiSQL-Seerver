CREATE PROC SP_TotalAbono(
	@idDeudor INT
)
AS
SELECT SUM(cantidad) as SUMValor  from Abono where idDeudor = @idDeudor;