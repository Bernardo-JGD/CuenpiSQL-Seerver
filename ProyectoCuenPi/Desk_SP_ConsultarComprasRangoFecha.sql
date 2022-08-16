CREATE PROC SP_ConsultarComprasRangoFecha(@idDeudor INT, @fecha1 DATE, @fecha2 DATE)
AS
SELECT Compra.idCompra AS id, Compra.fechaCompra AS Fecha, Compra.totalCompra AS Total
FROM Compra 
INNER JOIN Deudor
ON Deudor.idDeudor = Compra.idDeudor
WHERE (Deudor.idDeudor = @idDeudor) AND   (Compra.fechaCompra BETWEEN @fecha1 AND @fecha2)