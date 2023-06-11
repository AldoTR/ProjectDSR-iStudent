--create database iStudent
--drop database if exists iStudent

/*
create table Alumnos(
    id int not null,
	nombres varchar(25),
	apellidos varchar(25),
	matricula int not null,
	telefono int not null,
	sexo varchar(25),
	fechanacimiento varchar (25),
	licenciatura varchar (25),
	primary key (Matricula)
	);
*/

/*
create table Docentes(
    id int not null,
	nombres varchar(255),
	apellidos varchar(255),
	numero_personal int not null,
	telefono int not null,
	sexo varchar(255),
	fechanacimiento varchar (255),
	facultad varchar (255),
	primary key (numero_personal)
	);
*/

/*
create table Materias(
    id int not null,
	licenciatura varchar(40),
	nombre character varying(40),
	turno varchar(40),
	grupo int not null,
	nrc int not null,
	cupo int not null,
	docente varchar(40),
	Horario_Lunes varchar(50),
	Horario_Martes varchar(50),
	Horario_Miercoles varchar(50),
	Horario_Jueves varchar(50),
	Horario_Viernes varchar(50),
	primary key (nrc)
	);
*/	

/*
create table Salones(
	salon int not null,
	edificio int not null,
	nrc int not null
);
*/

/*
create table Cuentas_Alumno(
   matricula int REFERENCES
   alumnos (matricula),
   correo varchar(100),
   contraseña varchar(100), 
   url_imagen varchar(255)
   );
*/   

/*
create table Cuentas_Docente(
   numero_personal int not null,
   correo varchar(100),
   contrasena varchar(100), 
   url_imagen varchar(100),
   primary key (numero_personal)
	);
*/

--ALTER TABLE Cuentas_Docente
--ADD CONSTRAINT FK_Cuentas_Docente_docentes
--FOREIGN KEY (numero_personal)
--REFERENCES docentes (numero_personal);

/*
create table Docentes_Materias(
	numero_personal int not null,
	nrc int not null
);
*/

--ALTER Table Docentes_Materias
--add constraint fk_num_per foreign key (numero_personal) references docentes (numero_personal)
--add constraint fk_nrc foreign key (nrc) references materias (nrc)
--add constraint unique_nrc_per_num_personal UNIQUE (nrc);
/*
CREATE TABLE alumnos_materias (
  matricula INTEGER REFERENCES alumnos (matricula),
  nrc INTEGER REFERENCES materias (nrc)
);
*/

/*
insert into alumnos (id, nombres, apellidos, matricula, telefono, sexo, fechanacimiento, licenciatura) values ('1','Aldo','Torres Ramírez','20006781','123','Masculino','7 de mayo de 2002','Ingeniería de software')
insert into alumnos (id, nombres, apellidos, matricula, telefono, sexo, fechanacimiento, licenciatura) values ('2','Irving Rafael','Conde Marín','20006735','456','Masculino','24 de abril de 2002','Ingeniería de software')
insert into alumnos (id, nombres, apellidos, matricula, telefono, sexo, fechanacimiento, licenciatura) values ('3','Magdyel','Aguilar Cid','20020309','789','Masculino','25 de noviembre de 2002','Ingeniería de software')
insert into alumnos (id, nombres, apellidos, matricula, telefono, sexo, fechanacimiento, licenciatura) values ('4','Fermín','Del Rosario Antonio','19004879','987','Masculino','23 de noviembre de 2001','Ingeniería de software')
insert into alumnos (id, nombres, apellidos, matricula, telefono, sexo, fechanacimiento, licenciatura) values ('5','Aaron Emiliano','Torres Núñez','20006726','654','Masculino','15 de Octubre de 2001','Ingeniería de software')
insert into alumnos (id, nombres, apellidos, matricula, telefono, sexo, fechanacimiento, licenciatura) values ('6','Adriel Eduardo','Peregrina Soto','20006770','321','Masculino','12 de marzo de 2002','Ingeniería de software')
*/

--select * from alumnos

/*
insert into docentes values ('01','Jorge Ernesto','Gonzalez Diaz',1236126713,2721234567,'Masculino','5 de agosto de 1980','Facultad de Negocios y Tecnologías');
insert into docentes values ('02','Adolfo','Centeno Tellez',1576912851,2719876543,'Masculino','15 de octubre de 1972','Facultad de Negocios y Tecnologías');
insert into docentes values ('03','Martín','Mancilla Gomez',1918671851,2722345678,'Masculino','20 de febrero de 1978','Facultad de Negocios y Tecnologías');
insert into docentes values ('04','Gabriel','Rodríguez Vazquez',1186970176,2718765432,'Masculino','8 de noviembre de 1980','Facultad de Negocios y Tecnologías');
insert into docentes values ('05','Ricardo','Carrera Hernandez',1756255912,2729876543,'Masculino','24 de marzo de 1970','Facultad de Negocios y Tecnologías');
insert into docentes values ('06','Adolfo','Rodriguez Parada',1918671970,2713456789,'Masculino','2 de agosto de 1975','Facultad de Negocios y Tecnologías');
*/

--select * from docentes

