CREATE TABLE orders.payment_method (
    id SERIAL PRIMARY KEY,
    status TEXT NOT NULL,
    created_at timestamp with time zone DEFAULT current_timestamp,
    updated_at timestamptz DEFAULT current_timestamp
);

INSERT INTO orders.payment_method (status)
VALUES ('credit card'), ('debit card'), ('cash');