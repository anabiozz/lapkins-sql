CREATE TABLE IF NOT EXISTS products_v2.variation (
	id SERIAL PRIMARY KEY,
	product_id INT NOT NULL REFERENCES products_v2.product(id),
	article TEXT NOT NULL,
	photo_count INT NOT NULL,
	is_deleted BIT,
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);