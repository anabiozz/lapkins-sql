CREATE TABLE IF NOT EXISTS new_products.size_option (
	id SERIAL PRIMARY KEY,
	variation_id INT NOT NULL REFERENCES new_products.variation(id),
	is_deleted BIT,
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);