create table fac_clientes (
	cli_id INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
	cli_rnc_cedula INT UNIQUE NOT NULL,
	cli_nombre VARCHAR(80) NOT NULL,
	cli_email VARCHAR(150) UNIQUE,
	cli_direccion VARCHAR(200),
	cli_telefono BIGINT UNIQUE,
	cli_celular BIGINT UNIQUE,
	cli_activo BIT DEFAULT 1,
	cli_fecha_creacion DATE DEFAULT GETDATE(),
	cli_fecha_actualizacion DATE
);

create table fac_ncf (
	ncf_id INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
	ncf_tipo TINYINT UNIQUE NOT NULL,
	ncf_secuencia BIGINT UNIQUE NOT NULL,
	ncf_serie CHAR(1) UNIQUE,
	ncf_activo BIT DEFAULT 1,
	ncf_fecha_creacion DATE DEFAULT GETDATE(),
	ncf_fecha_actualizacion DATE
);

create table fac_tipo_productos (
	tpr_id INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
	tpr_descripcion VARCHAR(150) UNIQUE NOT NULL,
	tpr_activo BIT DEFAULT 1,
	tpr_fecha_creacion DATE DEFAULT GETDATE(),
	tpr_fecha_actualizacion DATE
);

create table fac_tipo_pagos (
	tpa_id INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
	tpa_descripcion VARCHAR(150) UNIQUE NOT NULL,
	tpa_activo BIT DEFAULT 1,
	tpa_fecha_creacion DATE DEFAULT GETDATE(),
	tpa_fecha_actualizacion DATE
);

create table fac_productos (
	pro_id INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
	tpr_id INT UNIQUE NOT NULL,
	pro_costo BIGINT UNIQUE NOT NULL,
	pro_activo BIT DEFAULT 1,
	pro_fecha_creacion DATE DEFAULT GETDATE(),
	pro_fecha_actualizacion DATE

	FOREIGN KEY (tpr_id) REFERENCES  fac_tipo_productos(tpr_id)
);

create table facturas (
	fac_numero INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
	ncf_id INT UNIQUE NOT NULL,
	cli_id INT UNIQUE NOT NULL,
	tpa_id INT UNIQUE NOT NULL,
	fac_costo_subtotal FLOAT NOT NULL,
	fac_costo_total FLOAT NOT NULL,
	fac_descripcion VARCHAR(500),
	fac_activo BIT DEFAULT 1,
	fac_fecha_creacion DATE DEFAULT GETDATE(),
	fac_fecha_actualizacion DATE

	FOREIGN KEY (ncf_id) REFERENCES  fac_ncf(ncf_id),
	FOREIGN KEY (tpa_id) REFERENCES  fac_tipo_pagos(tpa_id),
	FOREIGN KEY (cli_id) REFERENCES  fac_clientes(cli_id)
);

create table factura_detalle (
	fac_numero INT,
	pro_id INT,
	tpa_id INT UNIQUE NOT NULL,
	fde_catidad INT DEFAULT 1,
	fde_costo_unitario FLOAT NOT NULL,
	fde_costo_cantidad FLOAT NOT NULL,
	fde_ITBIS FLOAT NOT NULL,
	fde_descuento FLOAT DEFAULT 1.0

	PRIMARY KEY (fac_numero, pro_id),
	FOREIGN KEY (fac_numero) REFERENCES  facturas(fac_numero),
	FOREIGN KEY (pro_id) REFERENCES  fac_productos(pro_id)
);