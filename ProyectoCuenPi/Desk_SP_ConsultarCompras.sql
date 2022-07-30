ALTER PROC SP_ConsultarCompras(@idDeudor INT)
AS
SELECT Compra.idCompra AS id, Compra.fechaCompra AS Fecha, Compra.totalCompra AS Total
FROM Compra 
INNER JOIN Deudor
ON Deudor.idDeudor = Compra.idDeudor
WHERE Deudor.idDeudor = @idDeudor