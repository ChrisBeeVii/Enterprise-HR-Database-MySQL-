/*Task 1 (Filtering): Write a query to find all employees in the Engineering department (dept_id = 1)
who earn a salary greater than $90,000.*/

SELECT employee_id, first_name, last_name, salary, hire_date
FROM employees
WHERE department_id = 1 AND salary > 90000.00;


/*Task 2 (Aggregations): Write a query using GROUP BY and aggregate functions to show the total
headcount, average salary, and highest salary per department.*/

SELECT 
		d.department_name,
		COUNT(e.employee_id) 			AS total_headcount,
        ROUND(AVG(e.salary), 2) 		AS average_salary,
        MAX(e.salary)					AS highest_salary
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;


/*Task 3 (Subqueries): Write a query to list all employees whose salary is higher than the company
wide average salary.*/

SELECT employee_id, first_name, last_name, email, salary, hire_date
FROM employees
WHERE salary > (
    SELECT AVG(salary) 
    FROM employees
)
ORDER BY salary DESC;