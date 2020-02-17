CREATE TABLE IF NOT EXISTS new_products.product_to_attributes (
	product_id INT NOT NULL,
	attribute_key_id INT NOT NULL,
	attribute_value_id INT,
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);