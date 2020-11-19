-- arquivo de banco de dados
-- POSTGRESQL

-- excluir uma base de dados
drop database aular

-- criar uma base de dados

create database aular

\c aular

-- criar uma tabela
create table produto(
		codigo serial 	primary key,
		nome  			varchar(50) not null,		
		preco 			float not null,
		quantidade 		int not null);
		
\d produto;
\d 

-- inserir dados
insert into produto(nome, preco, quantidade) values('ps4', 1200.0, 10);
insert into produto(nome, preco, quantidade) values('Xbosta one', 400.0, 3);
insert into produto(nome, preco, quantidade) values('Super Nintendo', 249.0, 4);
insert into produto(nome, preco, quantidade) values('Mega Driver', 1800.0, 8);
		
		
insert into produto(nome, preco, quantidade) values('Geladeira', 1200.0, 10);
insert into produto(nome, preco, quantidade) values('TV LCD', 1350.0, 5);
insert into produto(nome, preco, quantidade) values('Monitor', 500.0, 7);
insert into produto(nome, preco, quantidade) values('TV LCD 42', 1500.0, 7);


select * from produto;




