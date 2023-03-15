create database db_sps;
use db_sps;
create table funcionario
(
	num_func int auto_increment primary key,
    nome varchar(100) not null,
    bi varchar(13) not null,
    estado_civil varchar(50) default "Solteiro",
    genero enum("M","F") not null,
    cargo varchar(100) not null,
    nascimento date not null,
    foto varchar(60),
    email varchar(255),
    telefone int not null,
    morada text,
    salario int
);
create table process_salario
(
	id int not null primary key,
    num_func int not null,
    foreign key(num_func) references funcionario(num_func),
    horas_extras int not null,
    faltas int not null,
    salario_bruto int not null
);
select * from funcionario;
insert into funcionario(nome, bi, estado_civil, genero, cargo, nascimento, foto, email, telefone, morada, salario) values("Constantino Fiança", "098765487LA09", "Solteiro", "M", "Programador Senior", "2002-07-09", NULL, NULL, 938934448, "Grafanil bar", 320000);
alter table funcionario change morada morada text not null;
alter table funcionario change salario salario int not null;
show tables