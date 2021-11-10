/********************
Selecccion de tablas 
*********************/
select * from Usuarios
select * from Docentes
select * from Alumnos
select * from Carreras
select * from Ediciones
select * from Equipos
select * from Categorias
select * from Problemaspropuestos
select * from ProblemasResueltos
select * from BancoProblemas

/********************
Inserciones de tablas
********************/
--Insercion de la tabla de usuarios
insert into usuarios values(1,'Juan Rodriguez Camarena','M','351-458-6987','juanro_c@gmail.com',1,'Alumnos','fulanitos333')						
insert into usuarios values(2,'Ernesto Fernandez Ortiz','M','351-266-6978','erne_fo@outlook.com',1,'Docentes','open12')						
insert into usuarios values(3,'Maria Aguilar Solis','F','351-269-4514','mari_so@gmail.com',1,'Alumnos','cuatrocientos')						
insert into usuarios values(4,'Fernanda Maldonado Juarez','F','351-287-1536','fermal44@gmail.com',1,'Asesores','admin48')						
insert into usuarios values(5,'Francisco Godinez Gavilan','M','351-258-4891','frangg3@outlook.com',0,'Docentes','pancho0')						
insert into usuarios values(6,'Angeles Romero Barriga','F','351-487-2110','angy_rb6@outlook.com',1,'Asesores','#caidodelcielo')						
insert into usuarios values(7,'Luz Elena Alvarez Villa','F','351-569-0234','luz_villa78@gmail.com',0,'Alumnos','luzdedia')						
insert into usuarios values(8,'Antonio Gomez Fernandez','M','351-487-1012','anto_gf17@gmail.com',1,'Docentes','hormigas@')						
insert into usuarios values(9,'Margarita Savala Herrera','F','351-126-4803 ','magy_sh@gmail.com',1,'Asesores','everyone')						
insert into usuarios values(10,'Felipe Valdez Garcia','M','351-647-1248','feli_vg9@gmail.com',0,'Alumnos','soyfeli')

--insercion de la tabla de Docentes
insert into Docentes values(1,10,'Licenciatura','Ingeniero Electrico','120-135-2425','Ingenieria en Electronica')
insert into Docentes values(2,88,'Doctorado','Licenciado en Mercadotecnia','122-131-2426','Licenciatura en Contador Publico')
insert into Docentes values(3,20,'Maestria','Ingenieria en Industrias Alimentarias','120-125-2445','Ingenieria en Industrias Alimentarias')
insert into Docentes values(4,22,'Maestria','Mestro en Sistemas Computacionales','220-125-6894','Ingenieria en Sistemas Computacionales')
insert into Docentes values(5,90,'Licenciatura','Licenciado Contador Publico ','120-168-2596','Licenciatura en Mercadotecnia ')
insert into Docentes values(6,30,'Doctorado','Doctor en Administracion','140-458-4785','Ingenieria en Gestion Empresarial')
insert into Docentes values(7,80,'Maestria','Maestro en Desarrollo de Software','182-459-7894','Licenciatura en Desarrollo de software')
insert into Docentes values(8,33,'Maestria','Maestro en Gestion Empresarial','130-659-1587','Ingenieria Bioquimica')
insert into Docentes values(9,11,'Ingeniero','Simulacion','120-135-6568','Mercadotecnia')
insert into Docentes values(10,99,'Doctorado','Doctor en Ciencias Medicas','120-135-6569','Licenciatura en Ciencias Medicas')

--insercion de la tabla de Alumnos 
insert into Alumnos values(20010015,1,'4A',10,1)
insert into Alumnos values(17216512,3,'7B',11,2)
insert into Alumnos values(17236313,2,'2A',20,3)
insert into Alumnos values(17215678,7,'5A',22,4)
insert into Alumnos values(17215648,10,'7B',30,5)
insert into Alumnos values(17215473,5,'1B',33,6)
insert into Alumnos values(17216515,3,'3A',80,7)
insert into Alumnos values(17216146,4,'4A',88,8)
insert into Alumnos values(17216511,6,'6A',90,9)
insert into Alumnos values(17214751,8,'8B',99,10)

