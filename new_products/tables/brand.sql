
CREATE TABLE products.brand (
    id SERIAL PRIMARY KEY,
    name INT NOT NULL,
		is_deleted BIT,
    created_at timestamp with time zone DEFAULT current_timestamp,
		updated_at timestamptz DEFAULT current_timestamp
);