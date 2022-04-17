-- Having Clause - Find JobTitle where more than 1 employee works ----
SELECT JobTitle, COUNT(JobTitle)
FROM SQLPractice.dbo.EmployeeDemographics
JOIN SQLPractice.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING COUNT(JobTitle) > 1

-- Having Clause - Find JobTitle where average salary > 45000 ----
SELECT JobTitle, AVG(Salary)
FROM SQLPractice.dbo.EmployeeDemographics
JOIN SQLPractice.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary)