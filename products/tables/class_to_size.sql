CREATE TABLE products.class_to_size(
	id SERIAL PRIMARY KEY,
	class_id INT REFERENCES products.class(id),
	size_id INT REFERENCES products."size"(id),
	created_at timestamptz DEFAULT current_timestamp
);