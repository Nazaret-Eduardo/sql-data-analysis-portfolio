/*Ventas Totales*/
SELECT SUM(Sales) AS total_sales
FROM superstore;



/*Top 10 productos*/
SELECT Product_Name,
       SUM(Sales) AS total_sales
FROM superstore
GROUP BY Product_Name
ORDER BY total_sales DESC
LIMIT 10;



/*Ventas por categoria*/
SELECT Category,
       SUM(Sales) AS total_sales
FROM superstore
GROUP BY Category
ORDER BY total_sales DESC;



/*Top clientes*/
SELECT Customer_Name,
       SUM(Sales) AS total_sales
FROM superstore
GROUP BY Customer_Name
ORDER BY total_sales DESC
LIMIT 10;