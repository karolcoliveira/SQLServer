use db_marketplace_karol

insert into Usuarios
values
(1, 'Park Jungsoo', 'leeteuk@email.com', '04071983', 'Myeongdong , 2210 - Seoul'),
(2, 'Cho Kyuhyun', 'kyuhyun@email.com', '03021988', 'Insadong, 303 - Seoul'),
(3, 'Lee Donghae', 'donghae@email.com', '15101986', 'Gyeongbukgung, 67 - Seoul' )

insert into Categorias
values
(1, 'Bebidas'),
(2, 'Artigos de higiene')

insert into Produtos
values
('Soju', 'Bebida tipica com teor alcoolico de porcento', 5.75, 1, 1),
('Sabonete liquido', 'Sabonete para uso diario com cheiro de lavanda', 8.90, 1, 2),
('Creme de hidratação capilar', 'Creme de hidratação rápida', 22.90, 1, 2)

select * from Produtos

insert into Compras
values
(2, 1),
(3, 1),
(3, 3)

select * from Produtos
where Preco between 5 and 25


