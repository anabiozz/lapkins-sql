CREATE TABLE IF NOT EXISTS products_v2.subject_to_attribute_key (
	subject_id INT NOT NULL REFERENCES products_v2.subject(id),
	attribute_key_id INT NOT NULL REFERENCES products_v2.attribute_key(id),
	is_deleted BIT,
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);