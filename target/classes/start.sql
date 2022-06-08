create database charity_donation;

/*  switch schema to database   */
insert into role (name) value ('ROLE_USER');
insert into role (name) value ('ROLE_ADMIN');

insert into categories (name) value ('clothes');
insert into categories (name) value ('toys');
insert into categories (name) value ('books');
insert into categories (name) value ('other');