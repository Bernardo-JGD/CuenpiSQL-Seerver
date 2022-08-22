ALTER PROC SP_EliminarCompra(@idCompra INT, @modelo VARCHAR(50), @cantidad TINYINT)
AS
BEGIN 
UPDATE Producto SET cantidad = cantidad + @cantidad WHERE modelo = @modelo;
DELETE FROM Compra WHERE idCompra = @idCompra;
END
/*
Voy a sumar la cantidad de producto de la compra a la cantidad de producto que se encuentra en la tabla de producto.
Posteriormente voy a eliminar la compra
*/
