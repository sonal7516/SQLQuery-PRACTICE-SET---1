-----SQL Query Practice set 1----
create database Employee_Details
use Employee_Details

CREATE TABLE Employee
(Emp_ID INT PRIMARY KEY IDENTITY(100,1), 
Emp_Name VARCHAR(50), 
Department_ID INT, 
Salary DECIMAL)

INSERT INTO Employee VALUES
('Sachin Tendulkar',10,20000),
('Mahendra Singh Dhoni',20,10000),
('Yuvraj Singh',10,14900),
('Rohit Sharma',20,9800),
('Virendra Sehwag',30,20000),
('Sourabh Ganguly',40,85000),
('Ravi Shastri',50,15000),
('Rahul Dravid',20,35000),
('Anil Kumble',30,15000),
('Dinesh Kartik',20,10000),
('Andrew Flintoff',10,8500),
('Hardik Pandya',60,8000),
('Aaron Finch',10,15000),
('Shane Warne',30,15000),
('Ricky Ponting',10,15000),
('Glenn McGrath',10,15000),
('Muttiah Muralitharan',10,15000),
('Zaheer Khan',10,10000),
('Suresh Raina',10,15000),
('R Ashwin',10,10500),
('Rashid Khan',10,8900),
('KS Williamson',10,9000),
('BB McCullum',10,14000),
('Jasprit Bumrah',10,15000),
('ABD',10,20000)



---Q.1- Write a Query to display the employee details whose salary is less than 10000--
SELECT * FROM Employee WHERE Salary <10000

---Q.2- Write a Query to display the employee details whose salary is greater than or equal to 9000 and less than 15000----

SELECT * FROM Employee WHERE Salary >=9000 AND Salary<15000

---Q.3- Write a Query to display the employee details whose salary is not between 9000 and 15000---

SELECT * FROM Employee WHERE NOT Salary BETWEEN 9000 AND 15000

---Q.4- Write a Query to display the employee details whose name starts with 'r'---

SELECT * FROM Employee WHERE Emp_Name LIKE 'R%'

---Q.5- Write a Query to display the employee details whose name ends with ‘y’--

SELECT * FROM Employee WHERE Emp_Name LIKE '%Y'

---Q.6- Write a Query to display the employee details whose name contains the letter ‘a’--

SELECT * FROM Employee WHERE Emp_Name LIKE '%A%' 

---Q.7- Write a Query to display the employee details whose names contains only three letters--

SELECT * FROM Employee WHERE Emp_Name LIKE '___'

---Q.8- Write a Query to display the employee details whose names contain ‘r’ and salary greater than 9000--

SELECT * FROM Employee WHERE Emp_Name LIKE '%R%' AND Salary>9000 

---Q.9-Write a Query to display the employee details whose salary is greater than Rahul Dravid--

SELECT * FROM Employee WHERE Salary>(Select Salary FROM Employee WHERE Emp_Name = 'Rahul Dravid')

---Q.10- Write a Query to display the employee details whose employee id starts with 1 and ends with 1--

SELECT * FROM Employee WHERE Emp_ID LIKE '1%1'

---Q.11- Write a query to change the deptno as ‘10’whose employee id is 101, 103, 107--

UPDATE Employee SET Department_ID = 10 WHERE Emp_ID IN (101,103,107)
--(The IN operator allows you to specify multiple values in a WHERE clause.)-- 
--UPDATE Employee SET Department_ID= NULL WHERE Emp_ID IN(115,112)--

---Q.12- Write a query to change the deptno as 20 who does not have deptno--

UPDATE Employee SET Department_ID= 20 WHERE Department_ID IS NULL

---Q.13- Write a query to change the employee salaries as 12000 who are working under 10 dept and their names starts with ‘r’--

UPDATE Employee SET Salary=12000 WHERE Emp_Name LIKE 'R%' AND Department_ID=10

---Q.14-  Write a query to change the deptno as 30 whose second letter is ‘a'--

UPDATE Employee SET Department_ID=30 WHERE Emp_Name LIKE '_A%'

---Q.15- Write a query to change the employee salaries as 8500 who are working under 10 and 20 deptno--

UPDATE Employee SET Salary=8500 WHERE Department_ID IN(10,20)

---Q.16- Write a query to change the employee salaries as 8500 who are not working under 10 and 20 deptno--

UPDATE Employee SET Salary=8500 WHERE Department_ID NOT IN(10,20)

---Q.17- Write a query to change the employee salaries as 15000 and names ends with ‘m’ & working under 10 deptno--

UPDATE Employee SET Salary=15000 WHERE Emp_Name LIKE '%M' AND Department_ID =10

---Q.18- Write a query to change the employee salaries as 5500 whose employee id ends with 4 and deptno starts with 2--

UPDATE Employee SET Salary=5500 WHERE Emp_ID LIKE '%4' AND Department_ID LIKE '2%'

---Q.19- Write a query to change the employee salaries as 25000 whose salary less than 10000 and the name contains letter ‘a’ and working under dept 20--

UPDATE Employee SET Salary=25000 WHERE Emp_Name LIKE '%A%' AND Department_ID=20 AND Salary<10000

---Q.20- Write a query to change the employee salaries as 10000 whose salary is greater than or equal to 8500 and less than or equal to 9000--

UPDATE Employee SET Salary=10000 WHERE Salary>=8500 AND Salary<=9000


