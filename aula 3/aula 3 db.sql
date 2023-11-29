create database if not exists biblioteca;

use biblioteca;

create table if not exists assunto(
	id_assunto int auto_increment primary key,
    nome varchar(30) not null
);

create table if not exists livro(
	id_livro int not null,
	primary key (id_livro),
    
    titulo varchar(50) not null,
    autor varchar(50) not null,
	lancamento datetime,
    copias int,

    id_assunto int,
    foreign key (id_assunto) references assunto(id_assunto)
);

create table if not exists aluno(
	id_cpf int not null,
    primary key (id_cpf),
    
    nome varchar(50) not null,
    email varchar(50) not null,
    telefone varchar(20) not null
);

create table if not exists emprestimo(
	id_emprestimo int auto_increment,
	primary key (id_emprestimo),
    
	data_emprestimo timestamp default current_timestamp(),
    data_devolicao datetime,
    multa float,
    
	id_cpf int,
    id_livro int,
    foreign key (id_cpf) references aluno(id_cpf),
    foreign key (id_livro) references livro(id_livro)
);

/*abaixo escolha qual tabela quer ler*/
/*select * from assunto;*/