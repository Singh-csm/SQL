CREATE DATABASE salesdb;
USE salesdb;
CREATE TABLE sales (
  id INT,
  product VARCHAR(50),
  quantity INT,
  price DECIMAL(10, 2)
);
INSERT INTO sales (id, product, quantity, price)
VALUES (1, 'Product A', 10, 9.99),
       (2, 'Product B', 5, 19.99),
       (3, 'Product A', 8, 9.99),
       (4, 'Product C', 15, 14.99),
       (5, 'Product B', 12, 19.99);
-- Total Sales
SELECT SUM(quantity * price) AS total_sales
FROM sales;

-- Average Price
SELECT AVG(price) AS average_price
FROM sales;

-- Maximum Quantity Sold
SELECT MAX(quantity) AS max_quantity_sold
FROM sales;
SELECT product, SUM(quantity * price) AS total_sales
FROM sales
GROUP BY product;

