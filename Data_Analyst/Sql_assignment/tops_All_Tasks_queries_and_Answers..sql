Create database Marketco;
use Marketco;

-- Q1: Statement to create Contact table 
CREATE TABLE Contact (
    ContactID INT,
    CompanyID INT,
    Firstname VARCHAR(45),
    Lastname VARCHAR(45),
    Street VARCHAR(45),
    City VARCHAR(45),
    State VARCHAR(2),
    Zip VARCHAR(10),
    IsMain BOOLEAN,
    Email VARCHAR(45),
    Phone VARCHAR(12)
);

-- Q2:Statement to create the Employee table 
CREATE TABLE Employee (
    EmployeeID INT,
    FirstName VARCHAR(45),
    LastName VARCHAR(45),
    Salary DECIMAL(10 , 2 ),
    HireDate DATE,
    JobTitle VARCHAR(25),
    Email VARCHAR(45),
    Phone VARCHAR(12)
);

-- Q3:Statement to create the ContactEmployee table
CREATE TABLE ContactEmployee (
    ContactEmployeeID INT,
    ContactID INT,
    EmployeID INT,
    ContactDate DATE,
    Description VARCHAR(100)
);


create  table company(companyID int primary key ,companyname varchar(45),
street varchar(45),city varchar(45),state varchar(2),zip varchar(10));

alter table contact modify column ContactID int Primary Key;
alter table contact add constraint foreign  Key(CompanyID) references  Company(companyID);

alter table contactemployee add constraint foreign key(ContactID) references contact(ContactID);

alter table employee modify column EmployeeID int primary key;

alter table contactemployee add constraint foreign key(EmployeID) references employee(EmployeeID);

-- Insert data into Company table
INSERT INTO Company (CompanyID, CompanyName, Street, City, State, Zip) VALUES
(1, 'TechCorp', '123 Main St', 'New York', 'NY', '10001'),
(2, 'BizSolutions', '456 Oak Ave', 'Los Angeles', 'CA', '90001'),
(3, 'InnovateX', '789 Pine Rd', 'San Francisco', 'CA', '94101'),
(4, 'NextGen', '321 Elm St', 'Chicago', 'IL', '60601'),
(5, 'FutureSoft', '654 Maple Dr', 'Houston', 'TX', '77001'),
(6, 'DataMinds', '987 Cedar Ln', 'Boston', 'MA', '02101'),
(7, 'CloudNet', '741 Birch Ct', 'Seattle', 'WA', '98101'),
(8, 'AIHub', '852 Spruce St', 'Austin', 'TX', '73301'),
(9, 'CyberTech', '963 Redwood Dr', 'Miami', 'FL', '33101'),
(10, 'SoftWave', '159 Willow Ln', 'Denver', 'CO', '80201');

-- Insert data into Contact table
INSERT INTO Contact (ContactID, CompanyID, FirstName, LastName, Street, City, State, Zip, IsMain, Email, Phone) VALUES
(1, 1, 'John', 'Doe', '123 Main St', 'New York', 'NY', '10001', TRUE, 'johndoe@techcorp.com', '123-456-7890'),
(2, 2, 'Jane', 'Smith', '456 Oak Ave', 'Los Angeles', 'CA', '90001', FALSE, 'janesmith@bizsolutions.com', '234-567-8901'),
(3, 3, 'Mike', 'Johnson', '789 Pine Rd', 'San Francisco', 'CA', '94101', TRUE, 'mikejohnson@innovatex.com', '345-678-9012'),
(4, 4, 'Emily', 'Clark', '321 Elm St', 'Chicago', 'IL', '60601', FALSE, 'emilyclark@nextgen.com', '456-789-0123'),
(5, 5, 'David', 'Brown', '654 Maple Dr', 'Houston', 'TX', '77001', TRUE, 'davidbrown@futuresoft.com', '567-890-1234'),
(6, 6, 'Sarah', 'Miller', '987 Cedar Ln', 'Boston', 'MA', '02101', FALSE, 'sarahmiller@dataminds.com', '678-901-2345'),
(7, 7, 'Kevin', 'Wilson', '741 Birch Ct', 'Seattle', 'WA', '98101', TRUE, 'kevinwilson@cloudnet.com', '789-012-3456'),
(8, 8, 'Rachel', 'Moore', '852 Spruce St', 'Austin', 'TX', '73301', FALSE, 'rachelmoore@aihub.com', '890-123-4567'),
(9, 9, 'Chris', 'Anderson', '963 Redwood Dr', 'Miami', 'FL', '33101', TRUE, 'chrisanderson@cybertech.com', '901-234-5678'),
(10, 10, 'Laura', 'Hall', '159 Willow Ln', 'Denver', 'CO', '80201', FALSE, 'laurahall@softwave.com', '012-345-6789');

