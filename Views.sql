/*Task 4 (Views): Create a reusable view named v_employee_directory that joins employee
details with their respective department names and locations.*/

CREATE VIEW v_employee_directory AS
SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    e.email,
    d.department_name,
    d.location,
    e.salary,
    e.hire_date
FROM employees e
JOIN departments d ON e.department_id = d.department_id;


SELECT * 
FROM v_employee_directory 
ORDER BY department_name, last_name;