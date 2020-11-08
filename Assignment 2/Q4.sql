-- created in mysql installed locally on my machine

-- houry_rate = 20 

-- bonus = hourly_rate * sum_of_class_counts * 0.1


create table teach(
id int unsigned not null auto_increment,
instructor varchar(10) not null,
class varchar(12) not null,
students int unsigned not null,
primary key (id));


insert into teach(instructor, class, students)
values("Aleph", "Java", 20),
("Aleph", "Python", 20),
("Aleph", "JavaScript", 15),
("Dat", "Java", 30),
("Dat", "Scratch", 40),
("Bit", "Scratch", 30),
("Bit", "Python", 50),
("Aleph", "Scratch", 40);



select max(sum_of_students)*0.1*20 as bonus from(select sum(students) as sum_of_students from teach group by instructor order by instructor desc) as x;