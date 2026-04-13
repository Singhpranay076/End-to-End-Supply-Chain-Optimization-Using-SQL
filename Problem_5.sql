--- Problem 5: Profitability vs Logistics Cost
SELECT 
    p.product_id,
    SUM(o.quantity * (p.selling_price - p.cost_price)) AS total_profit,
    AVG(s.shipping_cost) AS avg_shipping_cost
FROM orders o
JOIN products p ON o.product_id = p.product_id
JOIN shipping s 
    ON o.warehouse_id = s.warehouse_id 
   AND o.region = s.region
GROUP BY p.product_id
ORDER BY total_profit DESC;