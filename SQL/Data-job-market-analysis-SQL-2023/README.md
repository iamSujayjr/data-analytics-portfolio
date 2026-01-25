# Data Job Market Analysis Using SQL (2023)

## Project Overview  
This project analyzes global data job postings using SQL to uncover insights related to salary trends, skill demand, and role-based job market patterns. The analysis is designed to help job seekers and aspiring analysts understand how market demand and compensation vary across roles and locations.

The project supports dynamic filtering by job role and country, with demonstrations primarily focused on Data Analyst roles in India.

---

## Project Objective  

The main goals of this project are to:

- Identify top-paying Data Analyst roles  
- Analyze skills required for high-paying positions  
- Measure market demand for technical skills  
- Compare skill value based on average salary  
- Determine optimal skills to learn based on demand and compensation  

---

## Key Features  

- Multi-table SQL joins for combining job, company, and skill data  
- CTE-based modular query structure for better readability  
- Salary aggregation and ranking analysis  
- Skill demand frequency analysis  
- Combined demand and salary modeling for optimal skill identification  
- Career-focused business question mapping  

---

## Tools & Skills Used  

- PostgreSQL  
- VS Code  
- SQL (Joins, Aggregations, CTEs, Filtering, Grouping, Ranking)  

---

## Analysis Scope  

The analysis answers the following business-focused questions:

- What are the top-paying Data Analyst roles?  
- Which skills are required for high-paying jobs?  
- What are the most in-demand skills in the market?  
- Which skills are associated with higher average salaries?  
- What are the most optimal skills to learn based on both demand and pay?  

---

## Key Insights  

- SQL and Excel consistently appear as the most in-demand skills  
- Enterprise tools such as Jira and Confluence are associated with higher-paying roles  
- Power BI and Azure provide strong balance between salary value and market demand  
- Foundational skills remain critical across most job postings  
- Skill demand does not always directly correlate with salary value  

---

## Project Structure  

Data-job-market-analysis-SQL-2023
│
├── README.md
└── queries/
├── query_01_top_paying_roles.sql
├── query_02_top_skills_for_roles.sql
├── query_03_in_demand_skills.sql
├── query_04_salary_by_skill.sql
└── query_05_optimal_skills.sql


---

## Notes  

- Queries are structured to allow easy modification of job role and country filters  
- Salary calculations exclude null values for accurate aggregation  
- CTEs are used to improve query readability and scalability  
- Designed to simulate real-world analytical SQL workflows  


