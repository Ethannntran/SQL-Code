USE Tech_Company;

-- 1. Simple SELECT query
SELECT * FROM employee_demographics;

-- 2. Filtered SELECT
SELECT first_name, last_name, age 
FROM employee_demographics 
WHERE age > 30;

-- 3. ORDER BY
SELECT first_name, last_name, salary 
FROM employee_salary 
ORDER BY salary DESC;

-- 4. JOIN: Combine employee data with salary and department info
SELECT 
    ed.employee_id,
    ed.first_name,
    ed.last_name,
    ed.gender,
    es.occupation,
    es.salary,
    d.department_name
FROM employee_demographics ed
JOIN employee_salary es ON ed.employee_id = es.employee_id
JOIN tech_company_departments d ON es.dept_id = d.department_id;

-- 5. Aggregate: Average salary by department
SELECT 
    d.department_name,
    ROUND(AVG(es.salary), 2) AS avg_salary
FROM employee_salary es
JOIN tech_company_departments d ON es.dept_id = d.department_id
GROUP BY d.department_name
ORDER BY avg_salary DESC;

-- 6. Subquery: Find employees earning above average salary
SELECT 
    first_name,
    last_name,
    salary
FROM employee_salary
WHERE salary > (SELECT AVG(salary) FROM employee_salary);

-- 7. CASE Statement: Categorize salary levels
SELECT 
    first_name,
    last_name,
    salary,
    CASE 
        WHEN salary >= 90000 THEN 'High'
        WHEN salary >= 75000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_category
FROM employee_salary;

-- 8. Date Function: Calculate age from birth_date
SELECT 
    first_name,
    last_name,
    birth_date,
    TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) AS calculated_age
FROM employee_demographics;

-- 9. GROUP_CONCAT: List all employees in each department
SELECT 
    d.department_name,
    GROUP_CONCAT(CONCAT(es.first_name, ' ', es.last_name) SEPARATOR ', ') AS employees
FROM employee_salary es
JOIN tech_company_departments d ON es.dept_id = d.department_id
GROUP BY d.department_name;

-- 10. LIMIT: Top 3 highest paid employees
SELECT first_name, last_name, salary
FROM employee_salary
ORDER BY salary DESC
LIMIT 3;
