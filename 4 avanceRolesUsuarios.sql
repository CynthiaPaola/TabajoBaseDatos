-- Creacion de los rol de Docente
create role Docentes
go

-- Creacion del rol de Alumnos
create role Alumnos
go

-- Creacion del rol de Asesores
create role Asesores
go

--Asinacion de permisos del usuario Docentes.
grant select, insert, update, delete on Usuarios to Docentes
grant select, insert, update, delete on Alumnos to Docentes
grant select, insert, update, delete on Docentes to Docentes
grant select, insert, update, delete on Equipos to Docentes
grant select, insert, update, delete on Categorías to Docentes
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
grant select, update on Categorías to Asesores
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

--Asignacion de usuarios al rol de docentes
exec sp_addrolemember Docentes, ErnestoFernandezOrtiz

-- Creacion del Usuario ErnestoFernandezOrtiza

-- Asignacion del usuarios ErnestoFernandezOrtiza roles
exec sp_addsrvrolemember FranciscoGodinezGavilan
exec sp_addsrvrolemember db_owner,Docentes

-- Remover a un usuario de su rol

--Creacion de Usuarios Asesores
create login Fernanda Maldonado Juarez
with password='T0roM@x',
default_database=ConcursoProgram
go
create user Fernanda Maldonado Juarez
go
exec sp_addrolemember Asesores, Fernanda Maldonado Juarez

create login Margarita Savala Herrera
with password='T0roM@x',
default_database=ConcursoProgram
go
create user Margarita Savala Herrera
go
exec sp_addrolemember Asesores, Margarita Savala Herrera

--Creacion de Usuarios Docentes
create login Ernesto Fernandez Ortiz
with password='T0roM@x',
default_database=ConcursoProgram
go
create user Ernesto Fernandez Ortiz
go
exec sp_addrolemember Docentes, Ernesto Fernandez Ortiz
