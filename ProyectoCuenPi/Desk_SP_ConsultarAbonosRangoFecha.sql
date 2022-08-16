CREATE PROC SP_ConsultarAbonosRangoFecha(@idDeudor INT, @fecha1 DATE, @fecha2 DATE)
AS
SELECT Abono.idAbono AS id, Abono.fecha AS Fecha, Abono.cantidad AS Monto
FROM Abono 
INNER JOIN Deudor
ON Deudor.idDeudor = Abono.idDeudor
WHERE (Deudor.idDeudor = @idDeudor) AND (Abono.fecha BETWEEN @fecha1 AND @fecha2)