--inserciones de la tabla de Carreras
insert into Carreras values(10,'Ingenieria en Electronica ','IE')
insert into Carreras values(11,'Licenciatura en Contador Publico','LCP')
insert into Carreras values(20,'Ingenieria en Industrias Alimentarias','IIA')
insert into Carreras values(22,'Ingenieria en Sistemas Computacionales','ISC')
insert into Carreras values(30,'Ingenieria Bioquimica ','IB')
insert into Carreras values(33,'Ingenieria en Gestion Empresarial ','IGE')
insert into Carreras values(80,'Licenciatura en Desarrollo de software ','LDS')
insert into Carreras values(88,'Ingenieria Industrial','II')
insert into Carreras values(90,'Licenciatura en Mercadotecnia ','LM')
insert into Carreras values(99,'Licenciatura en Ciencias Medicas','LCM')

--Insercion de la tabla de Ediciones
insert into Ediciones values(1,'Primer Edicion','21/10/2021','22/11/2021','8:00','12:00')
insert into Ediciones values(2,'Segunda Edicion','20/11/2021','03/01/2022','8:00','12:00')
insert into Ediciones values(3,'Tercera Edicion','22/11/2021','10/01/2022','8:00','12:00')
insert into Ediciones values(4,'Cuarta Edicion','21/10/2021','22/11/2021','8:00','12:00')
insert into Ediciones values(5,'Quinta Edicion','22/11/2021','10/01/2022','8:00','12:00')
insert into Ediciones values(6,'Sexta Edicion','21/10/2021','22/11/2021','8:00','12:00')
insert into Ediciones values(7,'Septima Edicion','20/11/2021','03/01/2022','8:00','12:00')
insert into Ediciones values(8,'Octava Edicion','21/10/2021','22/11/2021','8:00','12:00')
insert into Ediciones values(9,'Novena Edicion','20/11/2021','03/01/2022','8:00','12:00')
insert into Ediciones values(10,'Decima Edicion','21/10/2021','22/11/2021','8:00','12:00')

--Insercion de la tabla de Equipos
insert into Equipos values(1,1,1,'Los Pugs',17010315,10710348,17010650,8)
insert into Equipos values(2,2,2,'Vatos Locos',17010417,17010401,17010418,5)
insert into Equipos values(3,3,3,'Los Limoneros',17010791,17010987,17010120,6)
insert into Equipos values(4,4,4,'Los Toros',17010780,17010914,17010201,10)
insert into Equipos values(5,5,5,'Desequene',17010344,16010970,16010870,7)
insert into Equipos values(6,6,6,'Eagle warrior',17010254,16010411,16010470,10)
insert into Equipos values(7,7,7,'Los Marianos',17012544,17010814,17010021,5)
insert into Equipos values(8,8,8,'Los morillos',17062352,17010421,17010022,10)
insert into Equipos values(9,9,9,'Mis reyes ',17065878,17010780,17010316,8)
insert into Equipos values(10,10,10,'Los cholos',17010356,17010901,17010317,7)

--Inserciones tabla Categoria
select * from Categorias
insert into Categorias values(1,'Piguinos explocivo','Semestre 5')					
insert into Categorias values(2,'Black star','Semestre 2')					
insert into Categorias values(3,'Los yhiii','Semestre 5')					
insert into Categorias values(4,'Los R','Semestre 2')					
insert into Categorias values(5,'Super chica','Semestre 5')					
insert into Categorias values(6,'Marselo','Semestre 4')					
insert into Categorias values(7,'Los 3 chiflados','Semestre 2')					
insert into Categorias values(8,'Masha y oso','Semestre 4')					
insert into Categorias values(9,'Taquitos','Semestre 2')					
insert into Categorias values(10,'Papasitos','Semestre 4')	
					
--Insercion tabla Problemas propuestos
insert into Problemaspropuestos values(1,'Escriba el abecedario','Verde',1)
insert into Problemaspropuestos values(2,'Tabla mutiplicar','Amarillo',2)
insert into Problemaspropuestos values(3,'Escriba su nombre con las teclas ','Rojo',3)
insert into Problemaspropuestos values(4,'Sacar numero piesa el jugador','Negro',4)
insert into Problemaspropuestos values(5,'Sacar numero primos','Verde',5)
insert into Problemaspropuestos values(6,'Hacer calendario ','Amarillo',6)
insert into Problemaspropuestos values(7,'Calcular area de triangulo','Rojo',7)
insert into Problemaspropuestos values(8,'Hacer un reloj hora ','Negro',8)
insert into Problemaspropuestos values(9,'Realizar una calculadora','Verde',9)
insert into Problemaspropuestos values(10,'Realizar las operaciones basicas','Amarillo',10)						

