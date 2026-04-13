--- Inventory Turnover

SELECT 
    o.product_id,
    o.warehouse_id,
    SUM(o.quantity) / NULLIF(AVG(i.stock_level), 0) AS inventory_turnover
FROM orders o
JOIN inventory i 
ON o.product_id = i.product_id 
AND o.warehouse_id = i.warehouse_id
GROUP BY o.product_id, o.warehouse_id;