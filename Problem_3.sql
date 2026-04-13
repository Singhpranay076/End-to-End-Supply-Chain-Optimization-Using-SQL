-- Problem 3: Which warehouses cause delivery delays?

SELECT 
    warehouse_id,
    region,
    AVG(delivery_time_days) AS avg_delivery_time
FROM shipping
GROUP BY warehouse_id, region
ORDER BY avg_delivery_time DESC;