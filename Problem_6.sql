--- Problem 6: Inventory Utilization Ratio
SELECT 
    product_id,
    warehouse_id,
    stock_level * 1.0 / max_stock AS utilization_ratio
FROM inventory;