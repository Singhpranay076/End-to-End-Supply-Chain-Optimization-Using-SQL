CREATE TABLE products (
    product_id Varchar PRIMARY KEY,
    category TEXT,
    cost_price NUMERIC(10,2),
	selling_price NUMERIC(10,2)
);

CREATE TABLE orders (
    order_id Varchar PRIMARY KEY,
    product_id Varchar,
    order_date Date,
	quantity Integer,
	warehouse_id Varchar,
	region TEXT
);

CREATE TABLE inventory (
    product_id varchar,
    warehouse_id varchar,
	stock_level INTEGER,
    reorder_point INTEGER,
	max_stock INTEGER
);
CREATE TABLE shipping (
    shipment_id Varchar PRIMARY KEY,
    warehouse_id Varchar,
	region TEXT,
    delivery_time_days INTEGER,
    shipping_cost NUMERIC(10,2)
);