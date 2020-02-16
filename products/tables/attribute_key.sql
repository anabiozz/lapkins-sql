CREATE TABLE products.attribute_key (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	display TEXT NOT NULL,
	created_at timestamp with time zone DEFAULT current_timestamp
);