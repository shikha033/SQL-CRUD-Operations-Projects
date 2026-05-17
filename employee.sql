CREATE DATABASE IF NOT EXISTS company;
USE company;

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    ename VARCHAR(50),
    job VARCHAR(50),
    salary INT,
    hire_date DATE,
    dept_id INT
);

INSERT INTO employee VALUES
(1, 'John', 'Manager', 60000, '2023-01-10', 1),
(2, 'Alice', 'Clerk', 35000, '2023-02-15', 2),
(3, 'Bob', 'Salesman', 45000, '2023-03-20', 1),
(4, 'Charlie', 'Analyst', 55000, '2023-04-25', 3);
