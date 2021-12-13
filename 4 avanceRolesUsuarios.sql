-- Creacion de los rol de Docente
create role Docentes
go

-- Creacion del rol de Alumnos
create role Alumnos
go

-- Creacion del rol de Asesores
create role Asesores
go
drop role alumnos

--Asinacion de permisos del usuario Docentes.
grant select, insert, update, delete on Usuarios to Docentes
grant select, insert, update, delete on Alumnos to Docentes
grant select, insert, update, delete on Docentes to Docentes
grant select, insert, update, delete on Equipos to Docentes
grant select, insert, update, delete on Categorias to Docentes
grant select, insert, update, delete on Carreras to Docentes
grant select, insert, update, delete on Ediciones to Docentes
grant select, insert, update, delete on ProblemasResueltos to Docentes
grant select, insert, update, delete on ProblemasPropuestos to Docentes
grant select, insert, update, delete on BancoProblemas to Docentes
grant execute on sp_alumnos_equipos to Docentes
go

--Asinacion de permisos del usuario Asesores.
grant select, insert, update on Usuarios to Asesores
grant select on Alumnos to Asesores
grant select, insert, update on Docentes to Asesores
grant select on Equipos to Asesores
grant select, update on Categorias to Asesores
grant select, insert, update, delete on Carreras to Asesores
grant select, insert, update on Ediciones to Asesores
grant select on ProblemasResueltos to Asesores
grant select on ProblemasPropuestos to Asesores
grant select, insert, update, delete on BancoProblemas to Asesores
grant execute on sp_alumnos_equipos to Asesores
go

--Asinacion de permisos del usuario Alumnos.
grant select, update on Usuarios to Alumnos
grant select, update on Alumnos to Alumnos
grant select on Docentes to Alumnos
grant select, insert, update, delete on Equipos to Alumnos
grant select, update on Categorias to Alumnos
grant select, insert on Carreras to Alumnos
grant select, insert on Ediciones to Alumnos
grant select on ProblemasResueltos to Alumnos
grant select on ProblemasPropuestos to Alumnos
grant select on BancoProblemas to Alumnos
go

--Creacion de Usuarios Docentes
create login ErnestoFernandezOrtiz
with password='T0roM@x',
default_database=ConcursoProgram
go

create user ErnestoFernandezOrtiz
go

create login FranciscoGodinezGavilan
with password='T0roM@x',
default_database=ConcursoProgram
go

create user FranciscoGodinezGavilan
go

--Asignacion de usuarios al rol de docentes
exec sp_addrolemember Docentes, ErnestoFernandezOrtiz
exec sp_addrolemember Docentes, FranciscoGodinezGavilan

-- Asignacion del usuarios FranciscoGodinezGavilan al rol de Docente
exec sp_addsrvrolemember ErnestoFernandezOrtiz, sysadmin
exec sp_addrolemember db_owner,Docentes
exec sp_addsrvrolemember FranciscoGodinezGavilan, sysadmin
exec sp_addrolemember db_owner,Docentes

-- Remover a un usuario de su rol

--Creacion de Usuarios Asesores
create login FernandaMaldonadoJuarez
with password='T0roM@x',
default_database=ConcursoProgram
go
create user FernandaMaldonadoJuarez
go

create login MargaritaSavalaHerrera
with password='T0roM@x',
default_database=ConcursoProgram
go

create user MargaritaSavalaHerrera
go

--Asignacion de usuarios al rol de Asesores
exec sp_addrolemember Asesores, MargaritaSavalaHerrera
exec sp_addrolemember Asesores, FernandaMaldonadoJuarez

-- Creacion de los Usuarios Alumnos
create login JuanRodriguezCamarena
with password='T0roM@x',
default_database=ConcursoProgram
go

create user JuanRodriguezCamarena
go

create login FelipeValdezGarcia
with password='T0roM@x',
default_database=ConcursoProgram
go

create user FelipeValdezGarcia
go

--Asignacion de usuarios al rol de Alumnos
exec sp_addrolemember Alumnos, JuanRodriguezCamarena
exec sp_addrolemember Alumnos, FelipeValdezGarcia
