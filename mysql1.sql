create database hai;
use hai;
CREATE TABLE hello( SERIAL_NO TINYINT, STUDENT_NAME CHAR(40),ROLL_NO INT(5),gender varchar(10),SUB_NAME CHAR(10)); -- create table with column names--  
SELECT*FROM hello; -- select all columns from table--
alter table hello add gender varchar(2); -- add clom to the table--
alter table hello add father_name varchar(20); -- add clom to the table-
SELECT*FROM hello; -- select all columns from table--
alter table hello add mother_name char(10); -- change colm name in the table--
alter table hello change father_name f_name char(10);  -- change colm name in the table--
SELECT*FROM hello; -- select all columns from table--
alter table hello drop column g; -- will delete particular colm in the table--
alter table hello add gender varchar(10); -- will delete particular colm in the table--
create table chandu(ss int(10),f varchar(10),h char(10)); -- create table with column names--
truncate table chandu;-- will delete data present in the table--
drop table chandu; -- will delete entair table--
select SERIAL_NO,STUDENT_NAME,ROLL_NO from hello; -- select particular colm in the table --
insert into hello(SERIAL_NO,STUDENT_NAME,ROLL_NO,SUB_NAME,f_name,mother_name,gender) values(1,'shekhar',100,'ece','srinaiah','laxvamma','M'),(2,'she',101,'eee','srinah','laxvaa','F'),(3,'chandu',103,'cse','ah','laaa','M'); -- inserting data into tables--
select*from hello; -- display tables--
insert into hello values (4,'dhf',104,'civil','dfs','sdfsf','M'),(5,'fvxcd',105,'mech','fds','fsfs','F'); -- inserting values into table without using clom names--
select*from hello; -- display tables--
update hello set gender='M' where gender ='F';
select*from hello; -- display tables--
update hello set gender='M' where gender ='F';
select*from hello; -- display tables--
update hello set SERIAL_NO=10 WHERE GENDER='M' ;
select*from hello; -- display tables--
Update hello set SERIAL_NO=10;
select*from hello; -- display tables--
Update hello set SERIAL_NO=10;
SET SQL_SAFE_UPDATES=0; -- ERROR
Update hello set SERIAL_NO=10; -- UPDATE A CELL--
select*from hello; -- display tables--
DELETE FROM HELLO WHERE ROLL_NO<102; -- DELETE ROWS--
select*from hello; -- display tables--
create table kowshik (id int (4) primary key , first_name char(40) not null, last_name char(40),email char(30),branch char(10),phnum int(15));
select*from kowshik;
insert into kowshik values(1,'fd','fgd','fdg@mail','ece',56234),(2,'GFBFGB','FGHFGB','gfg@gmaIL','nfnv',65244),(3,'NBV','FGDX','FHGNB','DFV',86458465);
select*from kowshik;
CREATE TABLE ST(ID INT AUTO_INCREMENT,NAME CHAR(40),GMAIL CHAR(40),PRIMARY KEY (ID));
INSERT INTO ST VALUES (1,'gfgedf','gbvc'),(2,'gfdv','fdgd'),(3,'dfd','fdv'),(4,'FFDSS','fsdg');
select*from st;
CREATE TABLE ct(id int(12) auto_increment,year int(10),sem int(10),primary key(id));
drop table ct;
CREATE TABLE ct(id int auto_increment,year int(10),sem int(10),primary key(id));
drop table ct;
CREATE TABLE ct(id int auto_increment,year int(10),sem int(10),primary key(id));
select*from ct;
insert into ct values (101,1,1),(102,1,2),(103,2,1),(104,2,2);
select*from ct;
create table scl(student_id int,certificate_id int,received_date date,foreign key (student_id) references st(id),foreign key(certificate_id) references ct(id) );
insert into scl values(1,101,'1998-10-20'),(2,102,'1998-12-20'),(3,103,'1996-11-23'),(4,104,'1995-10-21');
select*from scl;
create table sd(id int auto_increment,name varchar(30) not null,gmail varchar(30) not null,age int not null,primary key(id),unique(name),check(age>15));
select*from sd;
insert into sd values(3,'dfvfdb','dfgdvc',56),(4,'dfvfvdb','dvcbfgdvc',10);
select*from sd;
insert into sd values(2,'dfnvfdb','dfngdvc',56),(4,'dfvvxfvdb','dvccvbfgdvc',16);
select*from sd WHERE ID< 3;
SELECT*FROM SD WHERE name like'df%';
select*from sd;
SELECT*FROM SD WHERE name like 'dfv%';
select*from sd;
select*from sd where age<56;
select*from sd where age>56;
select*from sd where age<>56;
select*from sd where age=56;
select*from sd where age in (56,16);
insert into sd values(3,'dfvkgj','dfvgjj',28);
select*from sd;
select*from sd where age between 1 and 100;
select count(*) as no_of_students from sd where age<100;
select count(*) as no_of_students from sd where age=100;
select count(*) as no_of_students from sd where age>0;
select avg(age) as avarage_age from sd where id<3;
select avg(age) as avarage_age from sd where name like 'dfv%';
select*from sd;
select min(id) as least_id from sd where age=56;
select max(id) as least_id from sd where age=56;
select min(id) as least_id from sd where age<=56;
select max(id) as least_id from sd where age<=56;
select sum(age) as total_age from sd where age<=60;
select sum(id) as total_age from sd where age<=60;
select distinct(age) as diff from sd where age<=80;
select distinct(id) as diff from sd where age<=80;
select count(id) as no_of_students from sd where age<100;
select count(name) as no_of_students from sd where age<100;
select age from sd;
select name,age from sd;
select id,age from sd where id=4;
select avg(distinct age) from sd ;
create table student_table(id int, sname char(10), age int);
drop table student_table;
create table student_table(id int, sname char, age int);
create table marks_table(id int, marks int, srank int);
create table sports_table(id int, sports char);
create table ncc_nss_table(id int, ncc_nss char);
select*from student_table;
insert into student_table values(1,'fdg',15),(2,'fffd',21),(3,'vcf',23),(4,'sdf',22),(5,'dff',23),(6,'fdgd',22),(7,'daa',22),(8,'dfsd',24),(9,'vxc',25),(10,'dsfs',21);
alter table student_table change sname sname char(20);
select*from student_table;
insert into student_table values(1,'fdg',15),(2,'fffd',21),(3,'vcf',23),(4,'sdf',22),(5,'dff',23),(6,'fdgd',22),(7,'daa',22),(8,'dfsd',24),(9,'vxc',25),(10,'dsfs',21);
select*from marks_table;
insert into marks_table values(1,56,11),(2,45,9),(3,95,7),(4,56,5),(5,48,3),(6,85,1),(7,49,12),(8,56,10),(9,96,8),(10,95,4),(11,98,6),(12,75,2);
select*from sports_table;
insert into sports_table values(1,'ncc'),(2,'ncc'),(3,'nss'),(4,'nss'),(5,'ncc'),(6,'ncc'),(7,'nss'),(8,'ncc'),(9,'nss'),(10,'ncc');
alter table sports_table change sports sports char(30);
select*from sports_table;
alter table ncc_nss_table change ncc_nss ncc_nss char(30);
insert into ncc_nss_table values(1,'ncc'),(3,'nss'),(5,'ncc'),(6,'ncc'),(8,'ncc'),(9,'nss');
insert into sports_table values (4,'cricket'),(7,'kabaddi'),(2,'cricket'),(3,'kabaddi'),(1,'chess');
select*from sports_table;
select*from marks_table;
select*from ncc_nss_table;
select*from student_table;
select*from student_table inner join marks_table on student_table.id=marks_table.id;
select * from student_table as t1 inner join marks_table as t2 on t1.id=t2.id;
select t1.id,t1.sname,t1.age,t2.marks,t2.srank from student_table as t1 inner join marks_table as t2 on t1.id=t2.id;
select*from student_table as t1 inner join sports_table as t2 on t1.id=t2.id;
select t1.id,t1.sname,t1.age,t2.sports from student_table as t1 inner join sports_table as t2 on t1.id=t2.id;
select t1.id,t1.sname,t1.age,t2.sports from student_table as t1 left join sports_table as t2 on t1.id=t2.id;
select t1.id,t1.sname,t1.age,t2.sports from student_table as t1 inner join sports_table as t2 on t1.id=t2.id;
select t1.id,t1.sname,t1.age,t2.sports from student_table as t1 left join sports_table as t2 on t1.id=t2.id;
select t1.id,t1.sname,t1.age,t2.sports from student_table as t1 inner join sports_table as t2 on t1.id=t2.id;
select t1.id,t1.sname,t1.age,t2.sports from student_table as t1 left join sports_table as t2 on t1.id=t2.id;
select t1.id,t1.sname,t1.age,t2.sports from student_table as t1 right join sports_table as t2 on t1.id=t2.id;
select*from sports_table as t1 inner join ncc_nss_table as t2 on t1.id=t2.id;
select*from sports_table as t1 join ncc_nss_table as t2 on t1.id=t2.id;
select*from student_table as t1  join ncc_nss_table as t2 on t1.id=t2.id;
select *from marks_table as t1 straight_join marks_table as t2 on t1.marks<t2.marks;
select t1.id,count(t1.id) as no_of_students from marks_table as t1 inner join marks_table as t2 on t1.marks<t2.marks group by t1.id order by t1.id;
select*from marks_table;
select*from marks_table order by srank ;
select*from marks_table order by srank asc;
select*from marks_table order by srank desc ;
select*from marks_table order by marks ;
select*from marks_table order by marks asc;
select*from marks_table order by marks desc ;
select*from marks_table order by id ;
select*from marks_table order by id asc ;
select*from marks_table order by id desc;
select*from marks_table order by id ;
select marks,srank from marks_table order by marks desc,srank desc ;
 create table Student_data (id int(15),name char(15),age int(15),marks int(10),sports char(20));
