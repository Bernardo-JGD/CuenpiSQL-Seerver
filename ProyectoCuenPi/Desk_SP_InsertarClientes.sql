CREATE PROC SP_InsertarClientes(
	@nombre VARCHAR(50),
	@apodo VARCHAR(50),
	@direccion VARCHAR(50),
	@telefono VARCHAR(15)
)
AS
IF EXISTS 
(SELECT * FROM Deudor
WHERE nombre = @nombre AND apodo = @apodo AND direccion = @direccion AND telefono = @telefono)
	RAISERROR('Usuario ya registrado', 16, 1)
ELSE
	INSERT INTO Deudor VALUES(@nombre, @apodo, @direccion, @telefono)

	
	
