/*
	Temporary Tables - Temp tabels
*/

DROP TABLE IF EXISTS #temp_employee
CREATE TABLE #temp_employee(
	JobTitle varchar(50),
	EmploPerJob int,
	AvgAge int,
	AvgSal int
)

INSERT INTO #temp_employee
SELECT JobTitle, COUNT(JobTitle), Avg(Age), Avg(Salary)
FROM SQLPractice..EmployeeDemographics dem
JOIN SQLPractice..EmployeeSalary sal
	ON dem.EmployeeID = sal.EmployeeID
GROUP BY JobTitle

SELECT * 
FROM #temp_employee