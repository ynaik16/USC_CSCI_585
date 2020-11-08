-- created on Mysql version 8 installed locally on my mac



create table Inst(
instructor varchar(8) not null,
subject varchar(12) not null);



create table course(subject varchar(12) not null, primary key(subject));



insert into course(subject) value("JavaScript"),("Scratch"),("Python");



select instructor from Inst a
join course b
on a.subject = b.subject
group by instructor
having count(*) = (select count(*) from course);


-- Description: the query selects instructors as an intance of table 'Inst'
-- and joins the table 'inst' with table 'course' based on the condition that
-- subjects in instance a are equal to the subjects present in instance b of table 
-- 'course', returning all the instructors from tabel 'Inst' who teach all the subjects
-- in table 'course'.

