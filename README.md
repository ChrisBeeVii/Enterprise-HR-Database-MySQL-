# Enterprise HR Database (`apex_hr`)

This project is a relational database built with MySQL for a company called **Apex Global**. As organizations grow, relying on scattered spreadsheets makes it difficult to track employee records accurately and generate timely reports. The main purpose of `apex_hr` is to provide a centralized, organized system that securely stores information about the company's departments and workers, while making it easy to answer everyday Human Resources and management questions using SQL.



## 1. How the Database is Organized

To keep information neat, prevent duplicate entries, and eliminate human error, the database is structured around two connected tables:

* **Departments Table (`departments`):** Acts as the master list for the company's core business units, **Engineering**, **Human Resources**, and **Sales**, along with their assigned office locations. Each department is given a unique ID number so it can be easily referenced across the system.


* **Employees Table (`employees`):** Stores detailed profiles for 10 workers across the organization. It captures each employee's first and last name, a unique corporate email address (preventing duplicate accounts), their annual salary, and the exact date they were hired.



**Built-In Data Safety:**

The two tables are connected using a foreign key link, ensuring that every single worker is tied to a real, existing department. Because of this relationship, the database automatically enforces data safety rules, preventing invalid records from being entered and blocking a department from being accidentally deleted if employees are still assigned to it.



## 2. Solving Everyday HR Questions

Once the database structure was built and populated with realistic sample records, I wrote a series of SQL queries and database tools to help HR teams find useful insights quickly:

* **Filtering:** A targeted query that searches the Engineering team (`dept_id = 1`) and lists all technical staff making more than $90,000, helping management review top-tier compensation.


* **Aggregations:** A department-by-department breakdown using `GROUP BY` and summary functions (`COUNT`, `AVG`, and `MAX`). In seconds, HR can see the total headcount, the average pay per team, and the highest salary within each group.


* **Subqueries:** A dynamic query that calculates the overall company-wide average salary behind the scenes and automatically lists every employee earning above that benchmark.


* **Views:** A saved virtual table named `v_employee_directory` that automatically merges worker details with their department names and office locations. Instead of writing complex table joins every time someone needs a contact list, HR can simply pull from this ready-made directory.


* **Stored Procedure:** A reusable shortcut named `GetEmployeesByDept` designed to save time on routine lookups. Rather than typing out a full query, a user simply enters a department ID number, and the database immediately returns a clean, sorted roster of everyone on that team.




## 3. What This Project Shows

This project demonstrates how to take raw company data and turn it into a reliable, working backend system. Specifically, it highlights my ability to:

* Design clean databases from scratch using proper table structures, primary keys, and foreign keys.


* Protect data quality by enforcing unique fields and relational rules that keep records accurate.

* Write practical, readable SQL, from basic filtering and grouping to subqueries, views, and stored procedures, that turns raw employee records into clear answers for business decision-makers.
