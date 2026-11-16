/*Part 1: Schema & Table Creation 
Create a database named apex_hr. Within it, design two tables adhering to these requirements:
--Departments Table: Must include a primary key ID, department name, and office location.
--Employees Table: Must include a primary key ID, first name, last name, unique email, foreign key
linking to departments, salary, and hire date. Ensure proper relational integrity*/

CREATE DATABASE apex_hr;

USE apex_hr;

CREATE TABLE departments (
    department_id INT 				PRIMARY KEY,
    department_name VARCHAR(50) 	NOT NULL,
    location VARCHAR(50)
);

CREATE TABLE employees (
    employee_id INT 				PRIMARY KEY,
    first_name VARCHAR(50) 			NOT NULL,
    last_name VARCHAR(50) 			NOT NULL,
    salary DECIMAL(10, 2) 			NOT NULL CHECK (salary > 0),
    email VARCHAR(100) 				NOT NULL UNIQUE,
    hire_date DATE 					NOT NULL,
    department_id INT				NOT NULL,
   CONSTRAINT fk_employees_department FOREIGN KEY (department_id) REFERENCES departments(department_id)
    );