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
insert into Docentes values(2,90,'Doctorado','Licenciado en Mercadotecnia','122-131-2426','Licenciatura en Mercadotecnia')
insert into Docentes values(3,20,'Maestria','Ingenieria en Industrias Alimentarias','120-125-2445','Ingenieria en Industrias Alimentarias')
insert into Docentes values(4,22,'Maestria','Maestro en Sistemas Computacionales','220-125-6894','Ingenieria en Sistemas Computacionales')
insert into Docentes values(5,11,'Licenciatura','Licenciado Contador Publico ','120-168-2596','Licenciatura en Contador Publico')
insert into Docentes values(6,33,'Doctorado','Doctor en Administracion','140-458-4785','Ingenieria en Gestion Empresarial')
insert into Docentes values(7,80,'Maestria','Maestro en Desarrollo de Software','182-459-7894','Licenciatura en Desarrollo de software')
insert into Docentes values(8,30,'Maestria','Maestro en Bioquimico','130-659-1587','Ingenieria Bioquimica')
insert into Docentes values(9,88,'Ingeniero','Simulacion','120-135-6568','Ingenieria Industrial')
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
insert into BancoProblemas values(6,'Hacer calendario',5,'04:00:00.0000000','hacer un calendario azteca')
insert into BancoProblemas values(7,'Calcular area de triangulo',5,'04:00:00.0000000','realizar un programa que calcule el area del triangulo con los valores que le asigne el usuario')
insert into BancoProblemas values(8,'Hacer un reloj hora ',5,'04:00:00.0000000','hacer un programa que te diga la hora')
insert into BancoProblemas values(9,'Realizar una calculadora',5,'03:00:00.0000000','realizar una calculadora en java')
insert into BancoProblemas values(10,'Realizar las operaciones basicas',5,'04:00:00.0000000','realiza un programa que resuleva operaciones basicas')	


/*****************************
Creacion de Actualizaciones
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
update Categorias set nombre='Media' where idCategoria=6
update Categorias set nombre='Facil' where idCategoria=7
update Categorias set nombre='Dificil' where idCategoria=8
update Categorias set nombre='Facil' where idCategoria=9
update Categorias set nombre='Dificil' where idCategoria=10

--  Actualizar Todos los alumnos que tengan algun semestre en 3A reemplzandolo por un 4A
 update Alumnos set semestre='4A' where semestre='3A'

-- El equipo con el id 2 quiere realizar un cambio de nombre ya que el actual no les gusto
update Equipos set nombre='Los R' where idEquipos=2

-- Algunos problemas debe cambiar de color de globo por su dificulta los que cambiarian serian los problemas con los numeros 7 y 4 con el color amarillo
update Problemaspropuestos set globo='Amarillo' where idPropuestos in (7,4)

-- Algunos usuarios se encuentran en un estatus de inactivo se tendra que cambiar a activo el cual tendremos representado por un 1 para activos y un 0 para inactivos
update Usuarios set estatus=1 where idUsuarios in (5,7,10)

/**********************
Creacion de Delete
***********************/
-- eliminacion de todos los alumnos que ballan en 4A
delete Alumnos where semestre='4A'

-- Se desea eliminar a un docente que su cedula esta erronea 
delete from Docentes where cedula='120-125-2445'

-- Se desea eliminar la duracion del primer equipo ya que se equivocaron con la hora
delete from ProblemasResueltos where duracion='22:56:59.0000000'

-- Eliminacion de un registro de la tabla Equipos, ya que este equipo se dio de baja del concurso
delete from Equipos where nombre='Los Marianos'

--Se desea eliminar el id de problemas resuelto ya que la informacion no es la correcta
delete from ProblemasResueltos where idProblemaRes=5

/****************************************
Creacion de consultas y subConsultas Join 
*****************************************/
--subconsultas de Cynthia
--1.-consulta para ver el nombre, los numeros de control y los puntos de los participantes de la categoria "Dificil"
select nombre, nocontrol1, nocontrol2, nocontrol3, puntos from Equipos
where idCategoria=(select idCategoria from Categorias where nombre='Dificil')

--2.- consulta para ver el numero de control y semestre de los alumnos que esten inscritos de la carrera de "Ingenieria bioquimica"
select noControl,semestre from Alumnos
where idCarrera=(select idCarrera from Carreras where nombre='Ingenieria Bioquimica')

--3.- consulta para ver el nombre de la categoria en la que esta el equipo los Desequene
select nombre from Categorias
where idCategoria=(select idEquipos from Equipos where nombre='Desequene')

--4.- consulta para ver el nombre y el globo de los puntajes con 1
select nombre, globo from Problemaspropuestos
where idPropuestos=(select idProblemaRes from ProblemasResueltos where puntaje='1')

--5.- consulta para ver la escolaridad, la especialidad y la cedula de los docentes adscritos a la carrera de "Licenciatura en Mercadotecnia" 
select escolaridad, especialidad, cedula from Docentes 
where idCarrera=(select idCarrera from Carreras where nombre='Licenciatura en Mercadotecnia ')

