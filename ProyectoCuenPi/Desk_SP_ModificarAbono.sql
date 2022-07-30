CREATE PROC SP_ModificarAbonos(
	@idAbono INT,
	@cantidad INT,
	@fecha Date
)

AS

UPDATE Abono SET cantidad = @cantidad,
				 fecha = @fecha
WHERE idAbono = @idAbono