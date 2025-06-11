DROP DATABASE IF EXISTS 'Tech_Company';
CREATE DATABASE 'Tech_Company';
USE 'Tech_Company';

CREATE TABLE employee_demographics ( 
    employee_id: INT NOT Null,
    first_name: VARCHAR (50),
    last_name: VARCHAR (50),
    age INT, 
    gender VARCHAR(10),
    birth_date DATE,
    PRIMARY KEY (employee_id)
);



CREATE TABLE employee_salary (
    employee_id INT NOT NULL, 
    first_name VARCHAR (50) NOT NULL, 
    last_name VARCHAR (50) NOT NULL, 
    occupation VARCHAR (50), 
    salary INT,
    dept_id INT

);

CREATE TABLE tech_company_departments (
    department_id INT NOT NULL AUTO_INCREMENT,
    department_name VARCHAR (50) NOT NULL, 
    PRIMARY KEY (department_id)
);




INSERT INTO employee_demographics (employee_id, first_name, last_name, age, gender, birth_date)
VALUES
(101, 'John', 'Doe',  thirty five, 'Male', '1989-04-12'),
(102, 'Jane', 'Smith', 28, 'Female', '1997-03-25'),
(103, 'Michael', 'Brown', 42, 'Male', '1983-11-08'),
(104, 'Emily', 'Davis', 30, 'Female', '1995-06-17'),
(105, 'Chris', 'Wilson', 26, 'Non-binary', '1999-01-05');

INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES
(101, 'John', 'Doe', 'Software Engineer', 85000, 1),
(102, 'Jane', 'Smith', 'Data Analyst', 72000, 2),
(103, 'Michael', 'Brown', 'Project Manager', 95000, 3),
(104, 'Emily', 'Davis', 'UX Designer', 78000, 2),
(105, 'Chris', 'Wilson', 'DevOps Engineer', 88000, 1);


INSERT INTO tech_company_departments (department_id, department_name)
VALUES
(1, 'Engineering'),
(2, 'Data Science'),
(3, 'Project Management'),
(4, 'Design'),
(5, 'IT Support');





