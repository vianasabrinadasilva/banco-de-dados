-- CRUD (Create Read Update Delete)
use dbinfox;
-- inspecionar tabelas no banco de dados
show tables;
-- o código abaixo cria uma tabela
create table tb_usuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15) not null,
login varchar (50) not null unique,
senha varchar (50) not null,
perfil varchar (50) not null
);
-- descrevendo a tabela
describe tb_usuarios;
-- inserindo dados na tabela (CRUD - Create)
insert into tb_usuarios values
(1, 'Sabrina da Silva Viana','1111-1111','sabrinasilva','123@senac','Aluno');
select * from tb_usuarios;
insert into tb_usuarios values
(2, 'Gabriel David','2222-2222','gabrieldavid','123@senac','Aluno');
insert into tb_usuarios values
(3, 'Victor Guilherme','3333-3333','victorleite','123@senac','Aluno');
select * from tb_usuarios;
