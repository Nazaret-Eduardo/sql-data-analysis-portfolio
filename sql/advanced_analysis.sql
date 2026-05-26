/*Clasificar Ventas*/

SELECT
    Product_Name,
    Sales,

    CASE
        WHEN Sales > 500 THEN 'High Sales'
        WHEN Sales > 200 THEN 'Medium Sales'
        ELSE 'Low Sales'
    END AS Sales_Category

From superstore;

/*Top Clientes*/

WITH customer_sales AS (

    SELECT
        customer_Name,
        SUM(Sales) AS total_sales
    FROM superstore
    GROUP BY customer_Name
)

SELECT *
FROM customer_sales
WHERE total_sales > 10000;

/*Ranking de ventas*/

SELECT
    Product_Name,
    Category,
    Sales,

    RANK() OVER(
        PARTITION BY Category
        ORDER BY Sales DESC
    ) AS sales_rank
FROM superstore;

/*Running totals*/

SELECT
    Order_Date,
    Sales,

    SUM(Sales) Over(
        ORDER BY Order_Date
    ) AS running_total
FROM superstore;

/*Profitability Analysis*/

SELECT
    Category,

    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,

    ROUND(
        SUM(Profit) / SUM(Sales) * 100,
        2
    ) AS profit_margin

FROM superstore

GROUP BY Category

ORDER BY profit_margin DESC;

