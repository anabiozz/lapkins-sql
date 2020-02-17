CREATE TABLE IF NOT EXISTS new_products.attribute_value (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	attribute_key_id INT REFERENCES new_products.attribute_key(id),
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);