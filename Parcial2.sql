create database Clinica
use Clinica;

create table DueñoMascota(
Id_dueño int identity,
NumeroIdenticacion int primary key,
Nombre varchar (50),
Apellido varchar (50),
Direccion varchar (50),
Departamento varchar (50),
Municipio varchar (50),
CodigoPostal varchar (50),
NumTelefono int ,

);

create table Mascota (
Id_Mascota int identity,
NumeroIdentificacionMascota int primary key,
Nombre varchar (50),
Raza varchar(50),
Peso int,
TipoMascota varchar (50),
Observaciones varchar (50),
);

create table Veterinario(
Id_veterinario int identity,
CodidoIdenVeterinario int primary key,
Nombre varchar (50),
Apellido varchar (50),
Cargo varchar (50),
);

create table Ingreso (
Id_ingreso int primary key,
Motivo varchar (50),
Fecha_Ingreso date default getdate(),
Observaciones varchar (50),
NumeroIdentificacionMascota int,
CodidoIdenVeterinario int,


FOREIGN KEY (NumeroIdentificacionMascota) REFERENCES Mascota (NumeroIdentificacionMascota),
FOREIGN KEY (CodidoIdenVeterinario) REFERENCES Veterinario (CodidoIdenVeterinario)
);

select * from DueñoMascota;

INSERT INTO DueñoMascota VALUES( 1,'Alejandro', 'Martinez', 'Barrio San Antonio','Chalatenango','Chalatenango','f05hh',72171293);
INSERT INTO DueñoMascota VALUES( 2,'Andrea', 'Jimenez', 'Barrio El Calvario','Chalatenango','Chalatenango','f05hh',73948877);

INSERT INTO Mascota VALUES (1,'Luna','Pitbull',14,'Perro','Sano');
INSERT INTO Mascota VALUES (2,'Lola','Poodle',7,'Perro','Semi sano');
INSERT INTO Mascota VALUES (3,'Max','Pastor Aleman',23,'Perro','Sano');
INSERT INTO Mascota VALUES (4,'Coco','Chihuahua',4,'Perro','Enfermo');
INSERT INTO Mascota VALUES (5,'Zeus','Doberman',25,'Perro','Sano');
INSERT INTO Mascota VALUES (6,'Kira','Siberiano',4,'Gato','Sano');
INSERT INTO Mascota VALUES (7,'Maya','Persa',4,'Gato','Semi enfermo');
INSERT INTO Mascota VALUES (8,'Bony','Mini Lop',2,'Conejo','Sano');
INSERT INTO Mascota VALUES (9,'Oreo','Mini Rex',3,'Conejo','Enfermo');
INSERT INTO Mascota VALUES (10,'Titan','Pura sangre ingles',390,'Caballo','Sano');

select * from Mascota;

INSERT INTO Veterinario VALUES (1,'Dr.Julio','Mejia','Consulta');
INSERT INTO Veterinario VALUES (2,'Dra.Ana','Sanchez','Cirujia');
INSERT INTO Veterinario VALUES (3,'Dr.Luis','Menjivar','Radiografia');
INSERT INTO Veterinario VALUES (4,'Lic.Pablo','Jimenez','Asistente');

select * from Veterinario;

INSERT INTO Ingreso VALUES ('Revision','','Sano',1,1);
INSERT INTO Ingreso VALUES ('Revision','','Semi Sano',2,2);
INSERT INTO Ingreso VALUES ('Revision','','Sano',3,3);
INSERT INTO Ingreso VALUES ('Revision','','Enfermo',4,4);
INSERT INTO Ingreso VALUES ('Revision','','Sano',5,5);
INSERT INTO Ingreso VALUES ('Revision','','Sano',6,6);
INSERT INTO Ingreso VALUES ('Revision','','Enfermo',7,7);
INSERT INTO Ingreso VALUES ('Revision','','Sano',8,8);
INSERT INTO Ingreso VALUES ('Revision','','Enfermo',9,9);
INSERT INTO Ingreso VALUES ('Revision','','Sano',10,10);
INSERT INTO Ingreso VALUES ('Revision','','Sano',1,9);
INSERT INTO Ingreso VALUES ('Revision','','Sano',2,8);
INSERT INTO Ingreso VALUES ('Revision','','Sano',3,6);
INSERT INTO Ingreso VALUES ('Revision','','Sano',4,7);
