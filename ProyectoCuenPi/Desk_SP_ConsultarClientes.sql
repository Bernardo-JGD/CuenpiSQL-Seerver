ALTER PROC SP_ConsultarClientes
AS
SELECT idDeudor AS id, nombre, apodo, direccion, telefono FROM Deudor