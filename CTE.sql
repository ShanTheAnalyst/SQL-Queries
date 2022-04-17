/*
	CTE (Common Table Expression)
	Works as a temporary table but its actually more like a sub query
*/

WITH CTE_Employee AS
(SELECT FirstName, LastName, JobTitle, Salary, 
COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender,
AVG(Salary) OVER (PARTITION BY Salary) AS AvgSalary
FROM SQLPractice..EmployeeDemographics dem
INNER JOIN SQLPractice..EmployeeSalary sal
	ON dem.EmployeeID = sal.EmployeeID
WHERE Salary > 45000)

--SELECT *
--FROM CTE_Employee

SELECT FirstName, TotalGender, AvgSalary
FROM CTE_Employee