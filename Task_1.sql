--- Order Fulfillment Performance

SELECT 
    o.order_id,
    o.order_date,
    s.delivery_time_days,
    CASE 
        WHEN s.delivery_time_days <= 3 THEN 'Fast'
        WHEN s.delivery_time_days <= 6 THEN 'Moderate'
        ELSE 'Delayed'
    END AS delivery_category
FROM orders o
JOIN shipping s 
ON o.warehouse_id = s.warehouse_id 
AND o.region = s.region;