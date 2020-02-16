CREATE TABLE products.variant_to_size (
	id SERIAL PRIMARY KEY,
	variant_id INT REFERENCES products.variant(id),
	size_id INT REFERENCES products."size"(id),
	created_at timestamptz DEFAULT current_timestamp
);