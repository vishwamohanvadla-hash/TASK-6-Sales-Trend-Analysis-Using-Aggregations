# Sales Trend Analysis (MySQL)

This project analyzes monthly sales performance using MySQL.  
It calculates **monthly revenue** and **order volume** from an `orders` table to identify sales trends over time.

## Steps
1. Create a database and `orders` table.  
2. Insert sample sales data.  
3. Run SQL queries to:
   - Aggregate monthly revenue  
   - Count total orders per month  
   - Analyze overall sales trends  

## Query Example
```sql
SELECT 
  DATE_FORMAT(order_date, '%Y-%m') AS month,
  COUNT(DISTINCT order_id) AS total_orders,
  SUM(amount) AS total_revenue
FROM orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;

