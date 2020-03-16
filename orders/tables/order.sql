CREATE TABLE orders.order (
    id SERIAL PRIMARY KEY,
    order_status_id INT REFERENCES orders.order_status(id),
    shipping_status_id INT REFERENCES orders.shipping_status(id),
    customer_id INT REFERENCES customers.customer(id),
    order_total INT NOT NULL,
    created_at timestamp with time zone DEFAULT current_timestamp,
    updated_at timestamptz DEFAULT current_timestamp
);