# Sql-data-analysis-project
SQL queries analyzing real-world dataset to answer business questions

# Superstore Sales Analysis using SQLite
## 📌 Project Overview
This project analyzes the Kaggle Superstore dataset using SQL in SQLite.  
The goal is to practice SQL queries and demonstrate business data analysis skills such as:
- Data exploration (SELECT, WHERE, LIMIT)
- Aggregations (SUM, AVG, COUNT)
- Grouping and ordering (GROUP BY, ORDER BY)
- Business insights (sales by category, region, customer)
  
## Dataset Schema
I explored the dataset structure using the command:
```sql
PRAGMA table_info(orders);

### Query 1: Count Total Orders
```sql
SELECT COUNT(*) FROM orders;
RESULT--> 9800 ORDERS
### Query 2: Preview First 10 Rows
```sql
SELECT * FROM orders LIMIT 10;
RESULT--> Displays the first 10 rows of the dataset (sample of orders with columns like Order ID, Customer Name, Category, Sales, etc.)
### Query 3: Distinct Categories
```sql
SELECT DISTINCT Category FROM orders;
RESULT-->Furniture, Office Supplies, Technology
### Query 4: Preview Customer Names with Sales
```sql
SELECT "Customer Name", Sales 
FROM orders 
LIMIT 10;
RESULT-->Shows the first 10 customers with their sales values, for example:
Claire Gute → 261.96, 731.94
Darrin Van Huff → 14.62
Sean O'Donnell → 957.58, 22.37
Brosina Hoffman → 48.86, 7.28, 907.15, 18.50, 114.90
### Query 5: Total Sales
```sql
SELECT SUM(Sales) FROM orders;
RESULT-->The total sales across all orders is 2,261,536.78
### Query 6: Total Sales by Region
```sql
SELECT Region, SUM(Sales) 
FROM orders 
GROUP BY Region;
RESULT-->Central → 492,646.91
East → 669,518.73
South → 389,151.46
West → 710,219.68
### Query 7: Count of Unique Customers
```sql
SELECT COUNT(DISTINCT "Customer ID") FROM orders;
RESULT-->There are 793 unique customers in the dataset.
### Query 8: Top 5 Cities by Sales
```sql
SELECT City, SUM(Sales) AS TotalSales
FROM orders
GROUP BY City
ORDER BY TotalSales DESC
LIMIT 5;
RESULT-->New York City → 252,462.55
Los Angeles → 173,420.18
Seattle → 116,106.32
San Francisco → 109,041.12
Philadelphia → 108,841.75
### Query 9: Total Orders by Region
```sql
SELECT Region, COUNT(*) AS TotalOrders
FROM orders
GROUP BY Region;
RESULT-->Central → 2,277 orders
East → 2,785 orders
South → 1,598 orders
West → 3,140 orders
### Query 10: Distinct Shipping Modes
```sql
SELECT DISTINCT "Ship Mode" FROM orders;
RESULT-->Second Class, Standard Class, First Class, Same Day

## 🔑 Key Insights
- The dataset contains 9,800 orders from 793 unique customers.
- West region generated the highest sales (~710K), showing strong market presence.
- New York City is the top-performing city with over 250K in sales.
- Customers use four shipping modes, with Standard Class being the most common.
- Total revenue across all orders is 2.26M, highlighting overall business volume.

## 🛠 Tech Stack
- SQLite (SQL queries)
- Power BI (dashboard created from the same dataset)
- GitHub (documentation & portfolio)

## 🚀 Future Work
- Create Power BI dashboards for sales trends.
- Explore customer segments and product sub-categories.
- Practice advanced SQL (joins, window functions).

## 📊 About Me
Beginner in Data Analysis | Learning SQL, Python, and visualization tools

## 🏅 Certifications
- [SQL (Basic) - HackerRank](sql_basic certificate.pdf)  
  *Earned on 30 June 2026*
