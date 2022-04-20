use db_classificados_karol

insert into Contratantes
values
(1, 'Park Jungsoo', 'leeteuk@email.com', '04071983'),
(2, 'Cho Kyuhyun', 'kyuhyun@email.com', '03021988'),
(3, 'Lee Donghae', 'donghae@email.com', '15101986')

insert into Anunciantes
values
(1, 'Choi Siwon', 'siwon@email.com', '07041986','Ofereco aulas de oratoria'),
(2, 'Lee Hyukjae', 'hyukjae@email.com', '04041986', 'Ofereco aulas de danca'),
(3, 'Kim Ryeowook', 'ryeowook@email.com', '21061987', 'Ofereco aulas de canto')

insert into Classificados
values
('Ofereco aulas de canto', 1, 3),
('Ofereco aulas de danca', 2, 2),
('Ofereco aulas de oratoria', 1, 1)

select * from Anunciantes
where Descricao like '%canto%'