drop database dbClinicaMedica_ti102;

create database dbClinicaMedica_ti102;

use dbClinicaMedica_ti102;

-- Criando as Tabelas --

create table tbMedico(
codMedico int not null auto_increment,
nome varchar(100) not null,
email varchar(100),
crm char(10) not null unique,
tel char(10) not null,
primary key(codMedico)
);

create table tbPaciente(
codPaciente int not null auto_increment,
nome varchar(100) not null,
email varchar(100),
tel char(10) not null,
cpf char(14) not null unique,
convenio char(19) not null,
primary key (codPaciente)
);

create table tbReceitaMedica(
codReceita int not null auto_increment,
descricao varchar(250),
primary key(codReceita)
);

create table tbConsulta(
codConsulta int not null auto_increment,
dataConsulta datetime,
codMedico int not null,
codPaciente int not null,
codReceita int not null,
primary key(codConsulta),
foreign key(codMedico)references tbMedico(codMedico),
foreign key(codPaciente)references tbPaciente(codPaciente),
foreign key(codReceita)references tbReceitaMedica(codReceita)
);



insert into tbReceitaMedica(descricao)
	values('Tomar dipiroma 500mg duas vezes na semana por 5 dias');

insert into tbPaciente(nome,email,tel,cpf,convenio)
	values ('Geraldo Antunes','geraldo.antunes@gmail.com',
		'98742-5214','258.147.369.22','251.147.369.852.785');


insert into tbMedico(nome,email,crm,tel)
	values('Dr Junior Aguilar',
		'junior.aguilar@medicos.com',
		'35182741-7',
		'98575-8236');

insert into tbMedico(nome,email,crm,tel)
	values('Dr Christine Taranto' ,
		'christine.taranto@medicos.com',
		'36471687-7',
		'94712-3641');

insert into tbConsulta(dataConsulta,codMedico,codPaciente,codReceita)
	values('2022/05/05',2,1,1);

	