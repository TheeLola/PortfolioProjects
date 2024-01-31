Select *
From JobInformation


--Select job_title
--From JobInformation

--Different types of data jobs
Select job_title, Count(job_title) As job_count
From JobInformation
Group by job_title 
Order by job_count Desc

--Increase in Job Creation in Data.
Select work_year, job_title, Count(job_title) As job_creation
From JobInformation
Where job_title = 'Data Analyst'
Group by work_year, job_title
Order by work_year, job_title Desc

--Seeing whether Data Engineers are paid the same(Executive Level)
Select job_title, job_category, salary_in_usd, experience_level
From JobInformation
Where job_title = 'Data Engineer' AND experience_level = 'Executive'
Order by salary_in_usd Desc

--Does country and company size affect the salary
Select job_title, job_category,employee_residence, salary_in_usd, experience_level, company_size
From JobInformation
Where job_title = 'Data Engineer' AND experience_level = 'Executive'
Order by salary_in_usd Desc

Select job_title, job_category,employee_residence, salary_in_usd, experience_level, company_size,
Case
    When salary_in_usd < 170000 Then 'Underpaid' 
	Else 'Fair'
End As salary_category
From JobInformation
Where job_title = 'Data Engineer' AND experience_level = 'Executive'
Order by salary_in_usd Desc

-- Avg, Min, Max of Data Analyst Salary by each year.
Select work_year, job_title,
    Avg(salary_in_usd) As average_salary,
    Min(salary_in_usd) As min_salary,
    Max(salary_in_usd) As max_salary
From JobInformation
Where job_title = 'Data Analyst'
    And work_year In (2023, 2022, 2021)
Group by work_year, job_title
Order by job_title, work_year desc

--Updating Salary_in_usd 2024
Select salary_currency, salary, salary_in_usd, job_title, experience_level,
Case
        When salary_currency = 'EUR' Then salary * 1.08
        When salary_currency = 'GBP' Then salary * 1.27
        Else salary
End As salary_update
From JobInformation
Where salary_currency IN ('EUR', 'GBP') And
      job_title =  'Data engineer' And
	  experience_level = 'Entry-level'
Group by salary_currency, job_title, salary, salary_in_usd, experience_level
Order by job_title, salary_currency, experience_level, salary_in_usd, salary 



      















