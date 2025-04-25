# HR_Attrition-Dashboard
This Data Analysis Project aims to generate insights into the HR attrition performance over a period of time. By analysis the various parameter in the data recieved we eek to gather insight to make reasonable decisions  which will enable us to tell a compelling story from the insight gotten.

[Overview](#overview)

[Data Source](#data-source)

[Methods and Tools](#methods-and-tools)

[Insights and Findings](#insights-and-findings)

[Data Cleaning and Preparation](#data-cleaning-and-preparation)

[Data Analysis](#data-analysis)

[Conclusion](#conclusion)

### Overview
---
Employee attrition is a major challenge for organizations as it leads to the loss of skilled labor, increased recruitment costs, and potential drops in productivity.
This project aims to identify the key factors driving employee attrition and help Human Resources make informed, data-backed decisions to improve retention.

### Data Source
The dataset was sourced from Kaggle.com, a platform for open and real time datasets.

### Methods and Tools
---
- Data Cleaning: Performed using Microsoft Excel to remove errors and prepare the dataset.

- Data Exploration: SQL queries were written and executed using SQL Server Management Studio (SSMS) to better understand data distributions and relationships.

- Visualization: Built an interactive dashboard using Power BI to show attrition trends and patterns across different categories.

- Github: For portifolio building.

### Insights and Findings
---
- Employees with low job satisfaction and work-life balance had higher attrition rates.

- Employees in the Sales and Human Resources departments showed higher turnover.

- Overtime and longer working hours were positively correlated with attrition.

### Data Cleaning and Preparation 
---
In the initial phase of the data cleaning and preparation, i perform the following action
- Data loading and inspection
- Checking for missing variable
- Data cleaning and formating

### Data Analysis
---
The Exploratory data analysis involved the exploring of the data to answer some question about the data such as
- Overall Job Satisfaction
- Attrition by Department
- Attrition by Environment Satisfaction
- Attrition by Gender
- Attrition by Education Field
  
This is also where i include few basic lines of code or queries used during my analysis

```SQL
SELECT Attrition, Count(*) as Attrition_Count,
AVG(MonthlyRate) as AVGSalary
from HR_Data
Where Attrition = 1
Group by Attrition
Order by AVGSalary DESC;
```
```SQL
SELECT HR_Data.Department, HR_Data.JobRole, 
Count(*) AS Attrition_Count
From HR_Data
Where Attrition = 1
Group By HR_Data.Department, HR_Data.JobRole
Order By Attrition_Count DESC;
```
```SQL
SELECT Department, YearsAtCompany, 
YearsInCurrentRole, 
YearsSinceLastPromotion, COUNT(*) AS TotalLeft
From HR_Data
where Attrition = 1 
Group by YearsAtCompany,Department, 
YearsInCurrentRole, YearsSinceLastPromotion
Order by Department, TotalLeft DESC;
```

### Conclusion / Recommendation
- Focus on employee engagement programs targeting job satisfaction.
- Conduct departmental reviews for high-attrition teams.


