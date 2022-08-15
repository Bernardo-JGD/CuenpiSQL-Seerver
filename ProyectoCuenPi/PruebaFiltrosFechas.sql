/*Antes de probar los filtros de las fechas agregaré: 

	1. Productos prueba
	2. Deudores prueba 
	3. Compras prueba 
	4. Abonos prueba (la suma de abonos menor a la suma de compras)

	Los productos serán 10, cada 1 con 3 de cantidad

	Serán 3 Deudores
	Serán 6 compras por deudor, 2 por cada mes, 3 meses en total
	Serán 9 abonos por deudor, 3 por cada mes, 3 meses en total

*/

--Creando deudores prueba
EXEC SP_InsertarClientes 'Deudor uno', 'du', 'direcion 1', '831123';--2023
EXEC SP_InsertarClientes 'Deudor dos', 'dd', 'direcion 2', '831456';--2024
EXEC SP_InsertarClientes 'Deudor tres', 'dt', 'direcion 3', '831789';--2025

SELECT * FROM Deudor;

--Creando productos prueba

/*
	@modelo VARCHAR(50),
	@precioOriginal SMALLINT,
	@nombreMarca VARCHAR(50),
	@cantidad TINYINT,
	@detalle VARCHAR (300),
	@fechaCarga DATE,
	@precioGanancia SMALLINT
*/
SELECT * FROM Marca;

/*
1	Betterware
2	Andrea
3	Cklass
4	Impuls
5	Marca
12	Ferrato
13	Vianey
14	Adidas
15	Chenson
16	Nueva Marca
*/
EXEC SP_InsertarProductos 'pp1', 1500, 'Adidas', 3, 'Sin detalle', '2022/01/25', 1950;
EXEC SP_InsertarProductos 'pp2', 1400, 'Adidas', 3, 'Sin detalle', '2022/01/25', 1950;
EXEC SP_InsertarProductos 'pp3', 1300, 'Adidas', 3, 'Sin detalle', '2022/01/25', 1950;
EXEC SP_InsertarProductos 'pp4', 1200, 'Chenson', 3, 'Sin detalle', '2022/02/20', 1950;
EXEC SP_InsertarProductos 'pp5', 1100, 'Chenson', 3, 'Sin detalle', '2022/02/20', 1950;
EXEC SP_InsertarProductos 'pp6', 1000, 'Chenson', 3, 'Sin detalle', '2022/02/20', 1950;
EXEC SP_InsertarProductos 'pp7', 900, 'Andrea', 3, 'Sin detalle', '2022/03/18', 1950;
EXEC SP_InsertarProductos 'pp8', 800, 'Andrea', 3, 'Sin detalle', '2022/03/23', 1950;
EXEC SP_InsertarProductos 'pp9', 700, 'Cklass', 3, 'Sin detalle', '2022/04/23', 1950;
EXEC SP_InsertarProductos 'pp10', 600, 'Cklass', 3, 'Sin detalle', '2022/04/23', 1950;

/*Creando compras prueba*/

EXEC SP_InsertarCompra  'pp3', 2023, 1, 1690, 'sd', '2022/01/05';
EXEC SP_InsertarCompra  'pp4', 2023, 1, 1560, 'sd', '2022/01/09';
EXEC SP_InsertarCompra  'pp5', 2023, 1, 1430, 'sd', '2022/02/11';
EXEC SP_InsertarCompra  'pp6', 2023, 1, 1300, 'sd', '2022/02/21';
EXEC SP_InsertarCompra  'pp7', 2023, 1, 1170, 'sd', '2022/03/17';
EXEC SP_InsertarCompra  'pp8', 2023, 1, 1040, 'sd', '2022/03/23';

/*Prueba consultar  compras por rango de fecha Deudor uno*/
SELECT Compra.idCompra AS id, Compra.fechaCompra AS Fecha, Compra.totalCompra AS Total
FROM Compra 
INNER JOIN Deudor
ON Deudor.idDeudor = Compra.idDeudor
WHERE (Deudor.idDeudor = 2023) AND (Compra.fechaCompra BETWEEN '2022/01/05' AND '2022/01/09') ;

EXEC SP_InsertarCompra  'pp9', 2024, 1, 910, 'sd', '2022/04/03';
EXEC SP_InsertarCompra  'pp10', 2024, 1, 780, 'sd', '2022/04/09';
EXEC SP_InsertarCompra  'pp1', 2024, 1, 1950, 'sd', '2022/05/11';
EXEC SP_InsertarCompra  'pp2', 2024, 1, 1820, 'sd', '2022/05/15';
EXEC SP_InsertarCompra  'pp3', 2024, 1, 1690, 'sd', '2022/06/01';
EXEC SP_InsertarCompra  'pp4', 2024, 1, 1560, 'sd', '2022/06/12';

EXEC SP_InsertarCompra  'pp5', 2025, 1, 1430, 'sd', '2022/07/13';
EXEC SP_InsertarCompra  'pp6', 2025, 1, 1300, 'sd', '2022/07/17';
EXEC SP_InsertarCompra  'pp7', 2025, 1, 1170, 'sd', '2022/08/12';
EXEC SP_InsertarCompra  'pp8', 2025, 1, 1040, 'sd', '2022/08/25';
EXEC SP_InsertarCompra  'pp9', 2025, 1, 910, 'sd', '2022/09/10';
EXEC SP_InsertarCompra  'pp10', 2025, 1, 780, 'sd', '2022/09/25';


SELECT * FROM Compra;

/*Creando abonos prueba*/
/*2600*/
EXEC SP_InsertarAbonos 2023, 800, '2022/01/15';
EXEC SP_InsertarAbonos 2023, 300, '2022/01/22';
EXEC SP_InsertarAbonos 2023, 400, '2022/01/30';
EXEC SP_InsertarAbonos 2023, 300, '2022/02/10';
EXEC SP_InsertarAbonos 2023, 800, '2022/02/15';
EXEC SP_InsertarAbonos 2023, 400, '2022/03/05';
EXEC SP_InsertarAbonos 2023, 800, '2022/03/15';
EXEC SP_InsertarAbonos 2023, 500, '2022/03/28';
EXEC SP_InsertarAbonos 2023, 400, '2022/04/15';

SELECT * FROM Abono WHERE idDeudor = 2023

SELECT Abono.idAbono AS id, Abono.fecha AS Fecha, Abono.cantidad AS Monto
FROM Abono 
INNER JOIN Deudor
ON Deudor.idDeudor = Abono.idDeudor
WHERE (Deudor.idDeudor = 2023) AND (Abono.fecha BETWEEN '2022/01/01' AND '2022/01/30');