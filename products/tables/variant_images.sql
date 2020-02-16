CREATE TABLE products.variant_images (
	id SERIAL PRIMARY KEY,
	name TEXT,
	variant_id INT REFERENCES products.variant(id),
	created_at timestamptz DEFAULT current_timestamp
);
