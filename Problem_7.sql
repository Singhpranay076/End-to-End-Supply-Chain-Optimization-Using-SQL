--- Problem 7: Top 20% Products Driving Demand

SELECT 
    product_id,
    SUM(quantity) AS total_demand
FROM orders
GROUP BY product_id
ORDER BY total_demand DESC
LIMIT 5;