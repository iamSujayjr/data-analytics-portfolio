/*
PROJECT: Data Job Market Analysis Using SQL (2023)
QUERY: Top skills based on average salary for Data Analyst roles
DATA SOURCE: LinkedIn job postings dataset (curated by @lukebarouse)

FILTER PARAMETERS (Editable):
- Role: Data Analyst
- Location: India
*/

SELECT 
    s.skills,
    ROUND(AVG(j.salary_year_avg), 0) AS avg_salary
FROM job_postings_fact j
INNER JOIN skills_job_dim sj 
    ON j.job_id = sj.job_id
INNER JOIN skills_dim s 
    ON sj.skill_id = s.skill_id
WHERE 
    j.job_title_short = 'Data Analyst'
    AND j.job_location = 'India'
    AND j.salary_year_avg IS NOT NULL
GROUP BY 
    s.skills
ORDER BY 
    avg_salary DESC
LIMIT 10;

/*
RESULT (Top 10 Skills by Average Salary for Data Analysts in India):

| Skill       | Avg Salary ($) |
|-------------|----------------|
| Visio       | 119250         |
| Confluence  | 119250         |
| Jira        | 119250         |
| Azure       | 118140         |
| Power BI    | 118140         |
| PowerPoint  | 104550         |
| Flow        | 96604          |
| Sheets      | 93600          |
| Word        | 89579          |
| SQL         | 85397          |

INSIGHT:
Enterprise collaboration and workflow tools such as Visio, Confluence,
and Jira are associated with the highest average salaries, indicating that
Data Analysts working in large corporate or cross-functional environments
tend to earn more. Cloud platforms (Azure) and BI tools (Power BI) also show
strong salary impact, highlighting the value of infrastructure and reporting
skills. While SQL remains a foundational requirement, it is widely adopted
across all salary levels, which reduces its individual salary premium.
*/