create table aula_uf
(
	siglaUF char(2) primary key,
	nomeUF varchar(20) not null
)

create table aula_aluno
(
	idAluno int identity,
	RA char(5) not null unique,
	nomeAluno varchar(50) not null,
	UFAluno char(2)
	primary key (idAluno),
	foreign key (UFAluno) references aula_uf (siglaUF)
)