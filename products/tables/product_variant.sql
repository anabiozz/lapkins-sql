CREATE TABLE products.variant ( 
	id SERIAL PRIMARY KEY,
	sku TEXT,
	name TEXT NOT NULL,
	price_override INT NOT NULL,
	product_id INT REFERENCES products.product(id),
	created_at timestamptz DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);