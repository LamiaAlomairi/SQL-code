/*
1. Write a SQL query that the total sales for each month in the sales table.
2. Write a SQL query that calculates the average of sales amount.
3. Write a SQL query that counts how many products sold availabe in the table.
4. Write a SQL query that shows the minimum and maximum sale amount in the table name it as 'lowest amount' , 'higest amount'.
5. Write a SQL query that organize the data in decending order using the id.
6. Write a SQL query that shows the sales between 01-01-2022 and 01-02-2022.
*/

CREATE TABLE sales (
  sale_id INT PRIMARY KEY,
  sale_date DATE,
  sale_amount DECIMAL(10,2)
);
INSERT INTO sales ( sale_id,sale_date, sale_amount) VALUES
  (1,'2022-01-01', 100.00),
  (2,'2022-01-02', 50.00),
  (3,'2022-01-15', 75.00),
  (4,'2022-02-01', 200.00),
  (5,'2022-02-05', 150.00),
  (6,'2022-02-20', 175.00);

/* 1 */
SELECT SUM(sale_amount) AS total_sales FROM sales GROUP BY DATEPART(month, sale_date);
/* 2 */
SELECT AVG(sale_amount) AS SALE_AVG FROM sales;
/* 3 */
SELECT COUNT(sale_id) FROM sales;
/* 4 */
SELECT MIN(sale_amount) AS lowest_amount, MAX(sale_amount) AS higest_amount FROM sales;
/* 5 */
SELECT * FROM sales ORDER BY sale_id DESC;
/* 6 */
SELECT * FROM sales WHERE sale_date BETWEEN '01-01-2022' AND '01-02-2022';



SELECT * FROM Books ORDER BY price;
SELECT * FROM Books ORDER BY price DESC;
SELECT * FROM Books WHERE price IN (10.99, 9.75);
SELECT COUNT(id), title FROM Books GROUP BY title HAVING COUNT(id) > 1;

SELECT COUNT(price) FROM Products GROUP BY category;
SELECT COUNT(product_id), category FROM Products GROUP BY category HAVING COUNT(product_id) > 1;

