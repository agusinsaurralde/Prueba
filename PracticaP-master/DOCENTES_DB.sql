CREATE TABLE USUARIOS (
	nombreUsuario VARCHAR ( 100 ) UNIQUE NOT NULL,
	password VARCHAR ( 100 ) NOT NULL,
	nombre VARCHAR ( 100 ) NULL,
	apellido VARCHAR ( 100 ) NULL,
	email VARCHAR ( 100 ) UNIQUE  NULL,
	dni VARCHAR ( 10 ) UNIQUE NOT NULL,
	tipoDni VARCHAR ( 50 ) NOT NULL,
	PRIMARY KEY(NombreUsuario,Password)
);

CREATE TABLE DOCENTES (
	dni VARCHAR ( 10 ) UNIQUE NOT NULL,
	tipoDni VARCHAR ( 50 ) NOT NULL,
	nombre VARCHAR ( 100 ) NOT NULL,
	apellido VARCHAR ( 100 ) NOT NULL,
	email VARCHAR ( 100 ) UNIQUE NOT NULL,
	telefono VARCHAR ( 20 ) UNIQUE NOT NULL,
	direccion VARCHAR ( 100 ) NOT NULL,
	fechaNacimiento DATE NULL CHECK (fechaNacimiento > '1900-01-01'),
	fotoPerfil VARCHAR ( 300 ) NULL,
	curriculum VARCHAR ( 300 ) NULL,
	fechaAlta DATE NOT NULL DEFAULT CURRENT_DATE,
	fechaBaja DATE NULL CHECK (fechaBaja >= fechaAlta),
	Estado boolean not null,
	motivobaja VARCHAR (300) NULL,
	PRIMARY KEY (dni)
);

insert into USUARIOS 
values ('Admin','12345', 'Admin', 'istrador', 'Admin@mail.com', '12345678', 'Documento de Identidad')
