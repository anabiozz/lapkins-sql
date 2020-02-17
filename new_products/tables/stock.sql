CREATE TABLE IF NOT EXISTS new_products.stock (
	id SERIAL PRIMARY KEY,
	qty INT NOT NULL,
	cost_price INT NOT NULL,
	variation_id INT REFERENCES new_products.variation(id),
	location_id INT REFERENCES new_products.stock_location(id),
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);