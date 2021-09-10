CRE      TABLE Product_model (
   id uuid primary key,
   title text,
   price integer,
   description text 
);
drop table Product_model;


CREATE TABLE stock_model (
   product_id uuid primary key,
   count integer,
   foreign key ("product_id") references "product_model" ("id")
);
drop table stock_model;


insert into Product_model (id, title, price, description) values 
('7567ec4b-b10c-48c5-9345-fc73c48a80aa', 'Travel 1', '2550','Lets enjoy the most wonderful trip'),
('7567ec4b-b10c-48c5-9345-fc73c48a80a0', 'Travel 2', '1199', 'Lets enjoy the most wonderful trip  (negotiable price)'),
('7567ec4b-b10c-48c5-9345-fc73c48a80a2', 'Travel 3', '329', 'Crossing in two Russian capitals, we will see Karelia with our own eyes'),
('7567ec4b-b10c-48c5-9345-fc73c48a80a1', 'Travel 4', '399', 'Climatic and other factors have exerted considerable influence on the patterns of human settlement '),
('7567ec4b-b10c-48c5-9345-fc73c48a80a3', 'Travel 5', '519', 'Best night views'),
('7567ec4b-b10c-48c5-9345-fc73348a80a4', 'Travel 6', '449', 'The best nature in the world, the most aesthetic palaces, the best sunsets'),
('7567ec4b-b10c-48c5-9445-fc73c48a80a5', 'Travel 7', '515', 'The second best nature in the world, aesthetic palaces, the best sunsets'),
('7567ec4b-b10c-45c5-9345-fc73c48a80a6', 'Travel 8', '15', 'aesthetic palaces, the best sunsets');




insert into stock_model (product_id, count) values 
('7567ec4b-b10c-48c5-9345-fc73c48a80aa', '4'),
('7567ec4b-b10c-48c5-9345-fc73c48a80a0', '6'),
('7567ec4b-b10c-48c5-9345-fc73c48a80a2', '7'),
('7567ec4b-b10c-48c5-9345-fc73c48a80a1', '12'),
('7567ec4b-b10c-48c5-9345-fc73c48a80a3', '1'),
('7567ec4b-b10c-48c5-9345-fc73348a80a4', '8'),
('7567ec4b-b10c-48c5-9445-fc73c48a80a5', '2'),
('7567ec4b-b10c-45c5-9345-fc73c48a80a6', '3');

