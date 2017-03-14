create database school_db default character set utf8 collate utf8_unicode_ci;
use school_db;
create table students (id int(11) not null auto_increment, address varchar(255) not null, date_of_registration date not null, name varchar(255) not null, primary key(id));
create table courses (id int(11) not null auto_increment, name varchar(255) not null, primary key(id));
create table student_courses (id int(11) not null auto_increment, course_id int(11) not null, student_id int(11) not null, enrolment_date date not null, primary key(id));
create unique index student_courses_student_course_uidx on student_courses(student_id, course_id);
alter table student_courses add constraint student_courses_student_fk foreign key(student_id) references students(id);
alter table student_courses add constraint student_courses_course_fk foreign key(course_id) references courses(id);
