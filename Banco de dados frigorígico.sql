create database frigorífico;
Use frigorífico;

create table cliente (
idCliente int primary key auto_increment, 
CNPJ char (18),
Nome varchar(100),
Email varchar (70),
Senha varchar (10),
Endereço varchar (100),
CEP char(10),
Telefone char(20)
);

create table sensor ( 
idSensor int primary key auto_increment,
Tipo char (11), constraint chckTipo check (Tipo IN ('temperatura', 'umidade', 'temp e umid')),
Modelo varchar (20), 
StatusSensor char(3), constraint chckStatusSensor check (StatusSensor in ('on','off')),
Observações varchar (100)
);

create table metrica ( 
idMetrica int primary key auto_increment,
Horario datetime default current_timestamp,
Temperatura float
);

create table transporte(
idCaminhao int primary key auto_increment, 
Modelo varchar (30),
Ano float,
Placa char (10),
Motorista varchar(50),
RG char(15),
Saida varchar (100),
Destino varchar(100)
);

insert into cliente (CNPJ, Nome, Email, Senha, Endereço, CEP, Telefone) values
('02.916.265/0298-18', 'Swift Mercado da Carne', 'swift@hotmail.com', 'amocarnes', 'Marginal Direita do Tietê, nº 500','05118-100', '(11) 4020-8588');

select*from cliente;
 
 insert into sensor (Tipo, Modelo, StatusSensor, Observações) values
 ('temperatura', 'LM35', 'on', 'instalação dia 08 de Março');
 
 select*from sensor;
 
 insert into metrica (Temperatura) values
 ('0.7');
 
 select * from metrica;
 
 insert into transporte (Modelo, Ano, Placa, Motorista, RG, Saida, Destino)values
 ('MERCEDES-BENZ MB 1319', '2012','ABC-5369', 'Rogério', '43867027-8', 'frigorifico friboi', 'swift (id-1)');
 
 select*from transporte;