CREATE TABLE products.class_variant_attribute (
	id SERIAL PRIMARY KEY,
	class_id INT REFERENCES products.class(id),
	attribute_key_id INT REFERENCES products.attribute_key(id),
	created_at timestamp with time zone DEFAULT current_timestamp
);
