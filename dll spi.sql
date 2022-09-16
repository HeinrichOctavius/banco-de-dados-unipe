create database spidml;
use spidml;

create table colaborador (
id int auto_increment, 
cpf int,
nome varchar(10) not null,
sexo char(1),
nascimento date,
primary key(id),
unique (cpf),
check (sexo in ('f', 'm')) );

create table endereco (
cod int,
uf char(2),
nome varchar(50),
cidade varchar(30),
primary key (cod),
check (uf in ('MA', 'PI', 'CE', 'RN', 'PB', 'PE', 'AL', 'SE', 'BA')) );

create table reside (
cod int, 
id int,
primary key (cod,id),
foreign key (cod) references endereco(cod),
foreign key (id) references colaborador(id) );


-- inserir dados em tabelas

insert into colaborador (cpf, nome, sexo, nascimento) values (999, 'Juliana', 'f', '1998-07-16');

insert into colaborador (cpf, nome, sexo, nascimento) values (888, 'Thiago', 'm', '1998-03-05');


insert into colaborador values (10, 444, 'Joaquina', 'f', '1985-05-23'), (13, 555, 'Jose', 'f', '1983-04-15'),
 (15, 988, 'Chico', 'm', '1865-11-20');
 
 select * from colaborador; 
 
 insert into endereco values (101, 'PB', 'Rua Epitácio', 'João Pessoa'), 
(102, 'PE', 'Rua Pedro II', 'Camuntanga'), 
(103, 'RN', 'Rua Parnamirim', 'Natal');

select * from colaborador;

insert into endereco values (101, 'pb', 'rua epitacio','joao pessoa'), (102, 'pe', 'rua pedro II', 'camuntanga'),
(103, 'rn', 'rua parnamirim', 'natal');

insert into reside(id,cod) values (1,102), (2,103);

insert into reside(id,cod) values (2,102),(1,103);

-- atualizando dados nas tabelas
select * from colaborador;
update colaborador
set nascimento='1986-12-12'
where id=10;

update colaborador set nome='ABDIAS'
where sexo='m' and cpf=333;

-- apagar dados 
delete from colaborador where id=12;

