
-- EJEMPLO SQL
CREATE TABLE Pais (
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	nombre TEXT,
	poblacion NUMERIC,
	superficie NUMERIC
);

CREATE TABLE Ciudad (
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	nombre TEXT NOT NULL,
	id_pais INTEGER,
	poblacion NUMERIC,
	clasificacion INTEGER,
	CONSTRAINT Ciudad_Pais_FK  FOREIGN KEY (id_pais) REFERENCES pais(id)
);


CREATE TABLE Ciclismo (
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	nombre TEXT NOT NULL,
	pais TEXT
);

CREATE TABLE Patinaje (
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	nombre TEXT NOT NULL,
	pais TEXT
);

--EJEMPLO DATAWAREHOUSE

CREATE TABLE DIM_geografia (
	geografia_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	nombre TEXT NOT NULL,
	tipo INTEGER,
	poblacion NUMERIC,
	codigo_dane TEXT,
	coordenada_x REAL,
	coordenada_y REAL,
	departamento INTEGER,
	pais INTEGER
);

CREATE TABLE DIM_cliente (
	cliente_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	primer_nombre TEXT NOT NULL,
	segundo_nombre TEXT NOT NULL,
	primer_apellido TEXT NOT NULL,
	segundo_apellido TEXT NOT NULL,	
	tipo_documento TEXT,
	numero_documento TEXT, 
	telefono_movil TEXT,
	direccion TEXT,
    geografia_id INTEGER,	
	CONSTRAINT DIM_cliente_DIM_geografia_FK FOREIGN KEY (geografia_id) REFERENCES DIM_geografia(geografia_id)
);

CREATE TABLE DIM_categoria (
	categoria_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	nombre TEXT NOT NULL
);

CREATE TABLE DIM_producto (
	producto_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	nombre TEXT NOT NULL,
	categoria_id INTEGER,
	valor_unitario REAL,
	sku TEXT,
    CONSTRAINT DIM_producto_DIM_categoria_FK FOREIGN KEY (categoria_id) REFERENCES DIM_categoria(categoria_id)
);


--drop table dim_tiempo;
CREATE TABLE DIM_tiempo (
	tiempo_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	fecha TEXT NOT NULL,
	fecha_dd INTEGER,
	fecha_mm INTEGER,
	fecha_yyyy INTEGER
);


CREATE TABLE FACT_venta (
	venta_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	cliente_id INTEGER,
	producto_id INTEGER,
	tiempo_id NUMBER,
	cantidad REAL,
	valor_unitario REAL,
	valor_total REAL,
	transaccion_id TEXT,
	metodo_pago TEXT,
	CONSTRAINT FACT_venta_DIM_cliente_FK FOREIGN KEY (cliente_id) REFERENCES DIM_cliente(cliente_id),
	CONSTRAINT FACT_venta_DIM_producto_FK FOREIGN KEY (producto_id) REFERENCES DIM_producto(producto_id),
	CONSTRAINT FACT_venta_DIM_tiempo_FK FOREIGN KEY (tiempo_id) REFERENCES DIM_tiempo(tiempo_id)
);

