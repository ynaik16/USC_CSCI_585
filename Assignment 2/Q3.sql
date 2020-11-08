-- Queried in Mysql version 8 installed locally on my computer


create table Track(
PID varchar(4) not null,
Step int unsigned,
Status varchar(1) not null);



select a.PID from Track a, Track b where a.PID != b.PID and (a.Step = 0 and a.Status = 'C') and (b.Step = 1 and b.Status = 'C');
