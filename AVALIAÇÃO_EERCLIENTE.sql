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
idcli int auto_increment primary key,
cpfcli varchar(15) unique,
namecli varchar(50) not null,
cep varchar (15) not null,
tipo varchar (50) not null,
logradouro varchar (50) not null,
numero varchar (15) not null,
complemento varchar (15),
bairro varchar (50) not null,
cidade varchar (50) not null,
uf char (2) not null,
fone1 varchar (15) not null,
fone2 varchar (15),
emailcli varchar (50) not null
);

describe tb_cliente;
insert into tb_cliente values
(null, '123.456.789-10','Sabrina da Silva Viana','01234-567','rua','Luis Gama','162','casa 2','Jardim Moncoes','Santo Andre','SP','1111-2222','', 'sabrina@gmail');
select * from tb_cliente;

insert into tb_cliente values
(null, '111.111.111-11','Francieli Viana','11111-111','avenida','Brasilia','43','','Jardim Alvorada','Jacareí','SP','3333-4444','', 'fran@gmail');

insert into tb_cliente values
(null, '222.222.222-22','Gabriel David','22222-222','rua','Aricanduva','22','','Las vegas','Rio de Janeiro','RJ','5555-6666','', 'gabriel@gmail');

insert into tb_cliente values
(null, '333.333.333-33','Miguel Fonseca','33333-333','rua','Coronel Leo e Silva','234','','Nove de Julho','Belo Horizonte','MJ','7777-8888','', 'miguel@gmail');

insert into tb_cliente values
(null, '444.444.444-44','Victor Guilherme','44444-444','rua','Augusta','854','casa 2','10 de julho','Goiania','GO','9999-1111','', 'victor@gmail');


use dbinfox;

create table tb_os(
idos int auto_increment primary key,
tipo1 varchar (15) not null,
situacao varchar(20) not null,
equipamento varchar(200) not null,
defeito varchar(200) not null,
servico varchar(200),
tecnico varchar(200),
valor decimal (10,2)
);


describe tb_os;

-- Adicionando data e hora automática

alter table tb_os add data_os timestamp default current_timestamp
after idos;

-- comando para alterar o start do inicio do auto incremento
alter table tb_os auto_increment = 10000;

alter table tb_os add idcli int;

alter table tb_os drop column idcli;

alter table tb_os add constraint cliente_os
foreign key (idcli)
references tb_cliente (idcli)
on delete no action;


insert into tb_os (idcli,tipo1,situacao,equipamento,defeito,servico,tecnico,valor)
values ('1','Conserto','Aprovado','Pc','Não liga','Troca de fonte','Sabrina','200');

insert into tb_os (idcli,tipo1,situacao,equipamento,defeito,servico,tecnico,valor)
values ('2','Conserto','Aprovado','Celular','Display Quebrado','Troca de Display','Sabrina','150');

insert into tb_os (idcli,tipo1,situacao,equipamento,defeito,servico,tecnico,valor)
values ('4','Conserto','Aprovado','PC','Vírus','Formatação','Sabrina','90');

describe tb_os;

select * from tb_os;

select idos as OS, equipamento as Equipamento, defeito as Defeito, valor as Valor from tb_os;

select  O.idos as OS, data_os as Dataos, equipamento as Equipamento, valor as Valor, tipo1 as Tipo,
C.namecli as Nome, fone1 as Fone, emailcli as Email, defeito as Defeito, situacao as Situação, servico as Serviço,
tecnico as Tecnico
from tb_os as O
inner join tb_cliente as C on (O.idcli = C.idcli);
