CREATE TABLE IF NOT EXISTS products.product_to_attributes (
	product_id INT NOT NULL REFERENCES products.product(id),
	attribute_key_id INT NOT NULL REFERENCES products.attribute_key(id),
	attribute_value_id INT REFERENCES products.attribute_value(id),
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);

INSERT INTO products.product_to_attributes
VALUES (1, 1, 1),
       (2, 1, 1),
       (2, 2, 2),
       (3, 1, 1),
       (3, 2, 2),
       (3, 3, 4),
       (2, 3, 4),
       (1, 3, 4),
       (1, 2, 3),
       (4, 1, 3),
       (4, 2, 2),
       (4, 3, 4);