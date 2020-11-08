-- Written in Mysql version 8 installed locally on my Mac.

create table Class
(SID int unsigned not null,
className varchar(12) not null,
Grade varchar(1) not null);



select className,
count(*) as Total
from Class
group by className
order by count(*) desc;

