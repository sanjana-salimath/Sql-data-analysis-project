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
