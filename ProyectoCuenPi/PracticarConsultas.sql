SELECT Abono.fecha AS Fecha, Abono.cantidad AS Monto,
	   Compra.fechaCompra AS Fecha, Producto.precioGanancia AS Monto
FROM Abono 
INNER JOIN Deudor
ON Deudor.idDeudor = Abono.idDeudor
INNER JOIN Compra
ON Compra.idDeudor = Deudor.idDeudor
INNER JOIN Producto
ON Producto.idProducto = Compra.idProducto

SELECT Abono.fecha AS Fecha, Abono.cantidad AS Monto
FROM Abono 
INNER JOIN Deudor
ON Deudor.idDeudor = Abono.idDeudor

SELECT Compra.fechaCompra AS Fecha, Producto.cantidad AS Monto
FROM Compra
INNER JOIN Deudor
ON Deudor.idDeudor = Compra.idDeudor
INNER JOIN Producto
ON Producto.idProducto = Compra.idCompra

--

--total de abonos de un cliente
--recibes idDeudor y retorna la suma de todos sus abonos
--totales
SELECT SUM(totalCompra) as SUMValor  from Compra where idDeudor = 1;
--
SELECT * FROM Abono

SELECT * FROM Compra


--Compras entre fechas
SELECT idAbono, cantidad FROM Abono where idDeudor = 1
and fecha between '2022/06/10' and '2022/06/13';
--

TRUNCATE TABLE Marca

SELECT * FROM Producto
SELECT * FROM Marca
SELECT * FROM Deudor
SELECT * FROM Compra
SELECT * FROM Abono


INSERT INTO Marca VALUES ('Betterware')
INSERT INTO Marca VALUES ('Andrea')
INSERT INTO Marca VALUES ('Cklass')
INSERT INTO Marca VALUES ('Impuls')
INSERT INTO Marca VALUES ('Ferrato')
INSERT INTO Marca VALUES ('Vianey')
INSERT INTO Marca VALUES ('Adidas')
INSERT INTO Marca VALUES ('Chenson')

--INSERT INTO Producto VALUES ('modelo', precio, id, cantidad, 'detalle', '2020-05-17', precio)
INSERT INTO Producto VALUES ('x1', 500, 1, 1, 'Calzado', '2020-04-10', 650)
INSERT INTO Producto VALUES ('x2', 400, 2, 2, 'Ropa', '2020-04-10', 500)
INSERT INTO Producto VALUES ('x3', 300, 3, 3, 'Ropa', '2020-04-12', 450)
INSERT INTO Producto VALUES ('x4', 450, 3, 1, 'Calzado', '2020-04-13', 600)

INSERT INTO Producto VALUES ('x6', 700, 3, 1, 'Objeto', '2020-05-10', 900)
INSERT INTO Producto VALUES ('x7', 800, 2, 2, 'Ropa', '2020-05-10', 950)
INSERT INTO Producto VALUES ('x8', 900, 2, 3, 'Calzado', '2020-05-12', 1200)
INSERT INTO Producto VALUES ('x9', 200, 1, 3, 'Calzado', '2020-05-13', 450)

INSERT INTO Producto VALUES ('x10', 700, 1, 1, 'Objeto', '2020-06-11', 950)
INSERT INTO Producto VALUES ('x11', 500, 2, 3, 'Ropa', '2020-06-15', 650)
INSERT INTO Producto VALUES ('x12', 500, 3, 1, 'Objeto', '2020-06-16', 650)
INSERT INTO Producto VALUES ('x13', 300, 1, 1, 'Ropa', '2020-06-17', 450)

INSERT INTO Producto VALUES ('x14', 500, 4, 1, 'Calzado', '2020-05-10', 650)
INSERT INTO Producto VALUES ('x15', 400, 1, 15, 'Objeto', '2020-05-10', 600)
INSERT INTO Producto VALUES ('x16', 300, 1, 3, 'Ropa', '2020-05-12', 450)
INSERT INTO Producto VALUES ('x17', 450, 5, 15, 'Objeto', '2020-05-13', 650)

INSERT INTO Producto VALUES ('x18', 700, 4, 2, 'Calzado', '2020-03-10', 850)
INSERT INTO Producto VALUES ('x19', 800, 2, 15, 'Objeto', '2020-03-10', 950)
INSERT INTO Producto VALUES ('x20', 900, 3, 1, 'Ropa', '2020-03-12', 1050)
INSERT INTO Producto VALUES ('x21', 200, 5, 1, 'Objeto', '2020-03-13', 350)

