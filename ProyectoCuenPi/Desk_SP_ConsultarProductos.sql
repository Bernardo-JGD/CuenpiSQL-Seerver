ALTER PROC SP_ConsultarProductos
AS
SELECT Producto.idProducto AS id, Producto.modelo AS Código, Producto.precioOriginal AS Costo, Marca.nombre AS Marca, Producto.cantidad AS Cant, Producto.fechaCarga AS Fecha, Producto.precioGanancia AS Ganancia, Producto.detalle AS Detalle
FROM Producto
INNER JOIN Marca
ON Producto.idMarca = Marca.idMarca

--SELECT idProducto AS idProducto, modelo, precioOriginal, idMarca, cantidad, detalle, fechaCarga, precioGanancia FROM Producto




--Modificar este método para mostrrar el nombre de la marca en vez de su id
--INNER JOIN