

--Tabla PAIS 
insert into pais(id, nombre,poblacion,superficie ) values(1,'Francia', 66600000,640680);
insert into pais(id, nombre,poblacion,superficie ) values(2,'Alemania',80700000 ,357000);
insert into pais(id, nombre,poblacion,superficie ) values(3,'Islandia',398266 ,100250);
--insert into pais(id, nombre,poblacion,superficie ) values(4,'Polonia',80700000 ,357000);
insert into pais(id, nombre,poblacion,superficie ) values(5,'Espana',49315949 ,505990);


--Tabla CIUDAD 
insert into ciudad(id, nombre,id_pais,poblacion,clasificacion ) values(1,'Paris',1 ,2243000, 5);
insert into ciudad(id, nombre,id_pais,poblacion,clasificacion ) values(2,'Berlin',2 ,3460000, 3);
insert into ciudad(id, nombre,id_pais,poblacion,clasificacion ) values(3,'Varsovia',4 ,1862402, 3);
insert into ciudad(id, nombre,id_pais,poblacion,clasificacion ) values(4,'Madrid',5 ,3416771, 3);
insert into ciudad(id, nombre,id_pais,poblacion,clasificacion ) values(101,'Marsella',1 ,859543, 3);
insert into ciudad(id, nombre,id_pais,poblacion,clasificacion ) values(102,'Lyon',1 ,1300000, 3);
insert into ciudad(id, nombre,id_pais,poblacion,clasificacion ) values(103,'Hamburgo',2 ,1857727, 3);
insert into ciudad(id, nombre,id_pais,poblacion,clasificacion ) values(104,'Munich',2 ,1562096, 3);
insert into ciudad(id, nombre,id_pais,poblacion,clasificacion ) values(105,'Cracovia',4 ,1498499, 3);


--Tabla Ciclismo
insert into ciclismo(id,nombre,pais) values(1,'YK','DE');
insert into ciclismo(id,nombre,pais) values(2,'ZG','DE');
insert into ciclismo(id,nombre,pais) values(3,'WT','PL');

--Tabla Patinaje
insert into patinaje(id,nombre,pais) values(1,'YK','DE');
insert into patinaje(id,nombre,pais) values(2,'DF','DE');
insert into patinaje(id,nombre,pais) values(3,'AK','PL');


--Tabla DIM_categoria
insert into dim_categoria(categoria_id, nombre) values(1, "Electronica");
insert into dim_categoria(categoria_id, nombre) values(2, "Hogar");
insert into dim_categoria(categoria_id, nombre) values(3, "Ropa");
insert into dim_categoria(categoria_id, nombre) values(4, "Alimentos");
insert into dim_categoria(categoria_id, nombre) values(5, "Deportes");

--Tabla DIM_geografia 
INSERT INTO DIM_geografia (nombre, tipo, poblacion, codigo_dane, coordenada_x, coordenada_y, departamento, pais) VALUES
('Bogotá', 1, 7743955, '11001', 4.7110, -74.0721, 11, 1),
('Medellín', 1, 2569000, '05001', 6.2442, -75.5812, 5, 1),
('Cali', 1, 2228000, '76001', 3.4516, -76.5320, 76, 1),
('Barranquilla', 1, 1223000, '08001', 10.9685, -74.7813, 8, 1),
('Cartagena', 1, 1029000, '13001', 10.3910, -75.4794, 13, 1),
('Cúcuta', 1, 750000, '54001', 7.8891, -72.4967, 54, 1),
('Bucaramanga', 1, 581000, '68001', 7.1193, -73.1227, 68, 1),
('Pereira', 1, 477000, '66001', 4.8087, -75.6906, 66, 1),
('Santa Marta', 1, 499000, '47001', 11.2408, -74.1990, 47, 1),
('Ibagué', 1, 541000, '73001', 4.4389, -75.2322, 73, 1),
('Manizales', 1, 434000, '17001', 5.0689, -75.5174, 17, 1),
('Villavicencio', 1, 531000, '50001', 4.1420, -73.6266, 50, 1),
('Neiva', 1, 357000, '41001', 2.9386, -75.2678, 41, 1),
('Armenia', 1, 301000, '63001', 4.5339, -75.6811, 63, 1),
('Popayán', 1, 318000, '19001', 2.4448, -76.6147, 19, 1),
('Montería', 1, 490000, '23001', 8.7479, -75.8814, 23, 1),
('Pasto', 1, 450000, '52001', 1.2136, -77.2811, 52, 1),
('Tunja', 1, 200000, '15001', 5.5353, -73.3678, 15, 1),
('Florencia', 1, 180000, '18001', 1.6144, -75.6062, 18, 1),
('Quibdó', 1, 130000, '27001', 5.6947, -76.6610, 27, 1);


