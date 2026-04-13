-- Problem 4: Are delays linked to high demand?

SELECT 
    o.warehouse_id,
    o.region,
    SUM(o.quantity) AS total_orders,
    AVG(s.delivery_time_days) AS avg_delivery_time
FROM orders o
JOIN shipping s 
    ON o.warehouse_id = s.warehouse_id 
   AND o.region = s.region
GROUP BY o.warehouse_id, o.region
ORDER BY avg_delivery_time DESC;