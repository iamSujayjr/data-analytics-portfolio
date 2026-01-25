# Data Job Market Analysis Using SQL (2023)

## Project Overview  
This project analyzes real-world data job postings using SQL to uncover insights related to salary trends, skill demand, and role-based job market patterns. The analysis is designed to help aspiring data professionals understand which roles and skills provide the best career opportunities.

The project supports dynamic filtering by job role and country, with demonstrations primarily focused on **Data Analyst roles in India**.

---

## Project Objective  

The main goals of this project are to:

- Identify top-paying Data Analyst roles  
- Analyze skills required for high-paying positions  
- Measure market demand for technical skills  
- Compare skill value based on average salary  
- Determine optimal skills to learn based on both demand and compensation  

---

## Key Features  

- Multi-table SQL joins combining job, company, and skill datasets  
- CTE-based modular query structure for improved readability  
- Salary aggregation and ranking analysis  
- Skill demand frequency analysis  
- Combined demand and salary modeling to identify optimal skills  
- Career-focused business question mapping  

---

## Tools & Skills Used  

- PostgreSQL  
- VS Code  
- SQL (Joins, Aggregations, CTEs, Filtering, Grouping, Ranking)  

---

## Analysis Scope  

The project answers the following business-driven questions:

1. What are the top-paying Data Analyst roles in India?  
2. Which skills are required for high-paying Data Analyst positions?  
3. What are the most in-demand skills for Data Analysts?  
4. Which skills are associated with higher average salaries?  
5. What are the most optimal skills to learn based on both demand and salary?  

---

## Key Insights  

- **SQL is the most in-demand skill**, appearing in over 1,000 Data Analyst job postings in India  
- **Excel and Python** remain highly demanded across most roles  
- **Enterprise tools such as Jira and Confluence** are strongly associated with higher-paying positions  
- **Power BI and Azure** provide a strong balance between salary value and job demand  
- Skill demand does not always correlate directly with salary, highlighting the importance of learning high-value tools  

---

## Query Workflow Summary  

| Query | Business Purpose |
------|-----------------
Query 1 | Identify top-paying Data Analyst roles by salary and company  
Query 2 | Extract skills required for high-paying Data Analyst jobs  
Query 3 | Analyze the most in-demand skills in the market  
Query 4 | Rank skills based on average salary  
Query 5 | Combine demand and salary metrics to identify optimal skills  

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

- Queries are designed with flexible filters for job role and country selection  
- Salary calculations exclude null values to maintain accuracy  
- CTEs are used to improve query readability and maintainability  
- The project workflow simulates real-world analytical SQL use cases  
