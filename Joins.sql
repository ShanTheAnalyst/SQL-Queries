SELECT *
FROM SQLPractice.dbo.EmployeeDemographics
Inner Join SQLPractice.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
FROM SQLPractice.dbo.EmployeeDemographics
Full Outer Join SQLPractice.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
FROM SQLPractice.dbo.EmployeeDemographics
Left Outer Join SQLPractice.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
FROM SQLPractice.dbo.EmployeeDemographics
Right Outer Join SQLPractice.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM SQLPractice.dbo.EmployeeDemographics
Left Outer Join SQLPractice.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID






	