INSERT INTO Producto VALUES ('x22', 700, 4, 1, 'Calzado', '2020-02-11', 950)
INSERT INTO Producto VALUES ('x23', 500, 12, 3, 'Objeto', '2020-02-15', 850)
INSERT INTO Producto VALUES ('x24', 500, 12, 2, 'Objeto', '2020-02-16', 850)
INSERT INTO Producto VALUES ('x25', 300, 12, 1, 'Calzado', '2020-02-17', 550)

SELECT * FROM Producto
DELETE FROM Producto WHERE idProducto = 4

SELECT * FROM Deudor
SELECT * FROM Abono





SELECT * FROM Deudor
INSERT INTO Deudor values('Gustavo Enrique Lopez','Tavo Lopez','Magiscatzin 103 OTE',8312347654);
INSERT INTO Deudor values('Rodrigo Cervantes', 'Ticky','Benito Juarez Ejido',8124769834);
INSERT INTO Deudor values('Enrique Dominguez Angeles','Kike Dominguez','Petroleos 502',8317469345);
INSERT INTO Deudor values('Bernardo Guzman','Berni','Llera 104 Nacional', 8312349845);
INSERT INTO Deudor values('Kareli Ruiz','Comadre Ruiz','Altamira 201',8311166573);
INSERT INTO Deudor values('Mariana Trejo','Marianita','Campesina 1',8319384587);
INSERT INTO Deudor values('Monica Ramirez','Chapulín','Burocrática 2',8312958523);
INSERT INTO Deudor values('Rocio Gonzalez','Chio','Campesina 1',8317582931);
INSERT INTO Deudor values('Sarahi Pensado','Sarita','El Limon',8618369247);
INSERT INTO Deudor values('Maritza Hernandez','Martiza','El Limon',8689391111);
INSERT INTO Deudor values('David Lacio','Lacio','Yurem',8681571864);
INSERT INTO Deudor values('Hilario Lopez','Hilario','Nacional 3',8347128743);
INSERT INTO Deudor values('Juan Vallejo','Vallejo','Del Maestro',8612347658);
INSERT INTO Deudor values('Juan Bolaños','Tonelada','Linares',8311119807);
INSERT INTO Deudor values('Juan de Dios','DiosPlan','Naciona, 2',8317658901);
INSERT INTO Deudor values('Michelle Soto','Michelin','Altamira 5',8239870912);

SELECT idDeudor FROM Deudor

1
2
3
4
5
6
7
8
9
10
11
1004
1005
1006
1007
1008
1009
1010
1011
1012
1013
1014
1015
1016
1017
1018
1019
1020

SELECT idProducto FROM Producto
1
2
3
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28

SELECT * FROM Abono
SELECT * FROM Deudor

INSERT INTO Abono (idDeudor, cantidad, fecha) VALUES (1, 200, '2022/05/15')

