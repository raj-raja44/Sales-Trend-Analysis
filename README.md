# 📊 Sales Trend Analysis Using SQL

## 📌 Project Overview

This project focuses on analyzing sales trends using SQL and MySQL.

The analysis uses an e-commerce sales dataset to calculate monthly revenue and order volume. SQL aggregation and date-based functions are used to identify sales patterns and understand business performance over time.

The project demonstrates how SQL can be used to transform transactional sales data into meaningful business insights.

## 🎯 Objective

The main objective of this project is to analyze sales performance on a monthly basis.

The analysis focuses on:

- Calculating total revenue per month
- Calculating total order volume per month
- Identifying sales trends over time
- Understanding monthly business performance
- Extracting useful insights from sales data

## 🛠️ Tools & Technologies

- MySQL Workbench
- SQL
- Aggregate Functions
- Date Functions
- Relational Database Concepts
- Data Analysis

## 📂 Project Files

| File | Description |
|---|---|
| `sales_trend_analysis.sql` | SQL script containing table creation, sample data, and analysis queries |
| `sales_trend_results.csv` | Output results generated from the sales trend analysis |
| `README.md` | Project documentation |

## 🗃️ Database Structure

### Table: `orders`

| Column Name | Data Type | Description |
|---|---|---|
| `order_id` | INT (PK) | Unique ID for each order |
| `order_date` | DATE | Date when the order was placed |
| `amount` | DECIMAL(10,2) | Order amount |
| `product_id` | INT | Product ID of the item ordered |

## 🔍 Query Objective

The sales data is grouped by **year and month** to calculate:

- Total Revenue per month using `SUM(amount)`
- Total Order Volume per month using `COUNT(DISTINCT order_id)`

This allows monthly sales performance and trends to be analyzed.

## 🧮 SQL Concepts Used

- `SELECT`
- `FROM`
- `GROUP BY`
- `ORDER BY`
- `SUM()`
- `COUNT()`
- `COUNT(DISTINCT)`
- `YEAR()`
- `MONTH()`
- Date-based grouping
- Aggregate functions

## 📝 Sample SQL Query

```sql
SELECT
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY
    YEAR(order_date),
    MONTH(order_date)
ORDER BY
    order_year,
    order_month;

## 📊 Sample Output

The SQL query generates the following monthly sales results:

| Order Year | Order Month | Total Revenue | Order Volume |
|---:|---:|---:|---:|
| 2023 | 1 | 250.00 | 1 |
| 2023 | 2 | 350.00 | 1 |
| 2023 | 4 | 900.75 | 3 |
| 2023 | 5 | 220.00 | 1 |
| 2023 | 6 | 350.00 | 1 |

### 📌 Output Summary

- **Highest monthly revenue:** 900.75 in April 2023
- **Highest order volume:** 3 orders in April 2023
- **Total revenue across the displayed months:** 2,070.75
- The results show monthly differences in revenue and order volume.
```

🔄 Sales Analysis Workflow

Sales Data
    ↓
Create Orders Table
    ↓
Insert Sales Records
    ↓
Analyze Order Dates
    ↓
Group Data by Year & Month
    ↓
Calculate Monthly Revenue
    ↓
Calculate Monthly Order Volume
    ↓
Sort Results Chronologically
    ↓
Generate Business Insights

📈 Analysis Performed

💰 Monthly Revenue Analysis
The query calculates the total sales revenue generated during each month using the SUM() aggregate function.
This helps identify months with higher and lower revenue performance.

📦 Monthly Order Volume Analysis
The query calculates the number of unique orders placed during each month using COUNT(DISTINCT order_id).
This helps understand changes in customer order activity over time.

📅 Sales Trend Analysis
The sales data is grouped by year and month to identify changes in revenue and order volume over different periods.
The results are stored in:
sales_trend_results.csv

📊 Analysis Results
The generated results contain monthly sales information including:
- Order year
- Order month
- Total revenue
- Total order volume
These results can be used for further reporting, visualization, and business analysis.

💡 Key Insights
The analysis helps identify:
- Monthly revenue performance
- Changes in order volume over time
- High-performing sales periods
- Low-performing sales periods
- Overall sales trends
- Changes in customer order activity
- Areas requiring further business analysis

🎓 Key Learning Outcomes
- Learned how to analyze sales data using SQL
- Practiced SQL aggregate functions
- Learned how to group transactional data by month
- Practiced calculating revenue using SUM()
- Practiced calculating order volume using COUNT(DISTINCT)
- Improved understanding of SQL date functions
- Learned how to organize query results for analysis
- Practiced extracting business insights from SQL results

🚀 How to Run
1. Open MySQL Workbench
Open MySQL Workbench or another MySQL-compatible database environment.

2. Open the SQL Script
Open:
sales_trend_analysis.sql

3. Execute the SQL Script
Run the SQL statements to:
- Create the required table
- Insert the sales data
- Execute the sales trend analysis query

4. Review the Results
The generated analysis results can be reviewed in:
sales_trend_results.csv

📌 Project Outcome
This project demonstrates practical SQL skills for business data analysis.
The analysis converts transactional sales data into monthly revenue and order-volume metrics, making it easier to understand sales trends and support data-driven business decisions.

👨‍💻 Author
Raju Otlam
Aspiring Data Analyst
Skills: SQL | MySQL | Python | Excel | Power BI | Data Analysis | Data Visualization
