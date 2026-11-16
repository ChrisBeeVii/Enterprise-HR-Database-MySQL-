/*Part 2: Data Seeding
Populate your database with realistic sample records:
--Insert at least 3 departments (e.g., Engineering, Human Resources, Sales).
--Insert at least 10 employees distributed across these departments with varying salaries and hire
dates.*/

INSERT INTO departments(department_id, department_name, location) VALUES 
(1, 'Engineering', 'Abuja'), 
(2, 'Human Resources', 'Abuja'), 
(3, 'Sales', 'Lagos');


INSERT INTO employees VALUES 
(1, 'Amina', 'Bello', 75000.00, 'amina.bello@example.com', '2021-03-15', 1),
(2, 'Chidi', 'Okonkwo', 82000.00, 'chidi.okonkwo@example.com', '2019-08-22', 3),
(3, 'Elena', 'Rostova', 68000.00, 'elena.rostova@example.com', '2022-01-10', 2),
(4, 'Marcus', 'Vance', 91000.00, 'marcus.vance@example.com', '2018-11-05', 1),
(5, 'Priya', 'Sharma', 79500.00, 'priya.sharma@example.com', '2020-06-18', 3),
(6, 'Liam', 'Gallagher', 62000.00, 'liam.gallagher@example.com', '2023-02-01', 2),
(7, 'Sofia', 'Rodriguez', 88000.00, 'sofia.rodriguez@example.com', '2019-04-14', 3),
(8, 'Tunde', 'Adeleke', 73000.00, 'tunde.adeleke@example.com', '2021-09-30', 2),
(9, 'Yuki', 'Tanaka', 95000.00, 'yuki.tanaka@example.com', '2017-05-12', 1),
(10, 'Hannah', 'Abbott', 67000.00, 'hannah.abbott@example.com', '2022-07-25', 3);
