CREATE database BancoGer_Join;
USE BancoGer_Join;

create table Fun(
cod_fun int auto_increment primary key not null,
nome varchar (255) not null,
especialidade varchar (255) not null
);

create table dependente(
cod_dependente int auto_increment primary key not null,
nome varchar (255) not null,
cod_fun int,
foreign key(cod_fun) references Fun(cod_fun)
);

INSERT INTO fun(nome,especialidade)
values ("José","Engenheiro"),
       ("João","Mestre de Obras"),
       ("Maria","Contabilista");
       
INSERT INTO dependente(nome,cod_fun)
values ("Pedro",1),
       ("Alice",1),
       ("Luana",3);
       
select * from Fun;
select * from dependente;

delete from dependente 
where cod_dependente = 3;

select fun.nome,dependente.nome
From fun
inner join dependente
on fun.cod_fun=dependente.cod_fun
where fun.cod_fun = 1;

select fun.nome,dependente.nome
From fun
left join dependente 
on fun.cod_fun=dependente.cod_fun
where dependente.nome is null ;

select fun.nome,dependente.nome
From fun
right join dependente 
on fun.cod_fun=dependente.cod_fun
where fun.nome is null ;