use checkchicken;

-- CRIAÇÃO DAS TABELAS 

-- TABELA DE USUARIO
create table usuario (
idUsuario int primary key auto_increment,
nome varchar(50),
dtNasc date,
cpf char(11),
telefone char(12),
email varchar(50) not null,
senha varchar(30) not null
);

-- TABELA DE EMPRESA
create table empresa (
idEmpresa int primary key auto_increment,
nome varchar(50),
representante varchar(50),
cnpj char(18) not null,
emailRepresentante varchar(50),
telefone char(12)
);

-- TABELA DE ENDEREÇO
create table endereço (
idEndereco int primary key auto_increment,
estado varchar(30),
cidade varchar(30),
cep char(9),
logradouro varchar(40),
numero int,
complemento varchar(50) default('Sem complemento')
);

-- TABELA DE LOTE
create table lote (
idLote int primary key auto_increment,
identificador varchar(50) not null,
qtdGalinha int,
faixaEtaria varchar(15), constraint chkFaixa check (faixaEtaria in ('1-7', '8-14', '15-21','22-28','28 ao ABATE'))
);

-- TABELA DE SENSOR
create table sensor (
idSensor int primary key auto_increment,
temperatura decimal(4,2),
umidade int
);
