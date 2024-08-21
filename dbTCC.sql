drop database dbTCC;

-- criando banco de dados
create database dbTCC;

-- acessando banco de dados;
use dbTCC;

-- criando as tabelas
create table tbAlunos(
codAluno int not null auto_increment,
rmAluno char(5) not null,
nomeAluno varchar (100) not null,
email varchar (100),
senha varchar(10) not null,
modulo char (1),
primary key(codAluno));

create table tbProfessores(
codProf int not null auto_increment,
nomeProf varchar (100) not null,
emailProf varchar(100),
senha varchar(10) not null,
primary key(codProf));

create table tbProdutos(
codProd int not null auto_increment,
nomeProd varchar(100) not null,
quant char(3),
valorkg decimal(9,2),
descricao varchar (500),
primary key(codProd));

create table tbPratos(
codPrato int not null auto_increment,
nomePrato varchar(100) not null,
precoPrato decimal (9,2),
Pratogramas decimal(3,3),
codProd int not null,
primary key(codPrato),
foreign key(codProd)references tbProdutos(codProd));

 -- visualizando a estrutura das tabelas
desc tbAlunos;
desc tbProfessores;
desc tbProdutos;
desc tbPratos;

select * from dbTCC;
