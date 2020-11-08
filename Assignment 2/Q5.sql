-- created on Mysql version 8 installed locally on my mac



create table Inst(
instructor varchar(8) not null,
subject varchar(12) not null);



create table course(subject varchar(12) not null, primary key(subject));



insert into course(subject) value("JavaScript"),("Scratch"),("Python");



select a.instructor
from Inst a
where (a.subject in (select subject from course)) group by a.instructor
having count(*) = (select count(*) from course);


-- Description: the query selects instructors as intances of table 'Inst'
-- based on the condition that the subject belonging to instance of Table a 
-- also belongs to the subjects in table 'course', returning all the instructors from 
-- tabel 'Inst' who teach all the subjects in table 'course'.