-- Insert data into Employee table
INSERT INTO Employee (EmployeeID, FirstName, LastName, Salary, HireDate, JobTitle, Email, Phone) VALUES
(1, 'Alice', 'Taylor', 70000.00, '2023-01-15', 'Software Engineer', 'alicetaylor@techcorp.com', '123-456-7890'),
(2, 'Bob', 'Johnson', 85000.00, '2022-03-10', 'Data Analyst', 'bobjohnson@bizsolutions.com', '234-567-8901'),
(3, 'Charlie', 'Davis', 92000.00, '2021-07-20', 'Project Manager', 'charliedavis@innovatex.com', '345-678-9012'),
(4, 'Diana', 'Evans', 65000.00, '2024-02-05', 'HR Manager', 'dianaevans@nextgen.com', '456-789-0123'),
(5, 'Ethan', 'Wright', 78000.00, '2023-06-12', 'Marketing Specialist', 'ethanwright@futuresoft.com', '567-890-1234'),
(6, 'Fiona', 'White', 81000.00, '2022-09-25', 'Business Analyst', 'fionawhite@dataminds.com', '678-901-2345'),
(7, 'George', 'Harris', 98000.00, '2021-11-30', 'IT Director', 'georgeharris@cloudnet.com', '789-012-3456'),
(8, 'Hannah', 'Adams', 60000.00, '2024-01-18', 'UX Designer', 'hannahadams@aihub.com', '890-123-4567'),
(9, 'Ian', 'Baker', 74000.00, '2023-05-22', 'Finance Manager', 'ianbaker@cybertech.com', '901-234-5678'),
(10, 'Jessica', 'King', 87000.00, '2022-08-15', 'Software Developer', 'jessicaking@softwave.com', '012-345-6789');

-- Insert data into ContactEmployee table
INSERT INTO ContactEmployee (ContactEmployeeID, ContactID, EmployeID, ContactDate, Description) VALUES
(1, 1, 1, '2024-01-10', 'Initial client meeting'),
(2, 2, 2, '2024-02-15', 'Follow-up call'),
(3, 3, 3, '2024-03-05', 'Discussed project scope'),
(4, 4, 4, '2024-04-12', 'Negotiated contract terms'),
(5, 5, 5, '2024-05-18', 'Reviewed marketing strategy'),
(6, 6, 6, '2024-06-25', 'Budget planning meeting'),
(7, 7, 7, '2024-07-05', 'Discussed IT security measures'),
(8, 8, 8, '2024-08-10', 'Explored new UX designs'),
(9, 9, 9, '2024-09-22', 'Reviewed financial reports'),
(10, 10, 10, '2024-10-30', 'Finalized software development plan');


-- Questions:
-- 1)In the Employee table, the statement that changes Alice Taylor ’s phone number 
-- to 215-555-8800 
SET SQL_SAFE_UPDATES = 0;
update Employee 
set phone = 215-555-8800
where FirstName ="Alice" And LastNAme ="Taylor";

SET SQL_SAFE_UPDATES = 1;

-- 2)In the Company table, the statement that changes the name of “TechCorp"
-- .” TechCorp INC” . 
SET SQL_SAFE_UPDATES = 0;
update company
set companyname="TechCorp INC"
where companyname ="TechCorp";


SET SQL_SAFE_UPDATES = 1;

-- In ContactEmployee table, the statement that removes Dianne Connor’s contact 
-- event with Jack Lee (one statement).
-- HINT: Use the primary key of the ContactEmployee table to specify the correct record to remove.
DELETE ContactEmployee  
FROM ContactEmployee  
JOIN Contact ON ContactEmployee.ContactID = Contact.ContactID  
JOIN Employee ON ContactEmployee.EmployeID = Employee.EmployeeID  
WHERE Contact.FirstName = 'John' AND Contact.LastName = 'Doe'  
AND Employee.FirstName = 'Bob' AND Employee.LastName = 'Johnson';



-- Write the SQL SELECT query that displays the names of the employees that 
-- have contacted DataMinds (one statement). Run the SQL SELECT query in 
-- MySQL Workbench. Copy the results below as well. 

SELECT DISTINCT e.FirstName, e.LastName  
FROM Employee e  
JOIN ContactEmployee ce ON e.EmployeeID = ce.EmployeID  
JOIN Contact c ON ce.ContactID = c.ContactID  
JOIN Company co ON c.CompanyID = co.CompanyID  
WHERE co.CompanyName = 'DataMinds';


-- Question: What is the significance of “%” and “_” operators in the LIKE statement? 

