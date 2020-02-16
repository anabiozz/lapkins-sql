CREATE TABLE products.product_to_category (
	id SERIAL PRIMARY KEY,
	product_id INT REFERENCES products.product(id),
	category_id INT REFERENCES products.category(id),
	created_at timestamptz DEFAULT current_timestamp
);