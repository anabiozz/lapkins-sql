CREATE TABLE IF NOT EXISTS new_products.subject_to_attribute_key (
	subject_id INT NOT NULL REFERENCES new_products.subject(id),
	attribute_key_id INT NOT NULL REFERENCES new_products.attribute_key(id),
	is_deleted BIT,
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);