--- Shipping Performance by Product

SELECT 
    p.category,
    AVG(s.delivery_time_days) AS avg_delivery_time
FROM orders o
JOIN products p ON o.product_id = p.product_id
JOIN shipping s 
ON o.warehouse_id = s.warehouse_id 
AND o.region = s.region
GROUP BY p.category
ORDER BY avg_delivery_time DESC;