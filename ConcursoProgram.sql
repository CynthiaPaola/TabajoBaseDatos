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
	idUsuarios int not null,
	semestre varchar(2) not null,
	idCarrera int not null,
	idEquipos int not null
	constraint pk_numControl primary key (noControl)
)
go

alter table Alumnos add idEquipos int not null
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
	idEdiciones int not null,
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
idDocentes int not null,
idCarrera int not null,
escolaridad varchar(50) not null,
especialidad varchar(50) not null,
cedula varchar(15) not null,
carrera varchar(100) not null,
CONSTRAINT pk_docentes PRIMARY KEY (iddocentes)
)
go

create table Ediciones(
idEdiciones int not null,
nombre varchar(30) not null,
fecharegistro date not null,
fechaevento date not null,
duracioninicio time not null,
duracionfinal time not null,
CONSTRAINT pk_ediciones PRIMARY KEY (idediciones)
)
go

create table Equipos(
idEquipos int not null,
idEdiciones int not null,
idCategoria int not null,
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
nombre varchar(50) not null,
globo varchar(10) not null,
idBancoProblemas int not null
CONSTRAINT pk_edicion PRIMARY KEY (idPropuestos)
)
go

<<<<<<< HEAD
alter table Problemaspropuestos add idBancoProblemas int not null
go			 						
=======
/********************
Inserciones de tablas
********************/

/**Tabla Usuarios**/

insert into Usuarios values('1','Juan Rodriguez Camarena','M','351-458-6987','juanro_c@gmail.com','1','Alumnos','fulanitos333')							
insert into usuarios values('2','Ernesto Fernandez Ortiz','M','351-266-6978','erne_fo@outlook.com','1','Docentes','open12')
insert into usuarios values('3','Maria Aguilar Solis','F','351-269-4514','mari_so@gmail.com','1','Alumnos','cuatrocientos')
insert into usuarios values('4','Fernanda Maldonado Juarez','F','351-287-1536','fermal44@gmail.com','1','Asesores','admin48')
insert into usuarios values('5','Francisco Godinez Gavilan','M','351-258-4891','frangg3@outlook.com','0','Docentes','pancho0')
insert into usuarios values('6','Angeles Romero Barriga','F','351-487-2110','angy_rb6@outlook.com','1','Asesores','#caidodelcielo')
insert into usuarios values('7','Luz Elena Alvarez Villa','F','351-569-0234','luz_villa78@gmail.com','0','Alumnos','luzdedia')
insert into usuarios values('8','Antonio Gomez Fernandez','M','351-487-1012','anto_gf17@gmail.com','1','Docentes','hormigas@')
insert into usuarios values('9','Margarita Savala Herrera','F','351-126-4803 ','magy_sh@gmail.com','1','Asesores','everyone')
insert into usuarios values('10','Felipe Valdez Garcia','M','351-647-1248','feli_vg9@gmail.com','0','Alumnos','soyfeli')

select * from Usuarios	

/**Tabla Docentes**/	

insert into docentes values('1','10','Licenciatura','Ingeniero Electrico','120-135-2425','Ingenieria en Electronica')
insert into docentes values('2','88','Doctorado','Licenciado en Mercadotecnia','122-131-2426','Licenciatura en Contador Publico')
insert into docentes values('3','20','Maestria','Ingenieria en Industrias Alimentarias','120-125-2445','Ingenieria en Industrias Alimentarias')
insert into docentes values('4','22','Maestria','Mestro en Sistemas Computacionales','220-125-6894','Ingenieria en Sistemas Computacionales')
insert into docentes values('5','90','Licenciatura','Licenciado Contador Publico ','120-168-2596','Licenciatura en Mercadotecnia ')
insert into docentes values('6','30','Doctorado','Doctor en Administracion','140-458-4785','Ingenieria en Gestion Empresarial')
insert into docentes values('7','80','Maestria','Maestro en Desarrollo de Software','182-459-7894','Licenciatura en Desarrollo de software')
insert into docentes values('8','33','Maestria','Maestro en Gestion Empresarial','130-659-1587','Ingenieria Bioquimica')
insert into docentes values('9','11','Ingeniero','Simulacion','120-135-6568','Mercadotecnia')
insert into docentes values('10','99','Doctorado','Doctor en Ciencias Medicas','120-135-6569','Licenciatura en Ciencias Medicas')	

select * from Docentes

/**Tabla Carreras**/

insert into carreras values('10','Ingenieria en Electronica ','IE')
insert into carreras values('11','Licenciatura en Contador Publico','LCP')
insert into carreras values('20','Ingenieria en Industrias Alimentarias','IIA')
insert into carreras values('22','Ingenieria en Sistemas Computacionales','ISC')
insert into carreras values('30','Ingenieria Bioquimica ','IB')
insert into carreras values('33','Ingenieria en Gestion Empresarial ','IGE')
insert into carreras values('80','Licenciatura en Desarrollo de software ','LDS')
insert into carreras values('88','Ingenieria Industrial','II')
insert into carreras values('90','Licenciatura en Mercadotecnia ','LM')
insert into carreras values('99','Licenciatura en Ciencias Medicas','LCM')

select *from Carreras

/**Tabla Alumnos**/

insert into alumnos values('20010015','1','4A','10')
insert into alumnos values('17216512','3','7B','11')
insert into alumnos values('17236313','2','2A','20')
insert into alumnos values('17215678','7','5A','22')
insert into alumnos values('17215648','10','7B','30')
insert into alumnos values('17215473','5','1B','33')
insert into alumnos values('17216515','3','3A','80')
insert into alumnos values('17216146','4','4A','88')
insert into alumnos values('17216511','6','6A','90')
insert into alumnos values('17214751','8','8B','99')

