use db_ecomerce_karol2

insert into Usuarios
values
(1, 'Choi Siwon', 'siwon@email.com', '07041986', 'Myeongdong , 2210 - Seoul'),
(2, 'Kim Ryeowook', 'ryeowook@email.com', '21061987', 'Insadong, 303 - Seoul'),
(3, 'Lee Donghae', 'donghae@email.com', '15101986', 'Gyeongbukgung, 67 - Seoul')

insert into Produtos
values
(298, 'Camiseta', 99.90, '2', 'em estoque'),
(89, 'Mala de viagem', 499.90, '10', 'fora de estoque'),
(7, 'Calca jeans', 129.90, '17', 'em estoque')

insert into Pedidos
values
(78, 99.90, 1, 298),
(676, 99.90, 3, 298),
(17, 129.90, 3, 7)

insert into Detalhes
values
(1, 'Myeongdong , 2210 - Seoul', 'cartao credito', 78),
(2, 'Gyeongbukgung, 67 - Seoul', 'boleto', 676),
(3, 'Gyeongbukgung, 67 - Seoul', 'boleto', 17)


select
Usuarios.Nome as Nome, 
SUM(Produtos.PrecoProduto) as 'Preco total'
from Usuarios
inner join Pedidos on Usuarios.Id = Pedidos.FK_Usuario
inner join Produtos on Pedidos.FK_Produto = Produtos.Id
group by Usuarios.Nome;

select
Usuarios.Nome as Nome, 
SUM(Produtos.PrecoProduto) as 'Preco total'
from Usuarios
inner join Pedidos on Usuarios.Id = Pedidos.FK_Usuario
inner join Produtos on Pedidos.FK_Produto = Produtos.Id
where Usuarios.Nome like '%Lee%'
group by Usuarios.Nome;



