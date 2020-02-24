CREATE TABLE IF NOT EXISTS products_v2.size_option (
	id SERIAL PRIMARY KEY,
	variation_id INT NOT NULL REFERENCES products_v2.variation(id),
	is_deleted BIT,
	size_id INT NOT NULL REFERENCES products_v2.size(id),
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);