CREATE TABLE IF NOT EXISTS products.subject_to_attribute_key (
	subject_id INT NOT NULL REFERENCES products.subject(id),
	attribute_key_id INT NOT NULL REFERENCES products.attribute_key(id),
	is_deleted BOOLEAN,
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);

INSERT INTO products.subject_to_attribute_key
VALUES (4, 1, false),
       (5, 1, false);