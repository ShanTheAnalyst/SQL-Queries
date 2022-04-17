
SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 32 THEN 'Old'
	WHEN Age BETWEEN 31 AND 32 THEN 'Young'
	ELSE 'Baby'
END
FROM SQLPractice.dbo.EmployeeDemographics
WHERE Age is NOT NULL
ORDER BY Age DESC

-- Give Raise to Salary - A CASE STUDY----
SELECT FirstName, JobTitle, Salary,
CASE
	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .10)
	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .05)
	WHEN JobTitle = 'HR' THEN Salary + (Salary * .000003)
	ELSE Salary + (Salary * 0.03)
END AS SalaryIncrement
FROM SQLPractice.dbo.EmployeeDemographics
INNER JOIN SQLPractice.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


