-- create a new database db_sql_tutorial
DROP DATABASE IF EXISTS db_sql_tutorial;
CREATE DATABASE db_sql_tutorial;
USE db_sql_tutorial;

-- create table customers
DROP TABLE IF EXISTS db_sql_tutorial.customers;
CREATE TABLE db_sql_tutorial.customers (
  customer_id INT(10) NOT NULL AUTO_INCREMENT,
  first_name  VARCHAR(50) NOT NULL,
  last_name   VARCHAR(50) NOT NULL,
  country     VARCHAR(50) NULL,
  score       INT(32) NULL,
  PRIMARY KEY (customer_id ));

-- Insert customers data
INSERT INTO db_sql_tutorial.customers VALUES (1,'Maria', 'Cramer ', 'Germany',350);
INSERT INTO db_sql_tutorial.customers VALUES (2,'John','Steel','USA', 900);
INSERT INTO db_sql_tutorial.customers VALUES (3,'Georg',' Pipps ', 'UK', 750);
INSERT INTO db_sql_tutorial.customers VALUES (4,'Martin','Müller','Germany', 500);
INSERT INTO db_sql_tutorial.customers VALUES (5,'Peter','Franken','USA', NULL);

-- create table orders
DROP TABLE IF EXISTS db_sql_tutorial.orders;
CREATE TABLE db_sql_tutorial.orders (
  order_id    INT(10) NOT NULL AUTO_INCREMENT,
  customer_id INT(10) NOT NULL,
  order_date  DATE  NULL,
  quantity    INT(32) NULL,
  PRIMARY KEY (order_id));

-- Insert orders data
INSERT INTO db_sql_tutorial.orders VALUES (1001,1,'2021-01-11',250);
INSERT INTO db_sql_tutorial.orders VALUES (1002,2,'2021-04-05',1150);
INSERT INTO db_sql_tutorial.orders VALUES (1003,3,'2021-06-18',500);
INSERT INTO db_sql_tutorial.orders VALUES (1004,6,'2021-08-31',750);

-- create table employees
DROP TABLE IF EXISTS db_sql_tutorial.employees;
CREATE TABLE db_sql_tutorial.employees (
  emp_id      INT(10) NOT NULL AUTO_INCREMENT,
  first_name  VARCHAR(50) NOT NULL,
  last_name   VARCHAR(50) NOT NULL,
  emp_country VARCHAR(50) NULL,
  salary      INT(32) NULL,
  PRIMARY KEY (emp_id ));

-- Insert employees data
INSERT INTO db_sql_tutorial.employees VALUES (1,'John', 'Steel', 'USA', 55000);
INSERT INTO db_sql_tutorial.employees VALUES (2,'Ann', 'Labrune', 'France', 75000);
INSERT INTO db_sql_tutorial.employees VALUES (3,'Marie', 'Bertrand', 'Brazil', 75000);
INSERT INTO db_sql_tutorial.employees VALUES (4,'Georg', 'Afonso', 'UK', 75000);
INSERT INTO db_sql_tutorial.employees VALUES (5,'Marie', 'Steel', 'UK', 75000);

describe customers ;

show databases;
select * from orders;
select * from customers;
select * from employees;
SELECT salary 
FROM employees;
SELECT distinct country from customers;
SELECT  * 
FROM customers 
ORDER BY score ASC; 
SELECT first_name,last_name 
FROM customers;
SELECT  first_name, country from customers;
select * from customers order by score asc;
select * from customers order by last_name asc;
select * from customers order by 4 asc,5 desc;
select country from customers where country='Germany';
select * from customers where country='Germany';
select * from customers where score>500;
select * from customers where score = 500;
select * from customers where country='Germany' and score <= 500;
select * from customers where country= 'Germany' or score > 400;
select * from customers where not score < 400;
select * from customers where score between  100 and 500;
select * from customers where score not between  100 and 500;
select * from customers where customer_id in (1,2,5);
select * from customers where customer_id=1 or customer_id=2 or customer_id=5;
select * from customers where first_name like 'M%';
select * from customers where first_name like '%n';
select * from customers where last_name like '%r%';
select * from customers where last_name like '__l%';
select c.customer_id as cid from customers as c;
select customer_id from customers;
select
	c.customer_id,
    c.first_name,
    o.order_id,
    o.quantity
from customers as c
inner join orders as o
on c.customer_id=o.customer_id;

select 
	c.customer_id,
    c.first_name,
    o.order_id,
    o.quantity
from customers as c
left join orders as o
on c.customer_id=o.customer_id;

select 
	c.customer_id,
    c.first_name,
    o.order_id,
    o.quantity
from customers as c
right join orders as o
on c.customer_id=o.customer_id;

select 
	c.customer_id,
    c.first_name,
    o.order_id,
    o.quantity
from customers as c
left join orders as o
on c.customer_id=o.customer_id
UNION
select 
	c.customer_id,
    c.first_name,
    o.order_id,
    o.quantity
from customers as c
right join orders as o
on c.customer_id=o.customer_id;

select 
	first_name,
    last_name,
    country
from customers
union all
select 
	first_name,
    last_name,
    emp_country
from employees;

select * from customers;
select count(*) from customers;
select count(first_name) from customers;
select count(score) from customers;
select sum(score) from customers;
select sum(customer_id) from customers;
select avg(score) from customers;
select min(score) from customers;
select max(score)from customers;

select count(*),country from customers group by country order by count(*) asc;
select max(score),country from customers group by country order by max(score) asc;
select count(*) ,country from customers group by country having count(*)>1;
select count(*) ,country from customers where country!='usa' group by country having count(*)>1;

select * 
from orders
where customer_id in (select customer_id from customers where score >500);
select 
	upper(first_name),
    lower(last_name),
    concat(first_name,' ',last_name) as full_name,
    length(concat(first_name,'	',last_name)) as length,
    substring(concat(first_name,' ',last_name),-4,3) substr
from employees;


