create database blog;
use blog;
create table usuario (
	id_usuario00 int auto_increment primary key,
    email varchar (50) not null unique,
    n_usuario varchar(120) not null,
    senha varchar (12)
	);

create table postagem (
	id_postagem int auto_increment primary key,
    t_postagem varchar (120) not null,
    conteudo text not null,
    autor int, 
    foreign key (autor) references usuario(id_usuario)
    );
    
create table comentario(
	id_comentario int auto_increment primary key,
    corpo text not null,
    postagem int,
    foreign key (postagem) references postagem
    (id_postagem)
    );

alter table usuario add sexo char not null;
alter table usuario rename column id_usuario00 to id_usuario; 
drop table postagem;

insert into usuario (email, n_usuario, senha)