-- Answer: In SQL, the LIKE statement is used for pattern matching in text-based searches. It supports wildcards that 
-- help match partial values. The two main wildcards are:
-- % (Percent Sign) – Matches Any Number of Characters
-- It represents zero, one, or multiple characters in a string.
-- Used when you don’t know the exact text but know part of it.
-- Example:
-- SELECT * FROM Employee WHERE FirstName LIKE 'A%';
-- Finds names that start with 'A', such as "Alice", "Andrew", "Aaron".
-- SELECT * FROM Employee WHERE FirstName LIKE '%son';
-- Finds names that end with 'son', such as "Jackson", "Emerson", "Samson".
-- _ (Underscore) – Matches Exactly One Character

-- Represents only a single character in a fixed position.
-- Example:
-- SELECT * FROM Employee WHERE FirstName LIKE 'J_hn';
-- Matches names with four letters, starting with J, ending with n, and having any one character in between, such as "John", "Joan".
-- SELECT * FROM Employee WHERE FirstName LIKE '_an';
-- Matches three-letter names ending in 'an', like "Dan", "Ian".


-- Question:Explain normalization in the context of databases. 
-- Normalization in the context of databases is a process used to organize a relational database into 
-- tables to reduce data redundancy and improve data integrity. The main goals are to ensure that d
-- ata is stored efficiently, and that there are no unnecessary duplications, inconsistencies, or anomalies in the database.

-- Types of Normalization Forms:
-- 1) First Normal Form
-- 2) Second Normal Form
-- 3) Third Normal Form
-- 4) Boyce-Codd Normal Form
-- 5) Fourth Normal Form
-- 6) Fifth Normal Form.

-- Question:What does a join in MySQL mean? 
-- Answer:Join are help to retrieve records from different tables which holds different records
-- By using Joins we can easily retrieve records from tables and can merge different tables.

-- Question:.What do you understand about DDL, DCL, and DML in MySQL?
-- 1. DDL (Data Definition Language):
-- DDL commands are used to define and manage database structures like tables, schemas, and indexes. 
-- These commands define the structure of the database but do not manipulate the data itself. Common DDL commands include:

-- CREATE: Used to create database objects such as tables, views, or indexes.
-- Example: CREATE TABLE employees (id INT, name VARCHAR(100));
-- ALTER: Used to modify an existing database object, such as adding or removing columns in a table.
-- Example: ALTER TABLE employees ADD COLUMN age INT;
-- DROP: Used to delete database objects like tables or databases.
-- Example: DROP TABLE employees;
-- TRUNCATE: Used to remove all records from a table without deleting the table structure.
-- Example: TRUNCATE TABLE employees;
-- DDL operations are typically permanent and cannot be rolled back in most cases.

-- 2. DCL (Data Control Language):
-- DCL commands are used to control access to data in the database. They deal with permissions and access control. Common DCL commands include:

-- GRANT: Used to assign specific permissions to users or roles for accessing and manipulating data.
-- Example: GRANT SELECT, INSERT ON employees TO 'user'@'localhost';
-- REVOKE: Used to remove or revoke permissions previously granted to users or roles.
-- Example: REVOKE SELECT, INSERT ON employees FROM 'user'@'localhost';
-- DCL commands are typically used for security and controlling who has access to what data within the database.

-- 3. DML (Data Manipulation Language):
-- DML commands are used for manipulating the actual data within the database. 
-- These commands are the most commonly used for querying and modifying data. Common DML commands include:

-- SELECT: Used to retrieve data from one or more tables.
-- Example: SELECT * FROM employees;
-- INSERT: Used to insert new records (rows) into a table.
-- Example: INSERT INTO employees (id, name, age) VALUES (1, 'John', 30);
-- UPDATE: Used to modify existing data in a table.
-- Example: UPDATE employees SET age = 31 WHERE id = 1;
-- DELETE: Used to delete records from a table.
-- Example: DELETE FROM employees WHERE id = 1;
-- DML operations can usually be rolled back if executed within a transaction.

-- Question:What is the role of the MySQL JOIN clause in a query, and what are some 
-- common types of joins?
-- Answer:INNER JOIN: Returns rows with matching values in both tables.
-- LEFT JOIN: Returns all rows from the left table and matched rows from the right table; NULL if no match.
-- RIGHT JOIN: Returns all rows from the right table and matched rows from the left table; NULL if no match.
-- FULL JOIN: Returns all rows when there is a match in either table; NULL where there is no match (MySQL needs UNION for this).
-- CROSS JOIN: Returns the Cartesian product of the two tables (every combination of rows).
-- SELF JOIN: Joins a table with itself.




