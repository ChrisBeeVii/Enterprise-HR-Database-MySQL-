/*Task 5 (Stored Procedures): Create a stored procedure named GetEmployeesByDept that
accepts a department ID as input and returns all matching employee records.*/

DELIMITER //

CREATE PROCEDURE GetEmployeesByDept(IN p_department_id INT)
BEGIN
    SELECT 
        e.employee_id,
        e.first_name,
        e.last_name,
        e.email,
        d.department_name,
        e.salary,
        e.hire_date
    FROM employees e
    LEFT JOIN departments d ON e.department_id = d.department_id
    WHERE e.department_id = p_department_id
    ORDER BY e.salary DESC;
END //



CALL GetEmployeesByDept(3);