--Tabla DIM_cliente
INSERT INTO DIM_cliente (primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, tipo_documento, numero_documento, telefono_movil, direccion, geografia_id) VALUES
('Carlos', 'Andrés', 'Gómez', 'Pérez', 'CC', '1012345678', '3001234567', 'Cra 10 #20-30', 1),
('Laura', 'Marcela', 'Rodríguez', 'García', 'CC', '1012345679', '3012345678', 'Av 15 #45-67', 2),
('Juan', 'Esteban', 'Martínez', 'López', 'TI', '900123456', '3023456789', 'Calle 8 #12-34', 3),
('Ana', 'Lucía', 'Ramírez', 'Torres', 'CC', '1012345680', '3034567890', 'Cra 7 #23-45', 4),
('Miguel', 'Ángel', 'Fernández', 'Ruiz', 'CC', '1012345681', '3045678901', 'Calle 9 #56-78', 5),
('Sofía', 'Isabel', 'Moreno', 'Castro', 'CC', '1012345682', '3056789012', 'Av 3 #67-89', 6),
('Andrés', 'Felipe', 'Jiménez', 'Vargas', 'CC', '1012345683', '3067890123', 'Cra 5 #78-90', 7),
('Valentina', 'Paola', 'Suárez', 'Mendoza', 'CC', '1012345684', '3078901234', 'Calle 11 #89-01', 8),
('Sebastián', 'David', 'Rojas', 'Cabrera', 'CC', '1012345685', '3089012345', 'Av 6 #90-12', 9),
('Camila', 'Alejandra', 'Ortiz', 'Salazar', 'CC', '1012345686', '3090123456', 'Cra 12 #01-23', 10),
('Diego', 'Mauricio', 'Reyes', 'Gutiérrez', 'CC', '1012345687', '3101234567', 'Calle 13 #23-45', 11),
('Daniela', 'Andrea', 'Vega', 'Morales', 'CC', '1012345688', '3112345678', 'Av 7 #34-56', 12),
('Julián', 'Ricardo', 'Castaño', 'Navarro', 'CC', '1012345689', '3123456789', 'Cra 14 #45-67', 13),
('María', 'José', 'Luna', 'Peña', 'CC', '1012345690', '3134567890', 'Calle 15 #56-78', 14),
('Felipe', 'Santiago', 'Aguilar', 'Nieto', 'CC', '1012345691', '3145678901', 'Av 8 #67-89', 15),
('Natalia', 'Carolina', 'León', 'Paredes', 'CC', '1012345692', '3156789012', 'Cra 16 #78-90', 16),
('Tomás', 'Emilio', 'Molina', 'Silva', 'CC', '1012345693', '3167890123', 'Calle 17 #89-01', 17),
('Isabella', 'Fernanda', 'Mejía', 'Ríos', 'CC', '1012345694', '3178901234', 'Av 9 #90-12', 18),
('Samuel', 'Iván', 'Pinto', 'Córdoba', 'CC', '1012345695', '3189012345', 'Cra 18 #01-23', 19),
('Luciana', 'Gabriela', 'Herrera', 'Barrios', 'CC', '1012345696', '3190123456', 'Calle 19 #23-45', 20);

