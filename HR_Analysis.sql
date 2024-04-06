-- Databricks notebook source
select * from hr_employee_v1

-- COMMAND ----------

select sum(EmployeeCount) from hr_employee;

-- COMMAND ----------

select sum(EmployeeCount), Attrition
from hr_employee
group by 2

-- COMMAND ----------

SELECT SUM(EmployeeCount),
    CASE 
        WHEN age BETWEEN 20 AND 25 THEN '20-25' 
        WHEN age BETWEEN 26 AND 32 THEN '26-32' 
        WHEN age BETWEEN 33 AND 40 THEN '33-40' 
        ELSE '40+' 
    END AS age_group
FROM hr_employee
WHERE Attrition = 'Yes'
GROUP BY age_group;


-- COMMAND ----------

SELECT SUM(EmployeeCount), Department
FROM hr_employee
WHERE Attrition = 'Yes'
GROUP BY Department;


-- COMMAND ----------

SELECT SUM(EmployeeCount) AS TotalEmployees,
       Education,
       CASE 
           WHEN Education = 1 THEN 'Below College' 
           WHEN Education = 2 THEN 'College' 
           WHEN Education = 3 THEN 'Bachelor' 
           WHEN Education = 4 THEN 'Masters' 
           ELSE 'Doctor' 
       END ed_group
FROM hr_employee
where Attrition = 'Yes'
GROUP BY 2;


-- COMMAND ----------

SELECT SUM(EmployeeCount) AS TotalEmployees,
       EnvironmentSatisfaction,
       CASE 
           WHEN EnvironmentSatisfaction = 1 THEN 'Low Satisfaction' 
           WHEN EnvironmentSatisfaction = 2 THEN 'Medium Satisfaction' 
           WHEN EnvironmentSatisfaction = 3 THEN 'High Satisfaction' 
           ELSE 'Highly Satisfaction' 
       END satisfaction_group
FROM hr_employee
where Attrition = 'Yes'
GROUP BY 2;


-- COMMAND ----------

SELECT SUM(EmployeeCount) AS TotalEmployees,
       JobSatisfaction,
       CASE 
           WHEN JobSatisfaction = 1 THEN 'Low Satisfaction' 
           WHEN JobSatisfaction = 2 THEN 'Medium Satisfaction' 
           WHEN JobSatisfaction = 3 THEN 'High Satisfaction' 
           ELSE 'Highly Satisfaction' 
       END job_satisfaction_group
FROM hr_employee
where Attrition = 'Yes'
GROUP BY 2;


-- COMMAND ----------

select sum(EmployeeCount) AS TotalEmployees,BusinessTravel
from hr_employee
group by 2