drop table Student_data;
 create table Student_data (id int,name char(15),age int,marks int,sports char(20));
drop table Student_data;
 create table Student_data (id int,name char(15),age int,marks int,sports char(20));
 insert into Student_data values(1,'fbb',25,55,'c'),(2,'bdb',45,45,'v'),(3,'vdfv',22,55,'k'),(4,'vxc',20,22,'v'),(5,'fd',40,45,'c'),(6,'tyyu',23,87,'k'),(7,'fg',25,45,'k'),(8,'fvgh',26,56,'k'),(9,'ngg',45,58,'c'),(10,'sfdg',22,85,'v'),(11,'fdfd',26,99,'v');
select*from Student_data;
select*
from
Student_data
group by 
sports;
select age ,count(id) as total,avg(marks)
from
Student_data
group by
age,sports;
select*from Student_data;
select sports,count(name) no_of_students,min(marks) avarage_marks
from
student_data
group by
sports
having
no_of_students>1 and avarage_marks<40;
select*from Student_data;
select name,marks,rank() over(order by marks desc) as student_rank
from 
Student_data;
select name,marks,row_number() over(order by marks desc) as student_rank
from 
Student_data;
select name,marks, dense_rank() over(order by marks desc) as student_rank
from 
Student_data;
select name,marks,rank() over(order by marks desc) as student_rank
from 
Student_data;
select name,marks,row_number() over(order by marks desc) as student_rank
from 
Student_data;
select name,marks, dense_rank() over(order by marks desc) as student_rank
from 
Student_data;
select*from Student_data;
select *
from Student_data where sports='k' union select*from Student_data where sports='c' 
group by sports
order by id;
select*from Student_data;
select count(*) no_of_students where sports='k' and marks>(select avg(marks) from Student_data where sports='c');
select*from Student_data;
select count(*) no_of_students from Student_data where sports='k' and marks>(select avg(marks) from Student_data where sports='c');
select avg(marks) from Student_data where sports='c';
select count(sports) no_of_students from Student_data where sports='k';
select count(*) no_of_students from Student_data where sports='k' and marks>(select avg(marks) from Student_data where sports='c');
select avgchandu(marks) from Student_data where sports='c';-- 52
select *from Student_data where sports='k' and marks>52;-- 55 87 56
select count(*) no_of_students from Student_data where sports='k' and marks>(select avg(marks) from Student_data where sports='c');
select count(*) no_of_students from Student_data where sports='k' and marks<(select avg(marks) from Student_data where sports='c');

select name 
from 
student
where 
marks >75
order by
subsrting(name,length(name)-2,3) asc,
id asc;

drop database shekhar;

create database kowshik;

create database SQL_basics;
use SQL_basics;
create table product_table (product_code int, product_name varchar(20), price int, stock int, category varchar(20));
select*from product_table;
create table customer_table(id int, customer_name varchar(20), customer_location varchar(20),customer_phone_number int);
create table sales_table(date datetime, order_number int, product_code int, product_name varchar(20),quantity int,price int);
insert into product_table values(1,'ghjk',456,7411,'fghjk'),(1,'ghjk',456,7411,'fghjk');
select *from product_table;

alter table sales_table add category varchar(20);


alter table product_table modify column stock varchar(20);
drop table product_table;
alter table customer_table rename customer_details;
show tables;
alter table sales_table drop category;

select order_number, customer_id, order_date,price,quantity from sales_table;
select*from sales_table;