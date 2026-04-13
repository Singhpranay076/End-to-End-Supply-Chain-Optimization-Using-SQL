--- Bottleneck Detection

SELECT 
    o.warehouse_id,
    o.region,
    COUNT(*) AS total_orders,
    AVG(s.delivery_time_days) AS avg_delivery_time,
    SUM(o.quantity) AS total_demand
FROM orders o
JOIN shipping s 
ON o.warehouse_id = s.warehouse_id 
AND o.region = s.region
GROUP BY o.warehouse_id, o.region
ORDER BY avg_delivery_time DESC;