create database employeesdb;
use employeesdb;
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    JobTitle VARCHAR(50),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, JobTitle, Salary)
VALUES
(101, 'Ana', 'Sharma', 'Engineering', 'Software Engineer', 90000),
(102, 'Ben', 'Chen', 'Marketing', 'Marketing Manager', 85000),
(103, 'Carla', 'Lopez', 'Engineering', 'DevOps Engineer', 105000),
(104, 'David', 'Kim', 'Sales', 'Sales Associate', 70000);

CREATE VIEW PublicEmployeeDirectory AS
SELECT
    FirstName,
    LastName,
    Department,
    JobTitle
FROM
    Employees
WHERE
    Department = 'Engineering';
    
    SELECT * FROM PublicEmployeeDirectory;