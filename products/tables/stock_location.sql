CREATE TABLE products.stock_location (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	created_at timestamptz DEFAULT current_timestamp
);