-- Consultas de Emmanuel
/* 
  1.-Mostrar cada problemas propuestos, el id, nombre, descripcion, nombre de equipo y todos
  los problemas propuestos que se encuentra en globo verde.
*/
select p.idPropuestos,p.nombre,b.descripcion,e.nombre Equipo from Problemaspropuestos p
join BancoProblemas b on p.idBancoProblemas=b.idBancoProblemas
join Equipos e on p.idBancoProblemas=e.idEquipos
where p.globo='Verde'

/* 
  2.-Mostrar cada equipo, el id, nombre equipo, semestre, fecha de registro y los
     equipos que se cuentra nocontrol
*/
select e.idEquipos,e.nombre,c.semestreLimite limite,d.fecharegistro registro from Equipos e
join Categorias c on e.idCategoria=c.idCategoria 
join Ediciones d on e.idEdiciones=d.idEdiciones
where e.nocontrol1='17010315'

/*
  3.-Mostrar los usuarios, su id, nombre alumno, telefono, nocontrol, nombre carrea los 
     usuarios se buscara su tipo usuario seria Alumno
*/
select u.idUsuarios,u.nomcompleto,u.telefono,a.nocontrol,c.nombre from Usuarios u
join Alumnos a on u.idUsuarios=a.idUsuarios
join Carreras c on u.idUsuarios=c.idCarrera
where u.tipo='Alumnos' 

/*
  4.-Mostrar los docentes, su id, cedula, carrera solo se buscara a los que 
     tiene cedula
*/
select d.idDocentes,d.cedula,c.nombre from Docentes d
join Carreras c on d.idCarrera=c.idCarrera
where d.cedula='120-135-6569'

/*
  5.-Mostrar alumnos, su numero control, semeste, carrera, equipo solo mostrara 
     que semeste se cuentra
*/
select a.noControl,a.semestre,c.nombre from Alumnos a
join Carreras c on a.idCarrera=c.idCarrera
where a.semestre='4A'

-- Consultas de Pedro
/*
  1.-Mostrar la duracion de incion de las ediciones, tiempo de finalizacion de la edicion, mostrando el id del equipo, nombre, numeros de control de los integrantes
     nombre de la categoria a la que estan inscritos los participantes
*/
select ed.duracioninicio, ed.duracionfinal, eq.idEquipos, eq.nombre, eq.nocontrol1, eq.nocontrol2, eq.nocontrol3, c.nombre Categoria from Ediciones ed
join Equipos eq on ed.idEdiciones=eq.idEdiciones
join Categorias c on ed.idEdiciones=c.idCategoria
where ed.duracioninicio='8:00'

/*
  2.-Mostrar a todos los usuarios que sean Docentes con su id junto con su especialidad y su cedula profecional
*/
select u.tipo, u.nomCompleto, d.idDocentes, d.especialidad, d.cedula from Usuarios u
join Docentes d on u.idUsuarios=d.idDocentes
where u.tipo='Docentes'

/*
  3.-Mostrar el nombre de los alumnos, su numero de control, carrera a la que pertenecen y la matricula del maestro 
*/
select u.nomCompleto, u.tipo, al.noControl, ca.nombre, d.cedula from Usuarios u
join Alumnos al on u.idUsuarios=al.idUsuarios
join Carreras ca on u.idUsuarios=ca.idCarrera
join Docentes d on u.idUsuarios=d.idDocentes
where u.tipo='Alumnos'

/*
  4.-Mostrar el nombre de las categoria a las que pertenece los equipos junto con el id del equipo, el nombre y sus puntos
*/
select ca.nombre, eq.idEquipos, eq.nombre Equipo, eq.puntos from Categorias ca
join Equipos eq on ca.idCategoria=eq.idEdiciones
where ca.nombre='Facil'

/*
  5.-Mostrar el id de la categoria, nombre, id de equipo el nombre, y fecha de registro y fecha del evento
*/
select c.idCategoria, c.nombre, eq.idEquipos, eq.nombre Equipo, ed.fecharegistro, ed.fechaevento from Categorias c
join Equipos eq on c.idCategoria=eq.idCategoria
join Ediciones ed on c.idCategoria=ed.idEdiciones
where c.nombre='Dificil'

-- Consultas de jose
/*
  1.-Mostrar Ediciones, su id, nombre, fecha evento, puntaje, nombre solo mostrara fecha de vento
*/
select e.idEdiciones,e.nombre,e.fechaevento,p.puntaje,q.nombre Equipo from Ediciones e
join ProblemasResueltos p on e.idEdiciones=p.idProblemaRes
join Equipos q on e.idEdiciones=q.idEdiciones
where e.fechaevento='22/11/2021'

/*
  2.-Mostrar banco problemas, su id,nombre,puntos,globo,duracion solo buscara puntos mas altos
*/
select b.idBancoProblemas,b.nombre,b.puntos,p.globo,r.duracion from BancoProblemas b
join Problemaspropuestos p on b.idBancoProblemas=p.idPropuestos
join ProblemasResueltos r on b.idBancoProblemas=r.idProblemaRes
where b.puntos='5' 

