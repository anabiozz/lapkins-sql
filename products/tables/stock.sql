CREATE TABLE products.stock (
	id SERIAL PRIMARY KEY,
	qty INT NOT NULL,
	cost_price INT NOT NULL,
	variant_id INT REFERENCES products.variant(id),
	location_id INT REFERENCES products.stock_location(id),
	created_at timestamptz DEFAULT current_timestamp
);