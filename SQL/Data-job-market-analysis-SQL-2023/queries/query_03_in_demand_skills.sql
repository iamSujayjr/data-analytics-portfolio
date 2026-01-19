/*
PROJECT: Data Job Market Analysis Using SQL (2023)
QUERY: Most in-demand skills for Data Analyst roles
DATA SOURCE: LinkedIn job postings dataset (curated by @lukebarouse)

FILTER PARAMETERS (Editable):
- Role: Data Analyst
- Location: India
*/

SELECT 
    s.skills,
    COUNT(sj.job_id) AS demand_count
FROM job_postings_fact j
INNER JOIN skills_job_dim sj 
    ON j.job_id = sj.job_id
INNER JOIN skills_dim s 
    ON sj.skill_id = s.skill_id
WHERE 
    j.job_title_short = 'Data Analyst'
    AND j.job_location = 'India'
GROUP BY 
    s.skills
ORDER BY 
    demand_count DESC
LIMIT 5;

/*
RESULT (Top 5 In-Demand Skills for Data Analysts in India):

| Skill     | Demand Count |
|-----------|--------------|
| SQL       | 1016         |
| Excel     | 717          |
| Python    | 687          |
| Tableau   | 545          |
| Power BI  | 402          |

INSIGHT:
SQL dominates demand by a large margin, confirming its position as the
most critical technical skill for Data Analyst roles in India. Excel and
Python follow closely, indicating strong demand for both spreadsheet-based
analysis and programming-driven data processing. Visualization tools such
as Tableau and Power BI also appear among the top skills, highlighting the
importance of communicating insights effectively through dashboards and reports.