--Tabla DIM_producto 
INSERT INTO DIM_producto (nombre, categoria_id, valor_unitario, sku) VALUES
('Smartphone Galaxy A14', 1, 899000.00, 'ELEC-001'),
('Televisor LG 55"', 1, 2199000.00, 'ELEC-002'),
('Laptop Lenovo IdeaPad', 1, 1899000.00, 'ELEC-003'),
('Aspiradora Xiaomi Mi', 2, 499000.00, 'HOG-001'),
('Silla ergonómica', 2, 349000.00, 'HOG-002'),
('Mesa comedor 6 puestos', 2, 899000.00, 'HOG-003'),
('Camisa hombre manga larga', 3, 79000.00, 'ROP-001'),
('Pantalón jean mujer', 3, 119000.00, 'ROP-002'),
('Chaqueta impermeable', 3, 159000.00, 'ROP-003'),
('Cereal integral 500g', 4, 12900.00, 'ALI-001'),
('Aceite vegetal 1L', 4, 8900.00, 'ALI-002'),
('Arroz blanco 5kg', 4, 23900.00, 'ALI-003'),
('Balón de fútbol Adidas', 5, 99000.00, 'DEP-001'),
('Bicicleta montaña GW', 5, 1299000.00, 'DEP-002'),
('Guantes de boxeo Everlast', 5, 149000.00, 'DEP-003'),
('Audífonos inalámbricos JBL', 1, 249000.00, 'ELEC-004'),
('Licuadora Oster 10 velocidades', 2, 189000.00, 'HOG-004'),
('Vestido casual mujer', 3, 139000.00, 'ROP-004'),
('Galletas integrales 300g', 4, 8900.00, 'ALI-004'),
('Raqueta de tenis Wilson', 5, 299000.00, 'DEP-004');

--Tabla DIM_tiempo
INSERT INTO DIM_tiempo (fecha, fecha_dd, fecha_mm, fecha_yyyy) VALUES
('2025-09-01', 1, 9, 2025),
('2025-09-02', 2, 9, 2025),
('2025-09-03', 3, 9, 2025),
('2025-09-04', 4, 9, 2025),
('2025-09-05', 5, 9, 2025),
('2025-09-06', 6, 9, 2025),
('2025-09-07', 7, 9, 2025),
('2025-09-08', 8, 9, 2025),
('2025-09-09', 9, 9, 2025),
('2025-09-10', 10, 9, 2025),
('2025-09-11', 11, 9, 2025),
('2025-09-12', 12, 9, 2025),
('2025-09-13', 13, 9, 2025),
('2025-09-14', 14, 9, 2025),
('2025-09-15', 15, 9, 2025),
('2025-09-16', 16, 9, 2025),
('2025-09-17', 17, 9, 2025),
('2025-09-18', 18, 9, 2025),
('2025-09-19', 19, 9, 2025),
('2025-09-20', 20, 9, 2025),
('2025-09-21', 21, 9, 2025),
('2025-09-22', 22, 9, 2025),
('2025-09-23', 23, 9, 2025),
('2025-09-24', 24, 9, 2025),
('2025-09-25', 25, 9, 2025),
('2025-09-26', 26, 9, 2025),
('2025-09-27', 27, 9, 2025),
('2025-09-28', 28, 9, 2025),
('2025-09-29', 29, 9, 2025),
('2025-09-30', 30, 9, 2025);


--Tabla FACT_venta
INSERT INTO FACT_venta (cliente_id,producto_id,tiempo_id,cantidad,valor_total) VALUES
	 (1,3,5,3.0,5697000.0),
	 (2,1,4,2.0,1798000.0),
	 (3,2,6,4.0,8796000.0),
	 (4,4,2,6.0,2994000.0),
	 (5,5,1,4.0,1396000.0),
	 (6,6,3,3.0,2697000.0),
	 (7,7,7,5.0,395000.0),
	 (8,8,8,3.0,357000.0),
	 (9,9,9,5.0,795000.0),
	 (10,10,10,2.0,25800.0);
INSERT INTO FACT_venta (cliente_id,producto_id,tiempo_id,cantidad,valor_total) VALUES
	 (1,2,3,3.0,6597000.0),
	 (2,3,4,2.0,3798000.0),
	 (3,4,5,4.0,1996000.0),
	 (4,5,6,5.0,1745000.0),
	 (5,6,7,4.0,3596000.0),
	 (6,7,8,3.0,237000.0),
	 (7,8,9,5.0,595000.0),
	 (8,9,10,3.0,477000.0),
	 (9,10,1,5.0,64500.0),
	 (10,1,2,2.0,1798000.0);