/*
  3.-Mostrar el noControl el nombre de los alumnos, email y contraseña de los Usuarios alumnos
*/
select al.noControl, u.nomCompleto, u.email, u.password, u.tipo from Alumnos al
join Usuarios u on al.idUsuarios=u.idUsuarios
where u.tipo='Alumnos'

/*
   4.-una consulta  donde me muestre los tres numeros de control de los equipos los puntos de los problemas resueltocomo el id de ediciones como el puntaje  
   en la tabla de ediciones el nombre y la fecha de registro como la de la tabla de problemas propuesto el nombre del problema y el globo pero que solo muestre los que tienen un puntaje mayor o igual a 1
*/
select e.nocontrol1, e.nocontrol2,e.nocontrol3,e.puntos, p.idEdiciones,p.puntaje, ed.nombre,ed.fecharegistro,ba.nombre, ba.globo from Equipos e 
join ProblemasResueltos p on e.idEquipos=p.idPropuestos 
join Ediciones ed on p.idEdiciones=ed.idEdiciones 
join Problemaspropuestos ba on ba.idPropuestos=p.idPropuestos 
where p.puntaje>1

---ver de la tabla de problemas propuestos: el nombre y el color del globo, del problema "Hacer calendario" de la tabla Banco de problemas
select a.nombre, a.globo from Problemaspropuestos a join BancoProblemas b
on a.idBancoProblemas=b.idBancoProblemas where b.nombre='Hacer calendario'

/**********************
Creacion de view 
***********************/
/*
1. crear una vista de nombre n_usuarios que se encarge de mostrar los siguientes datos de los alumnos el no control, nombre del alumno, carrera , equipo , nombre del equipo al cual esta registrado, nombre de la categoria
y mostrar el semestre limite
*/
create view n_usuarios
as
select a.noControl, u.nomCompleto,c.nombre,e.idEquipos,e.nombre Equipos,ca.nombre Categoria,ca.semestreLimite from Alumnos a join Usuarios u on a.idUsuarios=u.idUsuarios join Carreras c on a.idCarrera=c.idCarrera join Equipos e on a.idEquipos=e.idEquipos
join Categorias ca on ca.idCategoria=e.idCategoria

select * from n_usuarios where semestreLimite='Semestre 5'

/*
2. crear una vista llamda n_problemas con la cual mostrar el nombre del problema los y los puntos del problema como el color del globo el nomre del globo y mostrar el id del problema resuelto la duracion que tubo para resolver
y su puntaje del problema resulto
*/
create view n_problemas
as
select b.nombre banco,b.puntos,p.globo,p.nombre,pr.idProblemaRes,pr.duracion,pr.puntaje from BancoProblemas b join Problemaspropuestos p on b.idBancoProblemas=p.idBancoProblemas 
join ProblemasResueltos pr on pr.idPropuestos=p.idPropuestos 

select * from n_problemas where puntaje='5'

/*
3. crear una vista llamada n_docente con la cual pueda ver id de la carrera del docente su especialidad y escolaridad que me muestre el nombre de la carrera del docente. el numero de control del alumno el nombre completo
del usuario, email y password
*/
create view n_docentes
as
select c.idCarrera, d.especialidad, d.escolaridad,c.nombre,a.idCarrera Alumnos, a.noControl,u.nomCompleto,u.email,u.password from Docentes d join Carreras c on d.idCarrera=c.idCarrera 
join Alumnos a on a.idCarrera=c.idCarrera join Usuarios u on u.idUsuarios=a.idUsuarios

select * from n_docentes where escolaridad='Licenciatura'

/*
4. crear una vista llamada n_equipos  donde me muestre los tres numeros de control de los equipos los puntos de los problemas resueltocomo el id de ediciones como el puntaje  en la tabla de ediciones el nombre y la fecha de registro
como la de la tabla de problemas propuesto el nombre del problema y el globo
*/
create view n_equipos
as
select e.nocontrol1, e.nocontrol2,e.nocontrol3,e.puntos, p.idEdiciones,p.puntaje, ed.nombre Ediciones,ed.fecharegistro,ba.nombre, ba.globo from Equipos e join ProblemasResueltos p on e.idEquipos=p.idPropuestos 
join Ediciones ed on p.idEdiciones=ed.idEdiciones join Problemaspropuestos ba on ba.idPropuestos=p.idPropuestos

select * from n_equipos where globo='Amarillo'

/*
5.  mostrar el nombre de la ediciones como la fecha del evento, el nombre de los equipos y sus puntos, de la categorias mostrar el nombre y el semestre limite, de los alumnos la de numero de control y en el semestre que se encuentran
*/

create view n_mostrar
as
select eq.nombre ediciones,eq.fechaevento,e.nombre Equipos,e.puntos,c.nombre,c.semestreLimite,a.noControl,a.semestre from Equipos e join Ediciones eq on e.idEquipos=eq.idEdiciones join Categorias c on c.idCategoria=e.idCategoria 
join Alumnos a on a.idEquipos=e.idEquipos

select * from n_mostrar where puntos='10'



/*
select COUNT(*) cant_puntos from n_equipos 
group by puntos having count(*)>=8

select * from BancoProblemas
alter table Ediciones drop constraint CHK_Fecha_Registro
*/
