--SELECT * FROM Producto

ALTER PROC SP_InsertarProductos(
	@modelo VARCHAR(50),
	@precioOriginal SMALLINT,
	@nombreMarca VARCHAR(50),
	@cantidad TINYINT,
	@detalle VARCHAR (300),
	@fechaCarga DATE,
	@precioGanancia SMALLINT
)
AS
IF EXISTS (SELECT * FROM Producto WHERE modelo = @modelo)
	RAISERROR('Producto ya registrado', 16, 1)
ELSE
	DECLARE @idMarca TINYINT
	SET @idMarca = (SELECT idMarca FROM Marca WHERE nombre = @nombreMarca)
	
	INSERT INTO Producto
	VALUES(@modelo, @precioOriginal, @idMarca, @cantidad, @detalle, @fechaCarga, @precioGanancia)
/*
	INSERT INTO Producto
	VALUES('m1', 500, 1, 1, 'Producto 1', GETDATE(), 550)

	SELECT * FROM Producto
*/