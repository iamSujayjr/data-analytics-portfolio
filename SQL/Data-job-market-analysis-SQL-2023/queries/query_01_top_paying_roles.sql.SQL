/*
PROJECT: Data Job Market Analysis Using SQL (2023)
QUERY: Top-paying Data Analyst roles by company and salary
DATA SOURCE: LinkedIn job postings dataset (curated by @lukebarouse)

FILTER PARAMETERS (Editable):
- Role: Data Analyst
- Location: India
*/

SELECT 
    j.job_title,
    c.name AS company_name,
    j.salary_year_avg
FROM job_postings_fact j
LEFT JOIN company_dim c 
    ON j.company_id = c.company_id
WHERE 
    j.job_title_short = 'Data Analyst'
    AND j.job_location = 'India'
    AND j.salary_year_avg IS NOT NULL
ORDER BY 
    j.salary_year_avg DESC
LIMIT 5;

/*
RESULT (Top 5):

| Job Title                          | Company       | Salary ($) |
|----------------------------------|---------------|------------|
| Senior Business & Data Analyst     | Deutsche Bank | 119250     |
| Sr. Enterprise Data Analyst        | ACA Group     | 118140     |
| HR Data Operations Analyst         | Clarivate     | 104550     |
| Financial Data Analyst             | Loop Health   | 93600      |
| Healthcare Research & Data Analyst | Clarivate     | 89118      |

INSIGHT:
Senior-level Data Analyst roles in India command higher salaries,
with finance and healthcare domains offering the strongest pay.
*/
