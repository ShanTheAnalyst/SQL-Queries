SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
FROM SQLPractice.dbo.EmployeeDemographics
Inner Join SQLPractice.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE LastName <> 'Scott'
Order By Salary DESC

SELECT JobTitle, AVG(Salary) AS AvgSalary
FROM SQLPractice.dbo.EmployeeDemographics
Inner Join SQLPractice.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'
Group By JobTitle