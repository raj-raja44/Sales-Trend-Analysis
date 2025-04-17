# 📊 Sales Trend Analysis Using SQL

## ✅ Objective
Analyze monthly revenue and order volume from a sales dataset using SQL aggregation techniques.

---

## 🧰 Tools & Technologies
- MySQL Workbench
- SQL

---

## 📁 Files Included
| File Name                | Description                                       |
|-------------------------|---------------------------------------------------|
| `sales_trend_analysis.sql` | SQL script with table creation, sample data, and analysis query |
| `sales_trend_results.csv` *(optional)* | Output of the sales trend query |
| `README.md`              | Project overview and documentation               |

---

## 📌 Dataset Details

Table: `orders`

| Column Name | Data Type     | Description               |
|-------------|---------------|---------------------------|
| order_id    | INT (PK)      | Unique ID for each order  |
| order_date  | DATE          | Date when the order was placed |
| amount      | DECIMAL(10,2) | Order amount in currency  |
| product_id  | INT           | Product ID of the item ordered |

---

## 🔍 Query Objective

Group data by **year** and **month**, then calculate:
- Total Revenue per month (`SUM(amount)`)
- Total Order Volume per month (`COUNT(DISTINCT order_id)`)

---

## 🧾 Sample Query

```sql
SELECT
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    orders
GROUP BY
    YEAR(order_date), MONTH(order_date)
ORDER BY
    YEAR(order_date), MONTH(order_date);


📈 Sample Output (for reference)
order_year	order_month	total_revenue	order_volume
2023	1	430.00	2
2023	2	520.00	2
2023	3	340.00	2
...	...	...	...

🧠 Learnings
How to group data by time periods (year/month)

Use of aggregate functions like SUM() and COUNT()

Using ORDER BY to sort results

Writing clean, readable SQL scripts
