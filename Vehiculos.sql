create table Placa
(
	IdPlaca int identity Primary Key,
	NumPlaca varchar (6) Unique,
	IdUsuario int,
	Monto money Default (0),
	CONSTRAINT fk_IdUsuarios FOREIGN KEY (IdUsuario) REFERENCES Usuarios (IdUsuario),
)

insert into Placa(NumPlaca,Monto) values ('LYS232',10000) 
insert into Placa(NumPlaca,Monto) values ('SYL232',12000) 
Select *from Placa

create table Usuarios
(
	IdUsuario int identity Primary Key,
	Usuario varchar (50) Unique,
	Clave varchar (30),
	Nombre  varchar (50),
	Apellido varchar (50),
)

insert into Usuarios(Usuario,Clave,Nombre,Apellido) values ('Luis@gmail.com','2322','Luis','Ortiz')
insert into Usuarios(Usuario,Clave,Nombre,Apellido) values ('Sharon@gmail.com','2322','Sharon','Rivera')
Select *from Usuarios


--Procedimientos almacenados

Create procedure ControlAcceso 
@Usuario varchar(70), 
@Clave varchar (70)
as 
	begin
		select *from Usuarios where Usuario=@Usuario and Clave=@Clave
		end
		exec ControlAcceso 'Sharon@gmail.com', '2322'

Create procedure BorrarUsuraios @Usuario varchar (70)
	as
		begin 
			Delete from Usuarios where Usuario=@Usuario
	end

	exec BorrarUsuraios 'Luis@gmail.com'
	Select *from Usuarios

	create procedure IngresarUsuarios
	@Usuario Varchar (70),
	@Clave Varchar (70) ,
	@Nombre Varchar (50),
	@Apellido Varchar (50)
	as
		begin
			insert into Usuarios (Usuario, Clave, Nombre, Apellido) Values (@Usuario, @Clave, @Nombre,@Apellido)
			end
			exec IngresarUsuarios'Carlos@gmail.com', '2022', 'Carlos','Ortiz'
			 Select *from Usuarios

create procedure ActualizarUsuarios @Usuario varchar(50), @Clave varchar(30), @Nombre nvarchar(50), @Apellido nvarchar(50)
as 
Update Usuarios set  Nombre = @nombre, Apellido = @apellido, Clave=@Clave
where Usuario =	@Usuario
		exec ActualizarUsuarios 'Sharon@gmail.com', '2022', 'Sharon F', 'Rivera Jimenez'
		Select *from Usuarios

------------------------------------------------
Create procedure BorraPlaca @NumPlacas varchar (70)
	as
		begin 
			Delete from Placa where NumPlaca=@NumPlacas
	end

	exec BorraPlaca 'JES180'
	Select *from Placa


	create procedure IngresarPlaca @NumPlaca Varchar (70), @Monto Varchar (70), @IdUsuario varchar (70) 
	as
		begin
			insert into Placa(NumPlaca,Monto,IdUsuario) Values (@NumPlaca, @Monto,@IdUsuario)
			end
			exec IngresarPlaca'CAR170', '12000', '4'
			 Select *from Placa
			 Select*from Usuarios

create procedure ActualizarPlaca  @IdPlaca varchar (50), @NumPlaca varchar(50), @IdUsuario varchar(30), @Monto varchar(50)
as 
Update Placa set  NumPlaca = @NumPlaca, IdUsuario = @IdUsuario, Monto=@Monto
where IdPlaca =	@IdPlaca
		exec ActualizarPlaca '2', 'IMC203', '2', '18000'
		Select *from Placa

create procedure ConsultarUsuarios
as
select *from Usuarios

create procedure ConsultarPlaca
as
select *from Placa

create procedure Reporte @NumPlaca nvarchar(6)
as
select Nombre, Apellido, Placa.Monto, (Placa.Monto * 0.13) as IVA, ((Placa.Monto*0.13)+Placa.Monto) as Total from Usuarios
join Placa
on Usuarios.idUsuario = Placa.idUsuario
where NumPlaca = @numPlaca
exec Reporte 'IMC203'