INSERT INTO Abono values (1004,600,'2022/06/14');
INSERT INTO Abono values (1011,450,'2022/03/23');
INSERT INTO Abono values (1012,640,'2022/02/11');
INSERT INTO Abono values (1013,9000,'2022/01/30');
INSERT INTO Abono values (1014,133,'2022/06/29');
INSERT INTO Abono values (1005,123,'2022/06/5');
INSERT INTO Abono values (1004,873,'2022/06/9');
INSERT INTO Abono values (1012,8781,'2022/06/7');
INSERT INTO Abono values (1006,1000,'2022/06/11');
INSERT INTO Abono values (1009,600,'2022/06/12');
INSERT INTO Abono values (1008,410,'2022/06/23');
INSERT INTO Abono values (1010,980,'2022/06/23');
INSERT INTO Abono values (1011,736,'2022/05/24');
INSERT INTO Abono values (1012,1000,'2022/05/25');
INSERT INTO Abono values (1013,982,'2022/05/26');
INSERT INTO Abono values (1011,8938,'2022/05/27');
INSERT INTO Abono values (1004,837,'2022/05/28');
INSERT INTO Abono values (1008,193,'2022/05/29');
INSERT INTO Abono values (1009,611,'2022/04/9');
INSERT INTO Abono values (1007,984,'2022/04/8');
INSERT INTO Abono values (1008,193,'2022/04/7');
INSERT INTO Abono values (1013,133,'2022/04/6');
INSERT INTO Abono values (1012,3792,'2022/04/5');
INSERT INTO Abono values (1004,3233,'2022/04/8');
INSERT INTO Abono values (1007,8473,'2022/03/2');
INSERT INTO Abono values (1016,1234,'2022/03/3');
INSERT INTO Abono values (1011,4763,'2022/03/4');
INSERT INTO Abono values (1012,938,'2022/03/7');
INSERT INTO Abono values (1013,383,'2022/03/20');
INSERT INTO Abono values (1013,9393,'2022/03/11');
INSERT INTO Abono values (1012,334,'2022/03/10');
INSERT INTO Abono values (1015,927,'2022/02/9');
INSERT INTO Abono values (1019,982,'2022/02/3');
INSERT INTO Abono values (1018,621,'2022/02/1');
INSERT INTO Abono values (1017,343,'2022/02/1');
INSERT INTO Abono values (1016,543,'2022/02/8');
INSERT INTO Abono values (1018,982,'2022/02/12');
INSERT INTO Abono values (1019,4883,'2022/02/22');
INSERT INTO Abono values (1013,9833,'2022/01/11');
INSERT INTO Abono values (1012,9899,'2022/01/2');
INSERT INTO Abono values (1011,234,'2022/01/8');
INSERT INTO Abono values (1011,193,'2022/01/7');
INSERT INTO Abono values (1011,989,'2022/01/22');
INSERT INTO Abono values (1012,488,'2022/01/11');
INSERT INTO Abono values (1012,876,'2022/01/22');
INSERT INTO Abono values (1013,493,'2022/01/23');
INSERT INTO Abono values (1013,4444,'2022/01/25');
INSERT INTO Abono values (1005,939,'2022/03/21');
INSERT INTO Abono values (1015,4444,'2022/04/9');
INSERT INTO Abono values (1015,8272,'2022/05/10');
INSERT INTO Abono values (1015,9123,'2022/05/10');
INSERT INTO Abono values (1015,576,'2022/05/8');





INSERT INTO Abono values (1004,300,'2022/04/14');
INSERT INTO Abono values (1005,350,'2022/04/23');
INSERT INTO Abono values (1006,240,'2022/04/11');
INSERT INTO Abono values (1007,1000,'2022/04/30');
INSERT INTO Abono values (1008,433,'2022/04/29');
INSERT INTO Abono values (1009,523,'2022/04/5');
INSERT INTO Abono values (1010,273,'2022/04/9');
INSERT INTO Abono values (1011,781,'2022/04/7');
INSERT INTO Abono values (1012,5000,'2022/04/11');
INSERT INTO Abono values (1013,100,'2022/04/12');
INSERT INTO Abono values (1014,510,'2022/04/23');
INSERT INTO Abono values (1015,880,'2022/04/23');
INSERT INTO Abono values (1016,436,'2022/04/24');
INSERT INTO Abono values (1017,500,'2022/04/25');
INSERT INTO Abono values (1018,182,'2022/04/26');
INSERT INTO Abono values (1019,981,'2022/03/27');
INSERT INTO Abono values (1020,347,'2022/03/28');
INSERT INTO Abono values (1004,493,'2022/03/29');
INSERT INTO Abono values (1005,211,'2022/03/9');
INSERT INTO Abono values (1006,884,'2022/03/8');
INSERT INTO Abono values (1007,293,'2022/03/7');
INSERT INTO Abono values (1008,433,'2022/03/6');
INSERT INTO Abono values (1009,792,'2022/03/5');
INSERT INTO Abono values (1010,233,'2022/01/8');
INSERT INTO Abono values (1011,873,'2022/01/2');
INSERT INTO Abono values (1012,124,'2022/01/3');
INSERT INTO Abono values (1013,763,'2022/01/4');
INSERT INTO Abono values (1014,1238,'2022/01/7');
INSERT INTO Abono values (1015,1383,'2022/01/20');
INSERT INTO Abono values (1016,393,'2022/01/11');
INSERT INTO Abono values (1017,334,'2022/01/10');
INSERT INTO Abono values (1018,927,'2022/01/9');
INSERT INTO Abono values (1019,382,'2022/01/3');
INSERT INTO Abono values (1020,221,'2022/01/1');
INSERT INTO Abono values (1020,443,'2022/01/1');
INSERT INTO Abono values (1020,343,'2022/01/8');
INSERT INTO Abono values (1020,382,'2022/05/12');
INSERT INTO Abono values (1018,883,'2022/05/22');
INSERT INTO Abono values (1018,833,'2022/05/11');
INSERT INTO Abono values (1017,899,'2022/05/2');
INSERT INTO Abono values (1016,134,'2022/05/8');
INSERT INTO Abono values (1015,493,'2022/05/7');
INSERT INTO Abono values (1015,989,'2022/05/22');
INSERT INTO Abono values (1015,388,'2022/05/11');
INSERT INTO Abono values (1015,976,'2022/05/22');
INSERT INTO Abono values (1016,293,'2022/05/23');
INSERT INTO Abono values (1017,200,'2022/05/25');
INSERT INTO Abono values (1018,939,'2022/05/21');
INSERT INTO Abono values (1014,4444,'2022/05/9');
INSERT INTO Abono values (1014,8272,'2022/04/10');
INSERT INTO Abono values (1013,9123,'2022/04/10');
INSERT INTO Abono values (1012,576,'2022/04/8');




