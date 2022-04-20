create database db_classificados_karol

use db_classificados_karol 

create table Contratantes (
	Id int primary key not null,
	Nome varchar(50) not null,
	Email varchar(100) not null,
	Senha varchar(100) not null)

create table Anunciantes (
	Id int primary key not null,
	Nome varchar(50) not null,
	Email varchar(100) not null,
	Senha varchar(100) not null,
	Descricao varchar(100) not null)

create table Classificados (
	Anuncios varchar(50) not null,
	FK_Contratante int not null,
	FK_Anunciante int not null,
	foreign key (FK_Contratante) references Contratantes (Id), 
	foreign key (FK_Anunciante) references Anunciantes (Id))
