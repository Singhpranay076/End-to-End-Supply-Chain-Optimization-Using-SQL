--- Demand vs Inventory (Critical KPI)

SELECT 
    o.product_id,
    o.warehouse_id,
    SUM(o.quantity) AS total_demand,
    i.stock_level,
    CASE 
        WHEN SUM(o.quantity) > i.stock_level THEN 'Understocked'
        ELSE 'Balanced'
    END AS status
FROM orders o
JOIN inventory i 
ON o.product_id = i.product_id 
AND o.warehouse_id = i.warehouse_id
GROUP BY o.product_id, o.warehouse_id, i.stock_level;