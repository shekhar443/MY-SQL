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
insert into customer_table values(1,'jhg','jhgf',963852741);
insert into sales_table  values(03/02/1992,11,52,'cvghj',522,963),(03/02/1992,11,52,'cvghj',522,963);


select *from product_table;
	alter table sales_table add s_no int;
	alter table sales_table add category varchar(20);
alter table product_table modify column stock varchar(20);
drop table product_table;
alter table customer_table rename customer_details;
show tables;
alter table sales_table drop s_no;
alter table sales_table drop category;
select order_id, customer_id, order_date, price,quantitysales_datasets  from sales_table;
select category from product_datasets having Stationary;
select *from product_datasets;
SELECT category FROM product_datasets WHERE category='Stationary';
select distinct(category) from product_datasets;
select*from sales_datasets where qty>2 and price<500;
select*from customer_datasets where c_name like '%a';
select *from product_datasets order by price desc;
select count(p_code) from product_datasets;
select *from product_datasets;
select p_code,category from product_datasets  group by category;
SELECT category,count(*)
FROM product_datasets
GROUP BY p_code;
select *from product_datasets;

SELECT category, COUNT(category) from product_datasets pd INNER 
JOIN p_code cd ON cd.p_code = pd.p_code
GROUP BY p_code;

select t1.order_no,t1.sname,t1.age,t2.sports from student_table as t1 inner join sports_table as t2 on t1.id=t2.id;











-- 1.Write a query to create a database named SQL basics.--
create database SQL_basics;
-- 2.Write a query to select the database SQL basics.--
use SQL_basics;
-- 3.Write a query to create a product table with fields as product code, product name, price, stock and category, customer table with the fields as customer id, customer name,
-- customer location, and customer phone number and, sales table with the fields as date, order number, product code, product name, quantity, and price.
create table product_table (product_code int, product_name varchar(20), price int, stock int, category varchar(20));
create table customer_table(id int, customer_name varchar(20), customer_location varchar(20),customer_phone_number int);
create table sales_table(date datetime, order_number int, product_code int, product_name varchar(20),quantity int,price int);
-- 4.Write a query to insert values into the tables.--
insert into product_table values(1,'ghjk',456,7411,'fghjk'),(1,'ghjk',456,7411,'fghjk');
insert into customer_table values(1,'jhg','jhgf',963852741),(1,'jhg','jhgf',963852741);
insert into sales_table  values(03/02/1992,11,52,'cvghj',522,963),(03/02/1992,11,52,'cvghj',522,963);
-- 5.Write a query to add two new columns such as S_no and categories to the sales table.--
alter table sales_table add s_no int;
alter table sales_table add category varchar(20);
-- 6.Write a query to change the column type of stock in the product table to varchar.--
alter table product_table modify column stock varchar(20);
-- 7.Write a query to change the table name from customer-to-customer details.--
alter table customer_table rename customer_details;
-- 8.Write a query to drop the columns S_no and categories from the sales table.--
alter table sales_table drop s_no;
alter table sales_table drop category;
-- 9.Write a query to display order id, customer id, order date, price, and quantity from the sales table.--
select order_id, customer_id, order_date, price,quantitysales_datasets  from sales_table;
-- 10.Write a query to display all the details in the product table if the category is stationary.--
select category from product_datasets where category='Stationary';
-- 11.Write a query to display a unique category from the product table.--
select distinct(category) from product_datasets;
-- 12.Write a query to display the sales details if quantity is greater than 2 and price is lesser than 500 from the sales table.-- 
select*from sales_datasets where qty>2 and price<500;
-- 13.Write a query to display the customer’s name if the name ends with a.--
select*from customer_datasets where c_name like '%a';
-- 14.Write a query to display the product details in descending order of the price.--
select *from product_datasets order by price desc;
-- 15.Write a query to display the product code and category from similar categories that are greater than or equal to 2.--
select category, count(category) from product_datasets pd inner join p_code cd on cd.p_code = pd.p_code group by p_code;
-- 16.Write a query to display the order number and the customer name to combine the results of the order and the customer tables including duplicate rows.--
select category, count(category) from product_datasets pd inner join p_code cd on cd.p_code = pd.p_code group by p_code;








-- 1.Create a database named employee, then import data_science_team.csv proj_table.csv 
-- and emp_record_table.csv into the employee database from the given resources.
create database employee;
use employee ;
show tables;
show databases;
use employee ;

-- 2. Create an ER diagram for the given employee database.

-- 3. Write a query to fetch EMP_ID, FIRST_NAME, LAST_NAME, GENDER, and DEPARTMENT from the employee record table, and 
-- make a list of employees and details of their department.
select EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT from emp_record_table order by DEPT;

