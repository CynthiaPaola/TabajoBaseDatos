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
	idProblemaRes int not null,
	idUsuarios int not null,
	semestre varchar(2) not null,
	idCarrera int not null,
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
	idPropuestos int not null,
	idEquipos int not null,
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
idPropuestos int not null,
constraint pk_categorias primary key(idCategoria)
)
go

create table Docentes(
idDocentes int not null,
idCarrera int not null,
noControl int not null,
idUsuarios int not null,
escolaridad varchar(50) not null,
especialidad varchar(50) not null,
cedula varchar(15) not null,
CONSTRAINT pk_docentes PRIMARY KEY (iddocentes)
)
go

create table Ediciones(
idEdiciones int not null,
idPropuestos  int not null,
idProblemaRes int not null,
nombre varchar(100) not null,
fecharegistro date not null,
fechaevento date not null,
CONSTRAINT pk_ediciones PRIMARY KEY (idediciones)
)
go

create table Equipos(
idEquipos int not null,
idCategoria int not null,
idPropuestos int not null,
idProblemaRes int not null,
idDocentes int not null,
nombre varchar(50) not null,
nocontrol1 int not null,
nocontrol2 int not null,
nocontrol3 int not null,
puntos int not null,
CONSTRAINT pk_equipos PRIMARY KEY (idequipos)
)
go

create table Problemaspropuestos(
idPropuestos int not null,
idEdiciones int not null,
idCategoria int not null,
idBancoProblemas int not null,
globo varchar(10) not null,
CONSTRAINT pk_edicion PRIMARY KEY (idedicion)
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

--Table de Docentes
ALTER TABLE Docentes ADD CONSTRAINT UQ_Nocontrol UNIQUE (noControl)
go

--Table de Ediciones
ALTER TABLE Ediciones ADD CONSTRAINT UQ_Nombre UNIQUE (nombre)
go

--Table de Equipos
ALTER TABLE Equipos ADD CONSTRAINT UQ_Nombre UNIQUE (nombre)
go

--Table de Problemaspropuestos
ALTER TABLE Edicion ADD CONSTRAINT UQ_Globo UNIQUE (globo)
go

/**************
Creacion de Fk 
**************/
--Tabla de Alumnos
alter table Alumnos add constraint fk_usuario_alumnos foreign key (idUsuarios) references Usuarios (idUsuarios)
go
alter table Alumnos add constraint fk_problemaRes_alumnos foreign key (idProblemaRes) references ProblemasResueltos (idProblemaRes)
go
alter table Alumnos add constraint fk_carrera_alumnos foreign key (idCarrera) references Carreras(idCarrera)
go

--Tabla de ProblemasResueltos
alter table ProblemasResueltos add constraint fk_propuestos_ProblemaRes foreign key (idPropuestos) references Problemaspropuestos (idPropuestos)
go
alter table ProblemasResueltos add constraint fk_equipo_ProblemaRes foreign key (idEquipos) references Equipos (idEquipos)
go 

--Table de Docentes
ALTER TABLE Docentes ADD CONSTRAINT FK_Carreras_Docentes FOREIGN KEY (idCarrera) REFERENCES Carreras(idCarrera)
go
ALTER TABLE Docentes ADD CONSTRAINT FK_Usuarios_Docentes FOREIGN KEY (idUsuarios) REFERENCES Usuarios(idUsuarios)
go
ALTER TABLE Docentes ADD CONSTRAINT FK_Alumnos_Docentes FOREIGN KEY (noControl) REFERENCES  Alumnos(noControl)
go

--Table de Ediciones
ALTER TABLE Ediciones ADD CONSTRAINT FK_Problemaspropuestos_Ediciones FOREIGN KEY (idPropuestos) REFERENCES Problemaspropuestos(idPropuestos)
go
ALTER TABLE Ediciones ADD CONSTRAINT FK_ProblemasResueltos_Ediciones FOREIGN KEY (idProblemaRes) REFERENCES ProblemasResueltos(idProblemaRes)
go

--Table de Equipos
ALTER TABLE Equipos ADD CONSTRAINT FK_ProblemasResueltos_Equipos FOREIGN KEY (idProblemaRes) REFERENCES ProblemasResueltos(idProblemaRes)
go
ALTER TABLE Equipos ADD CONSTRAINT FK_Problemaspropuestos_Equipos FOREIGN KEY (idProblemaRes) REFERENCES Problemaspropuestos(idPropuestos)
go
ALTER TABLE Equipos ADD CONSTRAINT FK_Docentes_Equipos FOREIGN KEY (idDocentes) REFERENCES Docentes(idDocentes) 
go
ALTER TABLE Equipos ADD CONSTRAINT FK_ Categorias_Equipos FOREIGN KEY (idCategoria) REFERENCES Categorias(idCategoria)
go

--Table de Problemaspropuestos
ALTER TABLE Problemaspropuestos ADD CONSTRAINT FK_Categorias_Problemaspropuestos FOREIGN KEY (idCategoria) REFERENCES Categorias(idCategoria)
go
ALTER TABLE Problemaspropuestos ADD CONSTRAINT FK_BancoProblemas_Problemaspropuestos FOREIGN KEY (idBancoProblemas) REFERENCES BancoProblemas(idBancoProblemas)
go
ALTER TABLE Problemaspropuestos ADD CONSTRAINT FK_Ediciones_Problemaspropuestos FOREIGN KEY (idEdiciones) REFERENCES Ediciones(idEdiciones)
go

--Table Categorias
alter table Categorias add constraint fk_Problenaspropuestos_Categorias foreign key (idProuestos) references ProblemasPropuestos(idPropuestos)
go

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
alter table BancoProblemas add constraint chk_tiempMaxEjec check (tiempMaxEjec<=5)
go
alter table BancoProblemas add constraint chk_puntos check (puntos<=5)
go

--Table de Docentes
ALTER TABLE Docentes ADD CONSTRAINT CHK_Telefono_Docente CHECK (telefono LIKE '[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]')
go

--Table de Ediciones
ALTER TABLE Ediciones ADD CONSTRAINT CHK_Fecha_Registro CHECK (fecharegistro BETWEEN YEAR(GETDATE()) AND 9999)
go
ALTER TABLE Ediciones ADD CONSTRAINT CHK_Fecha_Evento CHECK(fecharegistro<fechaevento)
go

--Table de Equipo
ALTER TABLE Equipo ADD CONSTRAINT CHK_Nombre CHECK (nombre LIKE '%%%%%%%%%%%%%%%%%%%%%%')
go

--Table de Problemaspropuestos
ALTER TABLE Problemaspropuestos ADD CONSTRAINT CHK_Globo CHECK (globo in ('Verde','Amarillo','Rojo','Negro'))
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

--Table de Docentes
ALTER TABLE Docentes ADD CONSTRAINT DF_cedula_Docente default 'XXX-XXX-XXXX' for cedula
go

--Table de Ediciones
ALTER TABLE Ediciones ADD CONSTRAINT DF_fecharegistro default getdate() for fecharegistro
go

--Table de Equipos
ALTER TABLE Equipos ADD CONSTRAINT DF_puntos_Equipos default 1 for puntos
go

--Table de ProbblemasPropuestos
ALTER TABLE Problemaspropuestos ADD CONSTRAINT DF_globo default 'Blanco' for globo
go


