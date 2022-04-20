create database db_redesocial_karol

use db_classificados_karol

create table Usuarios (
	Id int primary key not null,
	Nome varchar(50) not null,
	Email varchar(100) not null,
	Senha varchar(100) not null)

create table Topicos (
	Id int primary key not null,
	Titulo varchar(50) not null,
	Data_criacao varchar(50) not null,
	Conteudo varchar(100) not null,
	FK_Usuario int not null,
	foreign key (FK_Usuario) references Usuarios (Id))

create table Postagens (
	Id int primary key not null,
	Titulo varchar(50) not null,
	Data_criacao varchar(50) not null,
	Conteudo varchar(100) not null,
	FK_Usuario int not null,
	FK_Topico int not null,
	foreign key (FK_Usuario) references Usuarios (Id),
	foreign key (FK_Topico) references Topicos (Id))
