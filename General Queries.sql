/*
SELECT Statement methods
	*, TOP, Distinct, Count, Max, Min, Avg
*/

SELECT *

SELECT Top 4 LastName -- use * for all

SELECT Distinct(Gender) -- or Gender

SELECT Count(EmployeeID) AS EMPIDCount
FROM EmployeeDemographics

SELECT Max(Salary) 

SELECT Min(Salary) 

SELECT Avg(Salary) AS AvgSalary
FROM SQLPractice.dbo.EmployeeSalary

/* WHERE statement
	=, <>, <, >, And, Or, Like, Null, Not Null, In
*/

SELECT *
FROM EmployeeDemographics

WHERE FirstName = 'Jim'
WHERE FirstName <> 'Jim'
WHERE Age <= 32 And FirstName = 'Toby'
WHERE FirstName LIKE '%t%'		-- t% start with, %t% anywhere in the firstname
WHERE FirstName is Not Null
WHERE FirstName IN('Kevin', 'Toby') - more than one search word

