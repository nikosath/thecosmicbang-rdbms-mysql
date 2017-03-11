create database school_db default character set utf8 collate utf8_unicode_ci;
use school_db;
create table students (id int(11) not null auto_increment, first_name varchar(50) not null, last_name varchar(100) not null, primary key(id));
insert into students (first_name, last_name) values ('John', 'Smith');
insert into students (first_name, last_name) values ('Mary', 'Foo');
insert into students (first_name, last_name) values ('Paul', 'Woo');
