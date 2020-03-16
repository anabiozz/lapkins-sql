CREATE TABLE orders.customer_payment_method (
    id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers.customer(id),
    payment_code_id INT REFERENCES orders.payment_method(id),
    created_at timestamp with time zone DEFAULT current_timestamp,
    updated_at timestamptz DEFAULT current_timestamp
);