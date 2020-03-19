CREATE TABLE IF NOT EXISTS products.stock (
	id SERIAL PRIMARY KEY,
	qty INT NOT NULL,
	cost_price INT NOT NULL,
	variation_id INT REFERENCES products.variation(id),
	location_id INT REFERENCES products.stock_location(id),
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);