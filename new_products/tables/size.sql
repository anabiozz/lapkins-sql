CREATE TABLE IF NOT EXISTS new_products.size (
    id SERIAL PRIMARY KEY,
    size TEXT NOT NULL,
    created_at timestamp with time zone DEFAULT current_timestamp,
    updated_at timestamptz DEFAULT current_timestamp
);