-- 4.Write a query to fetch EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPARTMENT, and EMP_RATING if the EMP_RATING is: 
-- less than two
select EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT,EMP_RATING from emp_record_table where EMP_RATING < 2;
-- greater than four 
select EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT,EMP_RATING from emp_record_table where EMP_RATING > 4;
-- between two and four
select EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT,EMP_RATING from emp_record_table where EMP_RATING between 2 and 3;

-- 5.Write a query to concatenate the FIRST_NAME and the LAST_NAME of employees in the Finance department from 
-- the employee table and then give the resultant column alias as NAME.
select concat(FIRST_NAME,LAST_NAME) as NAME from emp_record_table where DEPT='FINANCE';

-- 6.Write a query to list only those employees who have someone reporting to them. Also, show the number of reporters (including the President).
		

-- 7.Write a query to list down all the employees from the healthcare and finance departments using union. Take data from the employee record table.
select FIRST_NAME,LAST_NAME FROM emp_record_table where DEPT='FINANCE' UNION select FIRST_NAME,LAST_NAME FROM emp_record_table where DEPT='HEALTHCARE';

-- 8.Write a query to list down employee details such as EMP_ID, FIRST_NAME, LAST_NAME, ROLE, DEPARTMENT, and EMP_RATING grouped by dept.
-- Also include the respective employee rating along with the max emp rating for the department.
select EMP_ID,FIRST_NAME,LAST_NAME,ROLE,DEPT,EMP_RATING from emp_record_table group by DEPT having max(EMP_RATING);

-- 9.--max(SALARY),min(SALARY),9.Write a query to calculate the minimum and the maximum salary of the employees in each role.
-- Take data from the employee record table.
select ROLE,Max(SALARY) as maximum_salary,min(SALARY) as minimum_salary from emp_record_table group by ROLE;

-- 10. Write a query to assign ranks to each employee based on their experience. Take data from the employee record table.
select EMP_ID,FIRST_NAME,LAST_NAME,ROLE,EXP,rank() over(order by EXP desc) as employee_rank from emp_record_table;

-- 11.Write a query to create a view that displays employees in various countries whose salary is more than six thousand.
-- Take data from the employee record table.
select EMP_ID,FIRST_NAME,LAST_NAME,COUNTRY,SALARY from emp_record_table WHERE  SALARY > 6000 order by SALARY asc;

-- 12.Write a nested query to find employees with experience of more than ten years. Take data from the employee record table.
select EMP_ID,FIRST_NAME,LAST_NAME,EXP from emp_record_table where EXP > 10 order by EXP;
select*from emp_record_table;
select*from data_science_team;
select*from proj_table; 

-- 13. Write a query to create a stored procedure to retrieve the details of the employees whose experience is more than three years.
-- Take data from the employee record table
DELIMITER &&  
USE employee;
DROP procedure IF EXISTS details_of_the_employees;
CREATE PROCEDURE details_of_the_employees (exp int)  
BEGIN  
    SELECT * FROM emp_record_table where EXP > exp;
END &&  
DELIMITER ;  
CALL details_of_the_employees(3);	

-- 15.Create an index to improve the cost and performance of the query to find the employee 
-- whose FIRST_NAME is ‘Eric’ in the employee table after checking the execution plan.


-- 16.Write a query to calculate the bonus for all the employees, based on their ratings and salaries 
-- (Use the formula: 5% of salary * employee rating).
select SALARY,EMP_RATING,(0.05*SALARY*EMP_RATING) as bonus from emp_record_table;

-- 17.Write a query to calculate the average salary distribution based on the continent and country.
-- Take data from the employee record table.
select COUNTRY,CONTINENT,SALARY ,avg(SALARY) as avarage_salary from emp_record_table group by COUNTRY;

-- 14. Write a query using stored functions in the project table to check whether the job profile 
-- assigned to each employee in the data science team matches the organization’s set standard.
DELIMITER &&  
USE employee;
DROP procedure IF EXISTS data_science_team;
CREATE PROCEDURE data_science_team(in exp int(2), out designation(50))
begin
select EXP as YEARS FROM emp_record_table where EXP=exp;
IF YEARS<=2 then
set designation="JUNIOR DATA SCIENTIST"
elseif YEARS>2 and YEARS<=5
set designation="ASSOCIATE DATA SCIENTIST"
 elseif YEARS>5 and YEARS<=10
set designation="SENIOR DATA SCIENTIST"
elseif YEARS>5 and YEARS<=10
set designation="LEAD DATA SCIENTIST"
elseif YEARS>5 and YEARS<=10
set designation="MANAGER"
else 
set designation="simplilearn"
end if;
end &&
call data_science_team(5);




