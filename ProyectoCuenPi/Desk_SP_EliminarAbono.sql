ALTER PROC SP_EliminarAbono(@idAbono INT)
AS
DELETE FROM Abono WHERE idAbono = @idAbono