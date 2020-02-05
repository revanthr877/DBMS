create table person
(
driver_id varchar2(10),
name varchar2(20),
address varchar2(15),
primary key(driver_id)
);

create table car(
reg_no varchar2(10),
model varchar2(10),
year number(4),
primary key(reg_no)
);

create table accident
(
report_no number(5),
adate date,
location varchar2(15),
primary key(report_no)
);

create table owns 
(
driver_id varchar2(10),
reg_no varchar2(10),
primary key(driver_id,reg_no),
foreign key(driver_id)references person(driver_id),
foreign key(reg_no)references car(reg_no)
);

create table participated
(
driver_id varchar2(10),
reg_no varchar2(10),
report_no number(5),
damage_amt number(7,2),
primary key(driver_id,reg_no,report_no),
foreign key(driver_id,reg_no)references owns(driver_id,reg_no)on delete cascade,
foreign key(report_no)references accident(report_no)on delete cascade
);

insert into person values
('&driver_id','&name','&address');
insert into car values
('&reg_no','&model',&year);
insert into accident values
(&report_no,'&date','&location');
insert into owns values
('&driver_id','&reg_no');
insert into participated values
('&driver_id','&reg_no','&report_no',&damage_amt);


select *from person;
select *from car;
select *from accident;
select *from owns;
select *from participated;
