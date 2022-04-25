create database db_redesocial_karol2

use db_classificados_karol2

create table Usuarios (
	Id int primary key not null,
	Nome varchar(50) null,
	Email varchar(100) null,
	Senha varchar(100) null)

create table Topicos (
	Id int primary key not null,
	Titulo varchar(50) null,
	Data_criacao varchar(50) null,
	Conteudo varchar(100) null,
	FK_Usuario int not null,
	foreign key (FK_Usuario) references Usuarios (Id))

create table Postagens (
	Id int primary key not null,
	Titulo varchar(50) null,
	Data_criacao varchar(50) null,
	Conteudo varchar(100) null,
	FK_Usuario int not null,
	FK_Topico int not null,
	foreign key (FK_Usuario) references Usuarios (Id),
	foreign key (FK_Topico) references Topicos (Id))

