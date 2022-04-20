create database db_ecomerce_karol

create table Usuarios (
	Id int primary key not null,
	Nome varchar(50) not null,
	Email varchar(100) not null,
	Senha varchar(100) not null,
	Endereco varchar(100) not null)

create table Produtos (
	Id int primary key not null,
	NomeProduto varchar(50) not null,
	PrecoProduto float not null,
	Quantidade varchar(50) not null,
	Disponibilidade varchar(100) not null)

create table Pedidos ( 
	Id int primary key not null,
	Preco_total float not null,
	FK_Usuario int not null,
	FK_Produto int not null,
	foreign key (FK_Usuario) references Usuarios (Id), 
	foreign key (FK_Produto) references Produtos (Id))

create table Detalhes (
	Id int primary key not null,
	Endereco_entrega varchar(100) not null,
	Pagamento varchar(100) not null,
	FK_Pedido int not null,
	foreign key (FK_Pedido) references Pedidos (Id))