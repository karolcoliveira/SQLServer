use db_marketplace_karol2

insert into Usuarios
values
(1, 'Park Jungsoo', 'leeteuk@email.com', '04071983', 'Myeongdong , 2210 - Seoul'),
(2, 'Cho Kyuhyun', 'kyuhyun@email.com', '03021988', 'Insadong, 303 - Seoul'),
(3, 'Lee Donghae', 'donghae@email.com', '15101986', 'Gyeongbukgung, 67 - Seoul' )

insert into Categorias
values
(1, 'Bebidas'),
(2, 'Artigos de higiene'),
(3, 'Eletrodomesticos')

insert into Produtos
values
('Soju', 'Bebida tipica com teor alcoolico de 40 porcento', 5.75, 1, 1),
('Sabonete liquido', 'Sabonete para uso diario com cheiro de lavanda', 8.90, 2, 2),
('Creme de hidratação capilar', 'Creme de hidratação rápida', 22.90, 2, 2),
('Microondas', 'Microondas inox', 990.90, 3, 3),
('Liquidificador', 'Liquidificador com caneca de vidro', 299.90, 3, 1)

insert into Compras
values
(1, 2, 1),
(2, 2, 1),
(3, 3, 1),
(4, 3, 3),
(5, 3, 2)

select * from Usuarios
select * from Produtos

select
Usuarios.Nome as 'Nome Comprador',  Count(*) as 'Quantidade de produtos'
FROM Usuarios
left join Produtos
on Usuarios.Id = Produtos.FK_Comprador
group by Usuarios.Nome, Produtos.NomeProduto;












