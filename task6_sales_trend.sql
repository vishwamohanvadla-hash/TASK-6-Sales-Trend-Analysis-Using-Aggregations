CREATE DATABASE IF NOT EXISTS online_sales;
USE online_sales;

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  order_date DATE,
  amount DECIMAL(10,2),
  product_id VARCHAR(20)
);

INSERT INTO orders (order_date, amount, product_id) VALUES
('2024-01-05',100.00,'A'),
('2024-01-12',200.00,'B'),
('2024-01-20',150.00,'A'),
('2024-02-03',120.00,'A'),
('2024-02-28',80.00,'C'),
('2024-03-10',300.00,'B'),
('2024-03-15',50.00,'C');

SELECT 
  DATE_FORMAT(order_date, '%Y-%m') AS month,
  COUNT(DISTINCT order_id) AS total_orders,
  SUM(amount) AS total_revenue
FROM orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;
