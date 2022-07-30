CREATE PROC SP_InsertarMarca(
	@nombre VARCHAR(50)
)
AS
IF EXISTS (SELECT * FROM Marca WHERE @nombre = nombre)
	RAISERROR('Marca ya registrada', 16, 1)
ELSE
	INSERT INTO Marca VALUES (@nombre)