CREATE TABLE orders.order_status (
    id SERIAL PRIMARY KEY,
    status TEXT NOT NULL,
    created_at timestamp with time zone DEFAULT current_timestamp,
    updated_at timestamptz DEFAULT current_timestamp
);

INSERT INTO orders.order_status (status)
VALUES ('in process'), ('cancelled'), ('completed'), ('out of stock');