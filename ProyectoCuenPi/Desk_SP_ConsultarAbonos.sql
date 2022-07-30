ALTER PROC SP_ConsultarAbonos(@idDeudor INT)
AS
SELECT Abono.idAbono AS id, Abono.fecha AS Fecha, Abono.cantidad AS Monto
FROM Abono 
INNER JOIN Deudor
ON Deudor.idDeudor = Abono.idDeudor
WHERE Deudor.idDeudor = @idDeudor