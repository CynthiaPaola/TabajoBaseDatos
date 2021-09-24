Create database ConcursoProgram

/*USE ConcursoProgram 
GO*/

on primary
(
  name=ConcursoProgram_dat,--nombre logico
  filename= 'D:\Base_Concurso\ConcursoProgram\ConcursoProgram_dat.mdf',--ruta fisica
  size= 5MB,
  maxsize= 10MB,
  filegrowth= 1MB
)
log on
(
   name=ConcursoProgram_log,--nombre logico
   filename='D:\Base_Concurso\ConcursoProgram\ConcursoProgram_log.ldf', --ruta fisica
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
    
	numControl int not null,
	semestre varchar(2) not null,
	carrera varchar (100) not null,
	constraint pk_numControl primary key (numControl)
)
go

create table ProblemasResueltos(
    
	idProblemaRes int not null,
	duracion time not null,
	puntaje float,
	constraint pk_problemasRes primary key (idProblemaRes)
)
go