INSERT INTO Abono values (1004,600,'2022/06/1');
INSERT INTO Abono values (1011,450,'2022/03/2');
INSERT INTO Abono values (1012,640,'2022/02/3');
INSERT INTO Abono values (1013,9000,'2022/01/4');
INSERT INTO Abono values (1014,133,'2022/06/5');
INSERT INTO Abono values (1005,123,'2022/06/6');
INSERT INTO Abono values (1004,873,'2022/06/7');
INSERT INTO Abono values (1012,8781,'2022/06/8');
INSERT INTO Abono values (1006,1000,'2022/06/9');
INSERT INTO Abono values (1009,600,'2022/06/10');
INSERT INTO Abono values (1008,410,'2022/06/11');
INSERT INTO Abono values (1010,980,'2022/06/12');
INSERT INTO Abono values (1011,736,'2022/05/13');
INSERT INTO Abono values (1012,1000,'2022/05/14');
INSERT INTO Abono values (1013,982,'2022/05/15');
INSERT INTO Abono values (1011,8938,'2022/05/16');
INSERT INTO Abono values (1004,837,'2022/05/17');
INSERT INTO Abono values (1008,193,'2022/05/18');
INSERT INTO Abono values (1009,611,'2022/04/19');
INSERT INTO Abono values (1007,984,'2022/04/20');
INSERT INTO Abono values (1008,193,'2022/04/21');
INSERT INTO Abono values (1013,133,'2022/04/22');
INSERT INTO Abono values (1012,3792,'2022/04/23');
INSERT INTO Abono values (1004,3233,'2022/04/24');
INSERT INTO Abono values (1007,8473,'2022/03/25');
INSERT INTO Abono values (1016,1234,'2022/03/26');
INSERT INTO Abono values (1011,4763,'2022/03/27');
INSERT INTO Abono values (1012,938,'2022/03/28');
INSERT INTO Abono values (1013,383,'2022/03/29');
INSERT INTO Abono values (1013,9393,'2022/03/30');
INSERT INTO Abono values (1012,334,'2022/03/1');
INSERT INTO Abono values (1015,927,'2022/02/2');
INSERT INTO Abono values (1019,982,'2022/02/3');
INSERT INTO Abono values (1018,621,'2022/02/4');
INSERT INTO Abono values (1017,343,'2022/02/5');
INSERT INTO Abono values (1016,543,'2022/02/6');
INSERT INTO Abono values (1018,982,'2022/02/7');
INSERT INTO Abono values (1019,4883,'2022/02/8');
INSERT INTO Abono values (1013,9833,'2022/01/9');
INSERT INTO Abono values (1012,9899,'2022/01/10');
INSERT INTO Abono values (1011,234,'2022/01/11');
INSERT INTO Abono values (1011,193,'2022/01/12');
INSERT INTO Abono values (1011,989,'2022/01/13');
INSERT INTO Abono values (1012,488,'2022/01/14');
INSERT INTO Abono values (1012,876,'2022/01/15');
INSERT INTO Abono values (1013,493,'2022/01/16');
INSERT INTO Abono values (1013,4444,'2022/01/17');
INSERT INTO Abono values (1005,939,'2022/03/18');
INSERT INTO Abono values (1015,4444,'2022/04/19');
INSERT INTO Abono values (1015,8272,'2022/05/20');
INSERT INTO Abono values (1015,9123,'2022/05/21');
INSERT INTO Abono values (1015,576,'2022/05/22');






SELECT * FROM Producto

SELECT * FROM Deudor
SELECT * FROM Compra

SELECT Compra.idCompra AS id, Compra.fechaCompra AS Fecha, Producto.cantidad AS Cantidad
FROM Compra
INNER JOIN Producto
ON Compra.idProducto = Producto.idProducto