/*
INSERT INTO materias (id, licenciatura, nombre, turno, grupo, nrc, cupo, horario_lunes, horario_martes, horario_miercoles, horario_jueves, horario_viernes)
VALUES (1, 'Ingeniería de software', 'Bases de Datos', 'Matutino', 101, 91001, 30, '9:00AM-11:00AM', '-', '9:00AM-11:00AM', '-', '9:00AM-11:00AM');

INSERT INTO materias (id, licenciatura, nombre, turno, grupo, nrc, cupo, horario_lunes, horario_martes, horario_miercoles, horario_jueves, horario_viernes)
VALUES (2, 'Ingeniería de software', 'Programación Básica', 'Vespertino', 102, 91002, 30, '-', '1:00PM-3:00PM', '-', '1:00PM-3:00PM', '-');

INSERT INTO materias (id, licenciatura, nombre, turno, grupo, nrc, cupo, horario_lunes, horario_martes, horario_miercoles, horario_jueves, horario_viernes)
VALUES (3, 'Ingeniería de software', 'Desarrollo de software', 'Matutino', 201, 91003, 30, '7:00AM-9:00AM', '-', '7:00AM-9:00AM', '-', '7:00AM-9:00AM');

INSERT INTO materias (id, licenciatura, nombre, turno, grupo, nrc, cupo, horario_lunes, horario_martes, horario_miercoles, horario_jueves, horario_viernes)
VALUES (4, 'Ingeniería de software', 'Desarrollo de Sistemas en Red', 'Vespertino', 202, 91004, 30, '-', '3:00PM-5:00PM', '-', '3:00PM-5:00PM', '-');

INSERT INTO materias (id, licenciatura, nombre, turno, grupo, nrc, cupo, horario_lunes, horario_martes, horario_miercoles, horario_jueves, horario_viernes)
VALUES (5, 'Ingeniería de software', 'Desarrollo de aplicaciones móviles', 'Matutino', 301, 91005, 30, '9:00AM-11:00AM', '-', '9:00AM-11:00AM', '-', '9:00AM-11:00AM');

INSERT INTO materias (id, licenciatura, nombre, turno, grupo, nrc, cupo, horario_lunes, horario_martes, horario_miercoles, horario_jueves, horario_viernes)
VALUES (6, 'Ingeniería de software', 'Principios de Construcción de Software', 'Vespertino', 302, 91006, 30, '-', '1:00PM-3:00PM', '-', '1:00PM-3:00PM', '-');

INSERT INTO materias (id, licenciatura, nombre, turno, grupo, nrc, cupo, horario_lunes, horario_martes, horario_miercoles, horario_jueves, horario_viernes)
VALUES (7, 'Ingeniería de software', 'Verificación y Validación de Software', 'Matutino', 401, 91007, 30, '7:00AM-9:00AM', '-', '7:00AM-9:00AM', '-', '7:00AM-9:00AM');

INSERT INTO materias (id, licenciatura, nombre, turno, grupo, nrc, cupo, horario_lunes, horario_martes, horario_miercoles, horario_jueves, horario_viernes)
VALUES (8, 'Ingeniería de software', 'Paradigmas de Programación', 'Vespertino', 402, 91008, 30, '-', '3:00PM-5:00PM', '-', '3:00PM-5:00PM', '-');

INSERT INTO materias (id, licenciatura, nombre, turno, grupo, nrc, cupo, horario_lunes, horario_martes, horario_miercoles, horario_jueves, horario_viernes)
VALUES (9, 'Ingeniería de software', 'Bases de Datos no convencionales', 'Matutino', 501, 91009, 30, '9:00AM-11:00AM', '-', '9:00AM-11:00AM', '-', '9:00AM-11:00AM');

INSERT INTO materias (id, licenciatura, nombre, turno, grupo, nrc, cupo, horario_lunes, horario_martes, horario_miercoles, horario_jueves, horario_viernes)
VALUES (10, 'Ingeniería de software', 'Inteligencia Artificial', 'Vespertino', 502, 91010, 30, '-', '1:00PM-3:00PM', '-', '1:00PM-3:00PM', '-');

INSERT INTO materias values (11,'Ingeniería de software','Sistemas en red','Matutino','601','91063','30','11:00AM-1:00PM','11:00AM-1:00PM','-','11:00AM-1:00PM','-');
INSERT INTO materias values (12,'Ingeniería de software','Bases de datos','Matutino','601','91068','30','-','9:00AM-11:00AM','-','9:00AM-11:00AM','-');
INSERT INTO materias values (13,'Ingeniería de software','Diseño de software','Matutino','601','91060','30','7:00AM-9:00AM','-','7:00AM-9:00AM','-','7:00AM-9:00AM');
INSERT INTO materias values (14,'Ingeniería de software','Aplicaciones','Matutino','601','91064','30','9:00AM-11:00AM','-','11:00AM-1:00PM','-','9:00AM-11:00AM');
INSERT INTO materias values (15,'Ingeniería de software','Redes','Matutino','401','91015','30','7:00:-8:00AM','8:00AM-9:00AM','-','11:00AM-1:00PM','11:00PM-1:00PM');
INSERT INTO materias values (16,'Ingeniería de software','Programación','Matutino','201','91012','30','11:00AM-1:00PM','11:00AM-1:00PM','-','11:00AM-1:00PM','-');
/*

--select * from materias

--insert into salones values ('07','01','91063')
--insert into salones values ('07','01','91068')
--insert into salones values ('07','01','91060')
--insert into salones values ('07','01','91064')
--insert into salones values ('07','01','91015')
--insert into salones values ('07','01','91001')
--insert into salones (salon, edificio, nrc) SELECT 6, 1, nrc FROM materias WHERE grupo = 601;

--select * from salones

--insert into Cuentas_Alumno values ('1','zS20006781@estudiantes.uv.mx','AldoContraseña','enlace_imagen')
--select * from Cuentas_Alumno

--insert into Docentes_Materias values ('101','91063')
--select * from Docentes_Materias

--insert into Cuentas_Docente values ('101', 'JorgeGD@uv.mx','JorgeContraseña','enlace_imagen')
--select * from Cuentas_Docente
