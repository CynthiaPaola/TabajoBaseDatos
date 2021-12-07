/*
  1.-Crear un procedimiento almacenado del nombre sp_alumnos_equipos en este procedimiento el cual recibira
  3 parametros de entrada los cuales son: el primer parametro con el nombre idCarreras un segundo parametro
  con el nombre de idEquipos y un tercer parametro el cual seria el semestre y se realizara un parametro de
  salida el cual se asignara como mensaje.
  Entre las principales funciones se encuentran:
     -Una de ella validara si existe el equipo que se encuentra inscrito al concurso de programacion con el nombre
	 de 'los R'
	 -Otro punto seria evaluar si el Usuario es un Alumno 
	 -Si las condiciones anteriores se llegan a cumplir se registraran dichos datos en la tabla de Alumnos.
	 Agregado dichos datos:
	       .El dato Tipo el cual nos mandara el usuario que es ya sea 'Alumno'
		   .el dato ban guardara si el usuario es verdadero o falso
		   .Si no se cumple mandara un mensaje diciendo que el usuario no se pudo agregar a la tabla
*/
--Creacion del procidimiento sp_alumnos_equipos
create procedure sp_alumnos_equipos @idCarrera int, @idEquipos int, @semestre varchar(2), @mesaje varchar(100) output
as
begin
    declare @noControl int
	declare @idUsuarios int
	declare @tipo varchar(40)
    declare @ban varchar(200)
    set @ban=dbo.fn_validar_alumno(@idUsuarios,@tipo)
    if @ban='True'
	begin
	    if exists(select idEquipos from Equipos where idEquipos=@idEquipos and nombre='Los R')
		begin
		    select @noControl=isnull(max(noControl)+1,1) from Alumnos
            insert into Alumnos values(@noControl,@idUsuarios,@semestre,@idCarrera,@idEquipos)
            set @mesaje='El usuario se agregado como alumno con exito'
		end
	end
	else
	begin
        set @mesaje='No se puede hacer el registro de este usuario'
	end
end
go

drop procedure sp_alumnos_equipos
go
select * from Alumnos


--Ejecutar el procedimiento
begin
    declare @salida varchar(200)
    execute sp_alumnos_equipos 1,1,1,@salida output
    print @salida
end

/*execute sp_alumnos_equipos 14523509,11,'4A',11,50,@salida output
    print @salida*/

/*
  2.-Crear una funcion con el nombre fn_validar_alumno encargada de recibir dos parametros: en el primer parametro 
  con el nombre de idUsuarios que representa una clave primaria de los usuarios que son alumnos y un segundo parametro
  el cual nos permitira identificar si es un tipo Alumno identificado con 0 o 1, esto para saber si es falso el resultado o 
  1 para indicar que esto es verdadero y nos arrojara un menaje indicando lo antes mencionado, si es este alumno o si es
  otro tipo de usuario.         
*/

create function fn_validar_alumno (@idUsuarios int, @tipo varchar(40))
returns bit
as 
begin
    declare @resultado VARCHAR (10)='Falso'
    declare @existencia varchar(100) ='Alumnos'
    select @existencia=tipo from Usuarios where idUsuarios=@idUsuarios
    if @existencia=@tipo
    set @resultado='True'
    else
        set @resultado='False'
        return @resultado
end
go

-- Comprobacion de la funcion de los alumnos  
begin
    declare @res VARCHAR
    set @res=dbo.fn_validar_alumno(1,'Alumnos')
    if @res=1
	         print 'Este usuario es un alumno'
	   else
	        print 'Este usuario no es alumno puede que sea Docente o Asesor'
	       
end

insert into usuarios values(11,'Victor Martin Mercado Ortega','M','351-786-2432','vmartin@gmail.com',1,'Alumnos','taquitos123')
insert into Carreras values(1,'Ingeniería Física','IF')
insert into Equipos values(11,10,10,'Los patos locos',17064737,17035568,17065595,8)

/*
  3.-Crear una función de tipo tabla de nombre fn_problemasRes_propuestos encargada de listar la cantidad de problemas 
	que un equipo resolvio durante el concurso de programacion, cuyos datos fueron informados por parametro, la informacion 
	a mostrar es la siguiente: idProblemaRes, Nombre del probblema propuesto, duracion, puntaje y nombre del equipo.
*/

create function dbo.fn_problemasRes_propuestos(@idPropuestos int)
returns table
as
return select pp.nombre, idProblemaRes,duracion,puntaje, e.nombre Equipos from Problemaspropuestos pp join ProblemasResueltos pr on pp.idPropuestos=pr.idPropuestos
join Equipos e on e.idEquipos=pp.idPropuestos
where pp.idPropuestos=@idPropuestos

--Comprobacion de dicha funcion
--Ejecución de la función
select * from dbo.fn_problemasRes_propuestos(6)


/*
  4.- Crear un triger llamado tg_insertar_equipo encargada de evaluar si se puede registrar un nuevo equipo a dicha tabla,
  si este tiene una puntuacion mayor a lo aceptado se podra registrar, de lo contrario denegara el registro y mandara un
  mensaje del motivo de dicha denegacion. 
  El triger estara configurado para actuar en dicho evento de insercion de la tabla Equipos.
*/

create trigger tg_insertar_equipo
on Equipos
for insert
as
declare @idEquipos int
declare @puntuacion int
select @idEquipos=idEquipos from inserted
select @puntuacion=puntos from Equipos where idEquipos=@idEquipos   
if @puntuacion='6' or @puntuacion='7' or @puntuacion='8' or @puntuacion='9' or @puntuacion='10'
begin 
    if @puntuacion='6'
	begin
	    update Equipos set puntos=6 where idEquipos=@idEquipos
	end
end          
else
begin
    print 'Este equipo no se puede registrar ya que no alcanza la puntuacion para clasificar a la siguiente ronda'
	rollback
end

select * from Equipos where puntos='8'
select * from Equipos where idEquipos=5
update Equipos set puntos='4' where idEquipos=11

--  Comprobacion del trigger, como se un trigger de insercion para comprobar si deja hacer o no dicho registro
--  de la tabla Equipos

insert into Equipos values(12,8,5,'Los Bartos','17010477','17010978','17010210',7)
insert into Equipos values(13,8,5,'Los Gatos','17010478','17010979','17010211',5)


drop trigger tg_insertar_equipo
