/*
	------ Topic: Partion BY --------

	The GROUP BY clause is used often used in conjunction with an aggregate function 
	such as SUM() and AVG(). The GROUP BY clause reduces the number of rows 
	returned by rolling them up and calculating the sums or averages for each group. */

SELECT FirstName, LastName, JobTitle, Salary, COUNT(Gender)  
FROM SQLPractice..EmployeeDemographics dem
INNER JOIN SQLPractice..EmployeeSalary sal
	ON dem.EmployeeID = sal.EmployeeID
GROUP BY FirstName, LastName, JobTitle, Salary, Gender


/*	The PARTITION BY clause is a subclause of the OVER clause. The PARTITION BY clause 
	divides a query’s result set into partitions. The window function is operated on 
	each partition separately and recalculate for each partition.
	The PARTITION BY clause divides the result set into partitions and changes how the
	window function is calculated. The PARTITION BY clause does not 
	reduce the number of rows returned.*/

SELECT FirstName, LastName, JobTitle, Salary, 
COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender,
AVG(Salary) OVER (PARTITION BY Salary) AS AvgSalary
FROM SQLPractice..EmployeeDemographics dem
INNER JOIN SQLPractice..EmployeeSalary sal
	ON dem.EmployeeID = sal.EmployeeID
WHERE Salary > 45000