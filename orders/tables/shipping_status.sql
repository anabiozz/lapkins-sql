CREATE TABLE orders.shipping_status (
    id SERIAL PRIMARY KEY,
    status TEXT NOT NULL,
    created_at timestamp with time zone DEFAULT current_timestamp,
    updated_at timestamptz DEFAULT current_timestamp
);

INSERT INTO orders.shipping_status (status)
VALUES ('pickup'), ('fedex'), ('ups');