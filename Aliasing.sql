/*
	AS word is used for aliasing in sql
*/

SELECT FirstName + ' ' + LastName AS FullName
FROM [SQLPractice].[dbo].[EmployeeDemographics]

SELECT Avg(Salary) AS ASS
FROM [SQLPractice].[dbo].[EmployeeSalary]

SELECT Demo.EmployeeID, Sal.Salary
FROM [SQLPractice].[dbo].[EmployeeDemographics] AS Demo
JOIN [SQLPractice].[dbo].[EmployeeSalary] AS Sal
	ON Demo.EmployeeID = Sal.EmployeeID

