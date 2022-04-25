create database db_classificados_karol2

use db_classificados_karol2

create table Contratantes (
	Id int primary key not null,
	Nome varchar(50) null,
	Email varchar(100) null,
	Senha varchar(100) null)

create table Anunciantes (
	Id int primary key not null,
	Nome varchar(50) null,
	Email varchar(100) null,
	Senha varchar(100)  null,
	Descricao varchar(100) null)

create table Classificados (
	Anuncios varchar(100) null,
	Preco float null,
	FK_Contratantes int not null,
	FK_Anunciantes int not null,
	foreign key (FK_Contratantes) references Contratantes (Id), 
	foreign key (FK_Anunciantes) references Anunciantes (Id))

	drop table Classificados
	drop table Anunciantes
	drop table Contratantes