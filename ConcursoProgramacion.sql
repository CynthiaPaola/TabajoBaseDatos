Create database ConcursoProgram

/*USE ConcursoProgram 
GO*/

on primary
(
  name=ConcursoProgram_dat,--nombre logico
  filename= 'C:\Base_Concurso\ConcursoProgram\ConcursoProgram_dat.mdf',--ruta fisica
  size= 5MB,
  maxsize= 10MB,
  filegrowth= 1MB
)
log on
(
   name=ConcursoProgram_log,--nombre logico
   filename='C:\Base_Concurso\ConcursoProgram\ConcursoProgram_log.ldf', --ruta fisica
   size= 3MB,
   maxsize= 5MB,
   filegrowth= 1MB
)
go

Create table Usuarios(
    
	idUsuarios int not null,
	nomCompleto varchar(50) not null,
	sexo char (1) not null,
	telefono varchar (12) not null,
	email varchar(100) not null,
	estatus bit not null,
	tipo varchar (40) not null,
	password varchar(50) not null,
	constraint pk_usuarios primary key (idUsuarios)
)
go

create table Alumnos(
    
	noControl int not null,
	semestre varchar(2) not null,
	carrera varchar (100) not null,
	constraint pk_numControl primary key (noControl)
)
go

create table BancoProblemas(
    
	idBancoProblemas int not null,
	nombre varchar(100) not null,
	puntos float not null,
	tiempMaxEjec time not null,
	descripcion varchar(500) not null
	constraint pk_BancoProblemas primary key (idBancoProblemas)
)
go

create table ProblemasResueltos(
    
	idProblemaRes int not null,
	nomProblemaRes varchar(100) not null,
	duracion time not null,
	puntaje float,
	constraint pk_problemasRes primary key (idProblemaRes)
)
go

create table Carreras 
(
idCarrera int not null,
nombre varchar(100) not null,
siglas varchar(10) not null,
constraint pk_carreras primary key(idCarrera)
)
go

create table Categorias 
(
idCategoria int not null,
nombre varchar(100) not null,
semestreLimite varchar(20) not null,
constraint pk_categorias primary key(idCategoria)
)
go

create table Docentes(
iddocentes int not null,
escolaridad varchar(50) not null,
especialidad varchar(50) not null,
celular varchar(15) not null,
carrera varchar(100) not null,
CONSTRAINT pk_docentes PRIMARY KEY (iddocentes)
)
go

create table Ediciones(
idediciones int not null,
nombre varchar(30) not null,
fecharegistro date not null,
fechaevento date not null,
duracioninicio int not null,
duracionfinal int not null,
CONSTRAINT pk_ediciones PRIMARY KEY (idediciones)
)
go

create table Equipos(
idequipos int not null,
nombre varchar(50) not null,
integrantes int not null,
asesor varchar(50) not null,
categoria varchar(20) not null,
puntos int not null,
cantidadproblemasresueltos int not null,
CONSTRAINT pk_equipos PRIMARY KEY (idequipos)
)
go

/********************
Claves unicas (uq)
********************/
--Tabla de Usuarios
alter table Usuarios add constraint Uq_email unique (email)
go

--Tabla de Alumnos
alter table Alumnos add constraint Uq_noControl unique (noControl)
go

--Tabla de ProblemasResueltos
alter table ProblemasResueltos add constraint Uq_Duracion unique (duracion)
go

--Table de BancoProblemas
alter table BancoProblemas add constraint Uq_Descripcion unique (descripcion)
go

ALTER TABLE Docentes ADD CONSTRAINT UQ_Carrera UNIQUE (carrera)
go
ALTER TABLE Ediciones ADD CONSTRAINT UQ_Nombre UNIQUE (nombre)
go
ALTER TABLE Equipos ADD CONSTRAINT UQ_Categoria UNIQUE (categoria)
go

/**************
Creacion de Fk 
**************/

/**********************
Restricciones de Check
**********************/
--Tabla de Usuarios
alter table Usuarios add constraint chk_Sexo check (sexo in ('F','M'))
go
alter table Usuarios add constraint chk_telefono check (telefono like '[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]')
go
alter table Usuarios add constraint chk_email check (email like '%@%.%')
go
alter table Usuarios add constraint chk_tipo check (tipo in ('Alumnos','Docentes','Asesores'))
go

--Tabla de Alumnos
alter table Alumnos add constraint chk_semestre check (semestre like '[0-9][A-Z]')
go
alter table Alumnos add constraint chk_noControl check (noControl like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
go

--Tabla de ProblemasResueltos
alter table ProblemasResueltos add constraint chk_puntaje check (puntaje<=5)
go

--Table de BancoProblemas
/*alter table BancoProblemas add constraint chk_tiempMaxEjec check 
go*/
alter table BancoProblemas add constraint chk_puntos check (puntos<=5)
go

ALTER TABLE Docentes ADD CONSTRAINT CHK_Telefono_Docente CHECK (telefono LIKE '[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]')
go
ALTER TABLE Ediciones ADD CONSTRAINT CHK_Fecha_Registro CHECK (fecharegistro BETWEEN YEAR(GETDATE()) AND 9999)
go
ALTER TABLE Ediciones ADD CONSTRAINT CHK_Fecha_Evento CHECK(fecharegistro<fechaevento)
go
ALTER TABLE Equipo ADD CONSTRAINT CHK_Integrantes CHECK (integrantes<5)
go
ALTER TABLE Equipo ADD CONSTRAINT CHK_Categoria CHECK (categoria in ('Facil','Medio','Dificil','Experto'))
go

/*********************
Restricciones Default
*********************/
--Tabla de Usuarios
alter table Usuarios add constraint Df_password default 'Hola.123' for password
go
alter table Usuarios add constraint Df_tipo default 'Usuario' for tipo
go

--Tabla de Alumnos
alter table Alumnos add constraint Df_semestre default 1 for semestre
go

--Tabla de ProblemasResueltos
alter table ProblemasResueltos add constraint Df_puntos_ProbRes default 1 for puntaje 
go

--Table de BancoProblemas
alter table BancoProblemas add constraint Df_puntos_BancoProble default 1 for puntos
go


