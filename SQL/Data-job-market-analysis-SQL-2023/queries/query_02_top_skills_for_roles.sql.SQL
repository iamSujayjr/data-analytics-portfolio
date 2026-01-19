/*
PROJECT: Data Job Market Analysis Using SQL (2023)
QUERY: Skills required for top-paying Data Analyst roles
DATA SOURCE: LinkedIn job postings dataset (curated by @lukebarouse)

FILTER PARAMETERS (Editable):
- Role: Data Analyst
- Location: India
*/

WITH top_paying_jobs AS (
    SELECT 
        job_id,
        job_title,
        salary_year_avg,
        name AS company_name
    FROM job_postings_fact
    LEFT JOIN company_dim 
        ON job_postings_fact.company_id = company_dim.company_id
    WHERE 
        job_title_short = 'Data Analyst'
        AND job_location = 'India'
        AND salary_year_avg IS NOT NULL
    ORDER BY 
        salary_year_avg DESC
    LIMIT 5
)

SELECT 
    tp.job_title,
    tp.company_name,
    s.skills
FROM top_paying_jobs tp
INNER JOIN skills_job_dim sj 
    ON tp.job_id = sj.job_id
INNER JOIN skills_dim s 
    ON sj.skill_id = s.skill_id
ORDER BY 
    tp.salary_year_avg DESC;

/*
RESULT (Skills for Top-Paying Data Analyst Roles in India):

| Job Title                          | Company        | Skill        |
|----------------------------------|----------------|--------------|
| Senior Business & Data Analyst     | Deutsche Bank  | SQL          |
| Senior Business & Data Analyst     | Deutsche Bank  | Excel        |
| Senior Business & Data Analyst     | Deutsche Bank  | Visio        |
| Senior Business & Data Analyst     | Deutsche Bank  | Jira         |
| Senior Business & Data Analyst     | Deutsche Bank  | Confluence   |
| Sr. Enterprise Data Analyst        | ACA Group      | SQL          |
| Sr. Enterprise Data Analyst        | ACA Group      | Azure        |
| Sr. Enterprise Data Analyst        | ACA Group      | Excel        |
| Sr. Enterprise Data Analyst        | ACA Group      | Power BI     |
| Sr. Enterprise Data Analyst        | ACA Group      | Flow         |
| HR Data Operations Analyst         | Clarivate      | Excel        |
| HR Data Operations Analyst         | Clarivate      | Word         |
| HR Data Operations Analyst         | Clarivate      | PowerPoint  |
| Financial Data Analyst             | Loop Health    | SQL          |
| Financial Data Analyst             | Loop Health    | Python       |
| Financial Data Analyst             | Loop Health    | R            |
| Financial Data Analyst             | Loop Health    | Sheets       |
| Healthcare Research & Data Analyst | Clarivate      | SQL          |
| Healthcare Research & Data Analyst | Clarivate      | Python       |
| Healthcare Research & Data Analyst | Clarivate      | Excel        |
| Healthcare Research & Data Analyst | Clarivate      | Tableau     |
| Healthcare Research & Data Analyst | Clarivate      | Word         |

INSIGHT:
Top-paying Data Analyst roles in India require a balanced skill set combining:
- Core data skills (SQL, Excel, Power BI, Python)
- Cloud and enterprise tools (Azure, Jira, Confluence, Flow)
- Business communication tools (Word, PowerPoint)

This indicates that higher-paying roles value not only technical analytics expertise
but also collaboration, reporting, and cross-functional communication skills.
*/


