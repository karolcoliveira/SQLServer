create database db_marketplace_karol

use db_marketplace_karol

create table Usuarios (
	Id int primary key not null,
	Nome varchar(50) not null,
	Email varchar(100) not null,
	Senha varchar(100) not null)

create table Categorias (
	Id int primary key not null,
	Descricao varchar(100) not null)

create table Produtos (
	Id int primary key identity not null,
	NomeProduto varchar(50) not null,
	Descricao varchar(100) not null,
	Preco float not null,
	FK_Criador int not null,
	FK_Categoria int not null,
	foreign key (FK_Criador) references Usuarios (Id), 
	foreign key (FK_Categoria) references Categorias (Id)
	)

	create table Compras (
	FK_Comprador int not null,
	FK_Produto int not null,
	foreign key (FK_Comprador) references Usuarios (Id), 
	foreign key (FK_Produto) references Produtos (Id)
	)
alter table Usuarios add Endereco varchar(100) not null

drop table Compras

drop table Produtos

