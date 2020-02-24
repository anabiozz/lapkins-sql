CREATE TABLE IF NOT EXISTS products_v2.variation_to_brand (
	variation_id INT NOT NULL REFERENCES products_v2.variation(id),
	brand_id INT NOT NULL REFERENCES products_v2.brand(id),
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);