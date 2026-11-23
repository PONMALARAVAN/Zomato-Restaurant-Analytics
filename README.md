# 🍽️ Zomato Restaurant Deep Dive – SQL Data Analysis

## 📌 Project Overview

The **Zomato Restaurant Deep Dive** is a SQL-based data analysis project that explores restaurant data across India to uncover meaningful business insights.

The project focuses on analysing restaurant distribution, customer ratings, popular cuisines, pricing patterns, online delivery adoption, and table booking trends using SQL.

The objective is to transform raw restaurant data into actionable insights that can help understand customer preferences and restaurant business performance.

## 🎯 Project Objectives

- Identify Indian cities with the highest number of restaurants.
- Analyse the most popular cuisines across India.
- Evaluate online food delivery adoption across cities.
- Understand the relationship between table booking and restaurant ratings.
- Analyse restaurant ratings across different price categories.
- Identify affordable restaurants with high customer ratings.
- Examine the relationship between customer votes and restaurant ratings.

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| MySQL | SQL-based data analysis |
| MySQL Workbench | Writing and executing queries |
| Kaggle | Dataset source |
| GitHub | Project documentation and version control |

## 📂 Dataset Information

**Dataset:** Zomato Restaurants Data

**Source:** [Kaggle – Zomato Restaurants Data](https://www.kaggle.com/datasets/shrutimehta/zomato-restaurants-data)

**File:** `zomato.csv`

### Key Columns

| Column | Description |
|---|---|
| Restaurant_ID | Unique restaurant identifier |
| Restaurant_Name | Name of the restaurant |
| Country_Code | Country identification code |
| City | Restaurant location |
| Address | Restaurant address |
| Cuisines | Types of cuisines offered |
| Average_Cost_for_two | Average dining cost for two people |
| Currency | Currency used |
| Has_Table_booking | Table booking availability |
| Has_Online_delivery | Online delivery availability |
| Aggregate_rating | Overall restaurant rating |
| Rating_text | Rating category |
| Votes | Number of customer votes |

**Analysis Scope:** India only (`Country_Code = 1`).

## 📊 SQL Concepts Used

This project demonstrates practical applications of:

- SELECT and WHERE statements
- GROUP BY and ORDER BY
- Aggregate Functions (COUNT, SUM, AVG)
- HAVING clause
- CASE statements
- Subqueries
- String Functions
- NULL handling
- ROUND() function
- LIMIT clause
- Conditional Aggregation
- Data Filtering and Sorting

## 🔍 Business Questions & SQL Analysis

### Q1. Which cities in India have the most restaurants?
Identifies the top 10 cities based on restaurant count.

### Q2. What are the most popular cuisines in India?
Analyses the most frequently offered cuisines and their average ratings.

### Q3. Which cities have the highest online delivery adoption?
Calculates the percentage of restaurants offering online delivery in each city.

### Q4. Does table booking affect restaurant ratings?
Compares average restaurant ratings and customer votes between restaurants with and without table booking.

### Q5. Are expensive restaurants better rated?
Groups restaurants into four price categories and compares their average ratings and customer votes.

### Q6. Which restaurants offer the best value for money?
Identifies restaurants with:
- Rating of 4.0 or above
- Average cost for two of ₹500 or less
- At least 200 customer votes

### Q7. Which cities have the most Excellent-rated restaurants?
Finds the top 10 cities with the highest number of restaurants rated Excellent.

### Q8. Do restaurants with more customer votes receive higher ratings?
Groups restaurants by vote categories and compares their average ratings.

## 📈 Key Business Insights

The analysis aims to answer the following business questions:

1. Which Indian city has the highest restaurant concentration?
2. Is online delivery adoption associated with higher restaurant ratings?
3. Are premium restaurants actually better rated than budget restaurants?
4. Which cities offer the best value-for-money dining options?
5. Is table booking associated with higher customer ratings?
6. Do restaurants with more customer votes receive better ratings?

## 🚀 How to Run This Project

1. Download the dataset from Kaggle.
2. Install MySQL Server and MySQL Workbench.
3. Create a database named `zomato_analysis`.
4. Create the Zomato table using the provided SQL schema.
5. Import `zomato.csv` into the table.
6. Open `zomato_analysis.sql` in MySQL Workbench.
7. Execute the queries individually.
8. Review the results and document the key business insights.

## 💡 What I Learned

Through this project, I gained practical experience in:

- Working with real-world restaurant datasets.
- Writing SQL queries to solve business problems.
- Applying filtering, grouping, and aggregation techniques.
- Using CASE statements for business categorization.
- Analysing customer ratings and restaurant performance.
- Converting raw data into meaningful business insights.

## 👨‍💻 Author

**Pon Malaravan**

B.E. Computer Science and Engineering

**Skills:** SQL | MySQL | Data Analysis | Business Intelligence

---

⭐ If you find this project useful, consider giving this repository a star!
