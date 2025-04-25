select * from HR_Data

--- How Many Emplooyee has left the company and their average salary

SELECT Attrition, Count(*) as Attrition_Count,
AVG(MonthlyRate) as AVGSalary
from HR_Data
Where Attrition = 1
Group by Attrition
Order by AVGSalary DESC;

----- Attrition_count by Departments and JobRole 

SELECT HR_Data.Department, HR_Data.JobRole, 
Count(*) AS Attrition_Count
From HR_Data
Where Attrition = 1
Group By HR_Data.Department, HR_Data.JobRole
Order By Attrition_Count DESC;

-----Top 10 Employee with the Highest MonthlyIncome

SELECT Top 10
HR_Data.Department, HR_Data.JobRole, HR_Data.MonthlyIncome
From HR_Data
Where HR_Data.MonthlyIncome > 18000
ORDER BY HR_Data.MonthlyIncome DESC;

---What is the maritalStatus of employees below the age of 25 and very good job satisfaction? 

SELECT Age, MaritalStatus, Count(*) as Satisfication_Count
From HR_Data
Where JobSatisfication = 'Very Good' and Age < 25
Group by Age, MaritalStatus;

---	How many employees left the company, and in what department and their years in the company.

SELECT Department, YearsAtCompany, 
YearsInCurrentRole, 
YearsSinceLastPromotion, COUNT(*) AS TotalLeft
From HR_Data
where Attrition = 1 
Group by YearsAtCompany,Department, 
YearsInCurrentRole, YearsSinceLastPromotion
Order by Department, TotalLeft DESC;

-----How many male employees left the company and have very good relationship and Environment Satisfication

SELECT Gender, Count(*) as Attrition_Count from HR_Data
where Attrition = 1 and JobSatisfication = 'Very Good' 
and EnvironmentSatisfication= 'Very Good'
Group by Gender;

select * from HR_Data

---Which Gender have the highest performance ratings?

SELECT Gender, Count(*) as Count_HighestLowest from HR_Data
where PerformanceRating = 'Very Good'
Group By Gender;

------What is the employee turnover rate by department?

Select Department, Count(*) as Departmental_turnover_count
from HR_Data