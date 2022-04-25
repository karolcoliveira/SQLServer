use db_marketplace_karol2

create table Usuarios (
	Id int primary key not null,
	Nome varchar(50) null,
	Email varchar(100) null,
	Senha varchar(100) null,
	Endereco varchar(100) null)

create table Categorias (
	Id int primary key not null,
	Descricao varchar(100) null)

create table Produtos (
	Id int primary key identity not null,
	NomeProduto varchar(50) null,
	Descricao varchar(100) null,
	Preco float null,
	FK_Comprador int not null,
	FK_Categoria int not null,
	foreign key (FK_Comprador) references Usuarios (Id), 
	foreign key (FK_Categoria) references Categorias (Id)
	)

	create table Compras (
	Id_Compras int primary key not null,
	FK_Comprador int not null,
	FK_Produto int not null,
	foreign key (FK_Comprador) references Usuarios (Id), 
	foreign key (FK_Produto) references Produtos (Id)
	)

