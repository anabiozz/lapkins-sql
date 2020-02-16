CREATE TABLE products.attribute_value (
	id SERIAL PRIMARY KEY,
	display TEXT NOT NULL,
	attribute_id INT REFERENCES products.product_attribute(id),
	created_at timestamp with time zone DEFAULT current_timestamp
);
