CREATE TABLE products.class (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	display TEXT NOT NULL,
	sku_part TEXT UNIQUE,
	created_at timestamp with time zone DEFAULT current_timestamp
);