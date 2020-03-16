CREATE TABLE orders.order_detail (
    id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders.order(id),
    variation_id INT REFERENCES products_v2.variation(id),
    quantity INT NOT NULL,
    product_price TEXT NOT NULL,
    created_at timestamp with time zone DEFAULT current_timestamp,
    updated_at timestamptz DEFAULT current_timestamp
);