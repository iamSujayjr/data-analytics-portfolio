/*
PROJECT: Data Job Market Analysis Using SQL (2023)
QUERY: Most optimal skills to learn for Data Analyst roles (Demand + Salary)
DATA SOURCE: LinkedIn job postings dataset (curated by @lukebarouse)

FILTER PARAMETERS (Editable):
- Role: Data Analyst
- Location: India
*/

WITH skills_demand AS (
    SELECT 
        s.skill_id,
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
        s.skill_id, s.skills
),

avg_salary AS (
    SELECT 
        sj.skill_id,
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
        sj.skill_id
)

SELECT
    sd.skills,
    sd.demand_count,
    a.avg_salary
FROM skills_demand sd
INNER JOIN avg_salary a 
    ON sd.skill_id = a.skill_id
WHERE 
    sd.demand_count > 10
ORDER BY 
    a.avg_salary DESC,
    sd.demand_count DESC
LIMIT 10;

/*
RESULT (Top 10 Optimal Skills for Data Analysts in India):

| Skill       | Demand Count | Avg Salary ($) |
|-------------|--------------|----------------|
| Jira        | 57           | 119250         |
| Confluence  | 19           | 119250         |
| Visio       | 17           | 119250         |
| Power BI    | 402          | 118140         |
| Azure       | 151          | 118140         |
| PowerPoint  | 154          | 104550         |
| Flow        | 102          | 96604          |
| Sheets      | 53           | 93600          |
| Word        | 111          | 89579          |
| SQL         | 1016         | 85397          |

INSIGHT:
The most optimal skills for Data Analysts in India are those that combine
strong compensation with consistent market demand. Enterprise collaboration
and workflow tools such as Jira, Confluence, and Visio show the highest
average salaries, indicating that analysts working in large corporate and
cross-functional environments tend to receive premium compensation.

Power BI and Azure stand out as high-value technical skills with both strong
demand and high salary impact, making them especially valuable for career
growth. SQL remains the most demanded foundational skill, appearing in over
1000 job postings, which highlights its importance for employability even
though its individual salary premium is lower due to widespread adoption.

Overall, this analysis suggests that combining core technical skills
(SQL, Power BI) with enterprise and cloud tools (Azure, Jira, Confluence)
creates the strongest balance between job availability and income potential.
*/