--Inserciones de la tabla Problemas Resueltos
insert into ProblemasResueltos values(1,1,1,'22:56:59.0000000',1)	
insert into ProblemasResueltos values(2,2,2,'21:56:59.0000000',5)	
insert into ProblemasResueltos values(3,3,3,'22:55:59.0000001',5)	
insert into ProblemasResueltos values(4,4,4,'22:56:50.0000002',5)	
insert into ProblemasResueltos values(5,5,5,'22:54:29.0000003',5)	
insert into ProblemasResueltos values(6,6,6,'21:56:59.0000004',5)	
insert into ProblemasResueltos values(7,7,7,'21:56:59.0000005',5)	
insert into ProblemasResueltos values(8,8,8,'20:50:26.0000000',5)	
insert into ProblemasResueltos values(9,9,9,'20:49:26.0000001',5)	
insert into ProblemasResueltos values(10,10,10,'22:49:26.0000002',5)

--inserciones de la tabla de BancoProblemas
insert into BancoProblemas values(1,'Escriba el abecedario',5,'04:00:00.0000000','el problema  a es el avecedario de la a hasta la z')
insert into BancoProblemas values(2,'Tabla mutiplicar',5,'03:00:00.0000000','el usuario va a pedir un numero del usuario que quiere que imprima')
insert into BancoProblemas values(3,'Escriba su nombre con las teclas ',5,'04:00:00.0000000','Si el usuario escriba la letra e imprime su nombre varias veces con la letra pida')
insert into BancoProblemas values(4,'Sacar numero piesa el jugador',5,'03:00:00.0000000','Hacer un juego de un rango 1 a 10 pregunte que numero piesa el usuario')
insert into BancoProblemas values(5,'Sacar numero primos',5,'04:00:00.0000000','realizar una lista que de todos los numeros primos del 2 hasta el 100')
insert into BancoProblemas values(6,'Hacer calendario ',5,'04:00:00.0000000','hacer un calendario azteca')
insert into BancoProblemas values(7,'Calcular area de triangulo',5,'04:00:00.0000000','realizar un programa que calcule el area del triangulo con los valores que le asigne el usuario')
insert into BancoProblemas values(8,'Hacer un reloj hora ',5,'04:00:00.0000000','hacer un programa que te diga la hora')
insert into BancoProblemas values(9,'Realizar una calculadora',5,'03:00:00.0000000','realizar una calculadora en java')
insert into BancoProblemas values(10,'Realizar las operaciones basicas',5,'04:00:00.0000000','realiza un programa que resuleva operaciones basicas')	


/*****************************
Inserciones de Actualizaciones
******************************/
/*
  Se realizo un cambio en los nombres de las categorias ya que al registrarse se pusieron los nombres incorrectos por lo cual se actualizo este apartado
  con los siguientes campos: Facil, Media o dificil
*/
update Categorias set nombre='Dificil' where idCategoria=1
update Categorias set nombre='Media' where idCategoria=2
update Categorias set nombre='Facil' where idCategoria=3
update Categorias set nombre='Media' where idCategoria=4
update Categorias set nombre='Facil' where idCategoria=5

--  Actualizar Todos los alumnos que tengan algun semestre en 3A reemplzandolo por un 4A
 update Alumnos set semestre='4A' where semestre='3A'

-- El equipo con el id 2 quiere realizar un cambio de nombre ya que el actual no les gusto
update Equipos set nombre='Los R' where idEquipos=2

-- Algunos problemas debe cambiar de color de globo por su dificulta los que cambiarian serian los problemas con los numeros 7 y 4 con el color amarillo
update Problemaspropuestos set globo='Amarillo' where idPropuestos in (7,4)

-- Algunos usuarios se encuentran en un estatus de inactivo se tendra que cambiar a activo el cual tendremos representado por un 1 para activos y un 0 para inactivos
update Usuarios set estatus=1 where idUsuarios in (5,7,10)

/**********************
Inserciones de Delete
***********************/
-- eliminacion de todos los alumnos que ballan en 4A
delete Alumnos where semestre='4A'

-- Se desea eliminar a un docente que su cedula esta erronea 
delete from Docentes where cedula='120-125-2445'

-- Se desea eliminar la duracion del primer equipo ya que se equivocaron con la hora
delete from ProblemasResueltos where duracion='22:56:59.0000000'

--

--Se desea eliminar el id de problemas resuelto ya que la informacion no es la correcta
delete from ProblemasResueltos where idProblemaRes=5


/*
select * from Docentes
drop database ConcursoProgram
go


 alter table Ediciones drop constraint CHK_Fecha_Registro
delete Problemaspropuestos
*/
