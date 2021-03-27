 
Create Database Blueprint
go
Use Blueprint
go
Create table Tipo_de_Cliente(
Id int not null primary key Identity(1,1),
Descripcion varchar(200) not null,
)



Create table  Cliente (
Id bigint not null primary key Identity(1,1),
Razon_Social  varchar(100) not null,
Cuit varchar(50) not null unique,
Tipo_Cliente int not null foreign key references Tipo_de_Cliente (Id),
Mail varchar(100) null,
Telefono_Fijo varchar(50) null,
Telefono_movil varchar(50) null,
)

Create table Proyecto(
Id bigint not null primary key identity(1,1),
Nombre varchar(100) not null,
Descripcion varchar(400) null,
Id_Cliente bigint not null foreign key references Cliente(Id),
Fecha_Inicio date not null check(Fecha_Inicio<=GetDate()),
Fecha_Fin date null,
Costo money not null check(Costo>0),
Estado varchar(10) not null check(Estado='Vigente' or Estado ='Cancelado'),
)