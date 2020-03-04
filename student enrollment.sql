create database lab4;
use lab4;
create table student(
reg_no varchar(10),
s_name varchar(10),
major varchar(10),
bdate date,
primary key(reg_no)
);
drop table student;
create table course(
course_id varchar(10),
c_name varchar(10),
dept varchar(10),
primary key(course_id)
);
create table text1(
isbn int,
book_title varchar(10),
publisher varchar(10),
author varchar(10),
primary key(isbn)
);
drop table text;
create table adoption(
course_ID VARCHAR(10),
sem int,
isbn int,
primary key(course_id,isbn),
foreign key(course_id) references course(course_id),
foreign key(isbn) references text1(isbn)
);
create table enroll(
reg_no varchar(10),
course_id varchar(10),
sem int,
marks int,
primary key(reg_no ,course_id),
foreign key(reg_no) references student(reg_no),
foreign key(course_ID) REFERENCES course(course_id)
);
delete from student where reg_no='1db01is01';
insert into student values('1db01is01','kiran','ise','1984-01-02');
insert into student values('1db01cs02','divya','cse','1985-10-12');
insert into student values('1db01me03','babu','mech','1982-09-23');
insert into student values('1db01ec04','john','e&c','1984-02-21');
insert into student values('1db01cs05','asha','cse','1979-10-07');
select *from student;

insert into course values(11,'dcs','cse');
insert into course values(22,'ada','cse');
insert into course values(33,'cn','e&c');
insert into course values(44,'td','mech');
insert into course values(55,'mup','e&c');
select *from course;

insert into text1 values(7722,'vb','phi','holzner');
insert into text1 values(1144,'ds with c','sapna','nandagopal');
insert into text1 values(4400,'c prog','phi','balaguru');
insert into text1 values(5566,'cn','phi','tenenbaum');
insert into text1 values(3388,'mp','tata','brey');
select *from text1;

insert into adoption values(11,3,7722);
insert into adoption values(22,4,7722);
insert into adoption values(11,5,4400);
insert into adoption values(11,8,5566);
insert into adoption values(55,4,3388);
insert into adoption values(44,4,5566);
insert into adoption values(44,7,3388);
select *from adoption;

insert into enroll values('1db01is01',22,5,76);
insert into enroll values('1db01is01',11,3,90);
insert into enroll values('1db01cs02',33,6,55);
insert into enroll values('1db01me03',22,5,75);
insert into enroll values('1db01cs05',44,5,75);
select *from enroll;
