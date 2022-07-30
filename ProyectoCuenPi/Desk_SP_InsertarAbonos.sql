CREATE PROC SP_InsertarAbonos(
	@idDeudor INT,
	@cantidad INT,
	@fecha DATE
)
AS
INSERT INTO Abono VALUES (@idDeudor, @cantidad, @fecha)