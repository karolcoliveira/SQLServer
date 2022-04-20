use db_redesocial_karol

insert into Usuarios
values
(1, 'Park Jungsoo', 'leeteuk@email.com', '04071983'),
(2, 'Cho Kyuhyun', 'kyuhyun@email.com', '03021988'),
(3, 'Lee Donghae', 'donghae@email.com', '15101986')

insert into Topicos
values
(57, 'Dream Concert 22', '29/01/2022', 'Topico para publicacoes do Dream Concert 22', 1),
(908, 'Inkigayo', '20/02/2010', 'Topico para publicacoes do Inkigayo', 3),
(5, 'Mama 2011', '27/11/2011', 'Topico para publicacoes do Mama 2011', 3)

insert into Postagens
values
(188, 'Dream Concert 22', '05/01/2022', 'Fancans Dream Concert 22 Super Junior', 1, 57),
(3, 'Inkigayo', '15/05/2012', 'Ganhadores da semana', 2, 908),
(99, 'Mama 2011', '01/12/2011', 'Lista de indicados ao Mama 2011', 1, 5)

select * from Postagens 
where Conteudo like '%Super%'

select * from Topicos
where Conteudo like '%publicacoes%'