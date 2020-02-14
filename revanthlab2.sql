create table branch(
branchname varchar2(20),
branchcity varchar2(10),
assets number(10,5),
primary key(branchname));

create table account(
accno number(10),
branchname varchar2(20),
balance number(10,5),
primary key(accno),
foreign key (branchname)REFERENCES branch(branchname));

create table customer(
customername varchar2(10),
customerstreet varchar2(30),
city varchar(20),
primary key(customername));



create table depositor(
customername varchar2(10),
accno number(10),
primary key(customername,accno),
foreign key(accno) references account(accno),
foreign key(customername) REFERENCES customer(customername));


create table loan(
loannumber number(10),
branchname varchar2(20),
amount number(10),
primary key (loannumber),
foreign key (branchname) references branch(branchname));

create table borrower(
customername varchar2(10),
loannumber number(10),
primary key(customername),
foreign key(customername) references customer(customername),
foreign key(loannumber) references loan(loannumber));
desc branch;
select *from branch;

insert into branch values('&branchname','&branchcity',&assets);
insert into account values('&accno','&branchname','&balance');
insert into customer values('&customername','&customerstreet','&city');
select * from customer;
insert into depositor values('&customername','&accno');
insert into loan values('&loannumber','&branchname','&amount');
insert into borrower values('&customername','&loannumber');
select * from borrower;