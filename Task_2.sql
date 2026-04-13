--- Late Delivery Rate

SELECT 
    COUNT(*) FILTER (WHERE delivery_time_days > 5) * 100.0 / COUNT(*) AS late_delivery_pct
FROM shipping;