CREATE TABLE orders.invoice (
    id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders.order(id),
    invoice_status_id INT REFERENCES orders.invoice_status(id),
    date timestamptz DEFAULT current_timestamp,
    details TEXT,
    created_at timestamp with time zone DEFAULT current_timestamp,
    updated_at timestamptz DEFAULT current_timestamp
);