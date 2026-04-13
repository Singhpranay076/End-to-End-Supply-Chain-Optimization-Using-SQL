-- Problem 2: Are high-demand products understocked?

SELECT 
    o.product_id,
    o.warehouse_id,
    SUM(o.quantity) AS total_demand,
    i.stock_level,
    i.reorder_point,
    CASE 
        WHEN SUM(o.quantity) > i.stock_level THEN 'Demand > Stock'
        ELSE 'Balanced'
    END AS risk_flag
FROM orders o
JOIN inventory i 
    ON o.product_id = i.product_id 
   AND o.warehouse_id = i.warehouse_id
GROUP BY o.product_id, o.warehouse_id, i.stock_level, i.reorder_point
ORDER BY total_demand DESC;