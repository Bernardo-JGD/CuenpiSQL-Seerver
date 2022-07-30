ALTER PROC SP_ModificarClientes(
	@idDeudor INT,
	@nombre VARCHAR(50),
	@apodo VARCHAR(50),
	@direccion VARCHAR(100),
	@telefono VARCHAR(15)
)
AS
IF EXISTS(SELECT idDeudor FROM Deudor WHERE idDeudor <> @idDeudor AND telefono = @telefono )
	RAISERROR('Teléfono ya registrado', 16, 1)
ELSE
	
	UPDATE Deudor SET nombre = @nombre, 
					  apodo = @apodo,
					  direccion = @direccion,
					  telefono = @telefono
	WHERE idDeudor = @idDeudor