USE Tech_Company;

CREATE TABLE employee_demographics ( 
    employee_id INT NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT, 
    gender VARCHAR(20),
    birth_date DATE,
    PRIMARY KEY (employee_id)
);

CREATE TABLE tech_company_departments (
    department_id INT NOT NULL AUTO_INCREMENT,
    department_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (department_id)
);

CREATE TABLE employee_salary (
    employee_id INT NOT NULL, 
    first_name VARCHAR(50) NOT NULL, 
    last_name VARCHAR(50) NOT NULL, 
    occupation VARCHAR(50), 
    salary INT,
    dept_id INT,
    FOREIGN KEY (employee_id) REFERENCES employee_demographics(employee_id),
    FOREIGN KEY (dept_id) REFERENCES tech_company_departments(department_id)
);
