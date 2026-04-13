--- Inventory Risk (Stockouts)

SELECT 
    product_id,
    warehouse_id,
    stock_level,
    reorder_point,
    CASE 
        WHEN stock_level < reorder_point THEN 'Risk'
        ELSE 'Safe'
    END AS status
FROM inventory;