CREATE DATABASE assign_db;  

use assign_db;
drop table salesman;
CREATE TABLE salesman(  
    sales_id int NOT NULL,  
    name varchar(45) NOT NULL,  
    city varchar(35) NOT NULL,  
    commision float,
    grade int NOT NULL,
    salary int NOT NULL,
    department_id int,
    dep_name varchar(30) NOT NULL
);  

select * from salesman;

INSERT INTO salesman ( sales_id, name, city, commision, grade, salary, department_id, dep_name)     
VALUES (5001, 'Stephen', 'New York', 0.15, 100 , 4000, 1, 'Marketing'),     
(5002, 'Joseph', 'Paris', 0.13, 200, 10000,3, 'Sales'),     
(5003, 'John', 'London', 0.11, 300, 50000,1, 'Marketing'),    
(5004, 'Donald', 'Paris', 0.14, 100, 8000, 4, 'IT'),    
(5005, 'Joseph', 'Rome', 0.13, 200, 9000, 2, 'HR'),    
(5006, 'Peter', 'San Jose', 0.12, 300, 2000,3,'Sales'); 

select sales_id , name  from salesman;

select * from salesman order by commision ASC;

select * from salesman where city='Paris';

select * from salesman where grade=300;

select sales_id, name, city, salary from salesman where salary<6000;


select * from salesman where salary>8000;

select sales_id, name, city, salary from salesman where name LIKE 'Jo%';

INSERT INTO salesman ( sales_id, name, city, commision, grade, salary, dep_name)     
VALUES (5007, 'Sara', 'New York', 0.15, 100 , 4000, 'HR'),     
(5008, 'Joshuwa', 'Paris', 0.17, 200, 10000, 'IT'),     
(5009, 'Kiely', 'London', 0.12, 300, 50000, 'Marketing');

select sales_id, name, city, salary, department_id from salesman where department_id IS NULL;

select * from salesman where dep_name='Marketing';