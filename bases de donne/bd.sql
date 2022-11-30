create database Ges-stage;

use ges-stage;

create table stagiaire(
    idStagiaire int(4) auto_increment primary key,
    nom varchar(50),
    prenom varchar(50),
    civilite varchar(1),
     photo varchar(50),
     idFiliere int(4),
);

create table filiere(
    idFiliere int(4) auto_increment primary key,
    nomFiliere varchar(50),
    niveau varchar(50)
);
create table utilisateur(
    iduser int(4) auto_increment primary key,
    Login varchar(50),
    email varchar(255),
    role varchar(1),
     etat varchar(1),
     pwd varchar(255)

);
alter table stagiaire add constraint foreign key(idFiliere) references filiere(idFiliere); 

insert into stagiaire(nom,prenom,civilite,photo,idFiliere) values
('admin','KOBA','M','OX.jpg',);

insert into filiere(nomFiliere,niveau) values
('STIC','L2');

insert into utilisateur(Login,email,role,etat,pwd) values
('admin','kobomar8@email.com','VISITEUR','1',md5('123'));

select * from stagiaire;
select * from utilisateur;
select * from filiere;