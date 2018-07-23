-- CRUD (Create Read Update Delete)
use dbinfox;
-- inspecionar tabelas no banco de dados
show tables;
-- o código abaixo cria uma tabela
create table tb_usuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15),
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


use dbinfox;
create table tb_cliente(
idcli int primary key,
cpfcli varchar(15) unique,
namecli varchar(50) not null,
cep varchar (15) not null,
tipo varchar (50) not null,
logradouro varchar (50) not null,
numero varchar (15) not null,
complemento varchar (15),
bairro varchar (50) not null,
cidade varchar (50) not null,
uf varchar (50) not null,
fone1 varchar (15) not null,
fone2 varchar (15),
emailcli varchar (50) not null
);

-- descrevendo a tabela
describe tb_cliente;
-- inserindo dados na tabela (CRUD - Create)
insert into tb_cliente values
(1, '123.456.789-10','Sabrina da Silva Viana','01234-567','rua','Luis Gama','162','casa 2','Jardim Moncoes','Santo Andre','SP','1111-2222','', 'sabrina@gmail');
select * from tb_cliente;


