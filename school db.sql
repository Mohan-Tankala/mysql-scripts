create database school;     
use school;
create table students(sid int primary key,sname varchar(20) not null,
Gender char(1),dob date ,country varchar(10) default "INDIA",
cid int not null,foreign key (cid) references courses(cid));
create table courses(cid int primary key ,cname varchar(30) not null,
fees decimal(10,2),f_id int unique,
foreign key(f_id) references faculty(f_id));

create table faculty(f_id int primary key,
fname varchar(20),salary decimal(10,2));

alter table students
add column phno char(10) not null;
alter table students
add column mail varchar(20) unique;

alter table faculty
add column(phno char(10) not null,mail varchar(20) unique);

insert into  students values(1,"mohan","M",
'2004-06-18',default,101,"7730819665","Tankala@gmail.com");
insert into  students values(2,"murali","M",'2002-05-20',"America",103,
"9160677329","murali@gmail.com");

insert into  faculty values(1000,"KVR",50000,"9848848253","kvr@gmail.com");
insert into  faculty values(100,"jvr",60000,"8466098520","jvr@gmail.com");
insert into  faculty values(101,"guptha",55000,"8374491477","guptha@gmail.com");

insert into courses values(101,"PYHON",16000,1000);
insert into courses values(102,"JAVA",15000,100);
insert into courses values(103,"Django",6000,101);

set sql_safe_updates=false;
update faculty
set f_id=1001
where fname="jvr";

update students
set country="India"
where sid=2;
insert into students values(3,"Deepu","F",'2004-05-09',default,102,"8093348828","deepu@gmail.com");
insert into students values(4,"Ammu","F",'2004-05-09',default,101,"8096958875","ammu@gmail.com");
insert into students values(5,"chitti","F",'2004-05-09',default,103,"8096958874","chitti@gmail.com");

alter table courses modify cid int not null;
alter table courses modify cname varchar(30) not null;

update students
set dob='2005-07-11'
where sid=5;
