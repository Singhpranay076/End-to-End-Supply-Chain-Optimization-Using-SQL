-- Problem 1: Which products are at risk of stockout?
SELECT 
    i.product_id,
    i.warehouse_id,
    i.stock_level,
    i.reorder_point,
    CASE 
        WHEN i.stock_level < i.reorder_point THEN 'Stockout Risk'
        ELSE 'OK'
    END AS status
FROM inventory i;