select * from Alumnos

--Insercion tabla Problemas propuestos
insert into Problemaspropuestos values(1,'Escriba el abecedario','Verde') 						
insert into Problemaspropuestos values(2,'Tabla mutiplicar','Amarillo') 						
insert into Problemaspropuestos values(3,'Escriba tu nombre tecla escriba','Rojo') 						
insert into Problemaspropuestos values(4,'Sacar numero piesa el jugador','Negro') 						
insert into Problemaspropuestos values(5,'Sacar numero primos','Verde') 						
insert into Problemaspropuestos values(6,'Hacer calendario ','Amarillo') 						
insert into Problemaspropuestos values(7,'Calcular area de triangulo','Rojo') 						
insert into Problemaspropuestos values(8,'Hacer que diga hora','Negro') 						
insert into Problemaspropuestos values(9,'Hacer una calculadora','Verde') 						
insert into Problemaspropuestos values(10,'Tener control de dias','Amarillo')

--Inserciones tabla Categoria
insert into Categorias values(1,'Pigüinos explocivo','Semestre 5')					
insert into Categorias values(2,'Black star','Semestre 2')					
insert into Categorias values(3,'Los yhiii','Semestre 5')					
insert into Categorias values(4,'Los R','Semestre 2')					
insert into Categorias values(5,'Super chica','Semestre 5')					
insert into Categorias values(6,'Marselo','Semestre 4')					
insert into Categorias values(7,'Los 3 chiflados','Semestre 2')					
insert into Categorias values(8,'Masha y oso','Semestre 4')					
insert into Categorias values(9,'Taquitos','Semestre 2')					
insert into Categorias values(10,'Papasitos','Semestre 4')					 						
>>>>>>> 042aa0b8d8a973ec7548934174d54d8c1e969218

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
ALTER TABLE Docentes ADD CONSTRAINT UQ_Carrera UNIQUE (carrera)
go

--Table de Ediciones
ALTER TABLE Ediciones ADD CONSTRAINT UQ_Nombre UNIQUE (nombre)
go

--Table de Equipos
ALTER TABLE Equipos ADD CONSTRAINT UQ_nombreEq UNIQUE (nombre)
go

--Table de Problemaspropuestos
ALTER TABLE Problemaspropuestos ADD CONSTRAINT UQ_Globo UNIQUE (globo)
go

alter table Problemaspropuestos drop constraint UQ_Globo
go

/**************
Creacion de Fk 
**************/
--Tabla de Alumnos
alter table Alumnos add constraint fk_usuario_alumnos foreign key (idUsuarios) references Usuarios (idUsuarios)
go
alter table Alumnos add constraint fk_carrera_alumnos foreign key (idCarrera) references Carreras(idCarrera)
go
alter table Alumnos add constraint FK_equipos_alumnos foreign key (idEquipos) references Equipos(idEquipos)
go

--Tabla de ProblemasResueltos
alter table ProblemasResueltos add constraint fk_propuestos_ProblemaRes foreign key (idPropuestos) references Problemaspropuestos (idPropuestos)
go
alter table ProblemasResueltos add constraint fk_ediciones_ProblemaRes foreign key (idEdiciones) references Ediciones (idEdiciones)
go 

--Table de Docentes
ALTER TABLE Docentes ADD CONSTRAINT FK_Carreras_Docentes FOREIGN KEY (idCarrera) REFERENCES Carreras (idCarrera)
go

--Table de Equipos
ALTER TABLE Equipos ADD CONSTRAINT FK_Categorias_Equipos FOREIGN KEY (idCategoria) REFERENCES Categorias (idCategoria)
go
ALTER TABLE Equipos ADD CONSTRAINT FK_ediciones_Equipos FOREIGN KEY (idEdiciones) REFERENCES Ediciones (idEdiciones)
go

--Table de ProblemasPropuestos
alter table Problemaspropuestos add constraint Fk_bancoPr_ProblemasPro foreign key (idBancoProblemas) References BancoProblemas (idBancoProblemas)
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
/*alter table BancoProblemas add constraint chk_tiempMaxEjec check (tiempMaxEjec<=5)
go*/
alter table BancoProblemas add constraint chk_puntos check (puntos<=5)
go

--Table de Docentes
ALTER TABLE Docentes ADD CONSTRAINT CHK_Cedula_Docente CHECK (cedula LIKE '[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]')
go

--Table de Ediciones
/*ALTER TABLE Ediciones ADD CONSTRAINT CHK_Fecha_Registro CHECK (fecharegistro LIKE '[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9]')
go
alter table Ediciones drop constraint CHK_Fecha_Registro*/
ALTER TABLE Ediciones ADD CONSTRAINT CHK_Fecha_Evento CHECK(fecharegistro<fechaevento)
go

--Table de Equipo
ALTER TABLE Equipos ADD CONSTRAINT CHK_nocontrol1 CHECK (nocontrol1 LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
go
ALTER TABLE Equipos ADD CONSTRAINT CHK_nocontrol2 CHECK (nocontrol2 LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
go
ALTER TABLE Equipos ADD CONSTRAINT CHK_nocontrol3 CHECK (nocontrol3 LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
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
/*ALTER TABLE Ediciones ADD CONSTRAINT DF*/

--Table de Equipos
ALTER TABLE Equipos ADD CONSTRAINT DF_puntos_Equipos default 1 for puntos
go

--Table de Problemaspropuestos
ALTER TABLE Problemaspropuestos ADD CONSTRAINT DF_globo_Edicion default 'Blanco' for globo
go


drop database ConcursoProgram