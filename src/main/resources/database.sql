create database doctor2;

use doctor2;

create table user (
                      id_user int auto_increment primary key,
                      nom varchar (150) not null,
                      password varchar (200) not null,
                      adresse varchar (300) not null,
                      phone varchar (200) not null ,
                      role varchar (150) not null
);





