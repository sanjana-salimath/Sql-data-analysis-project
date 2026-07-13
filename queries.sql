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
