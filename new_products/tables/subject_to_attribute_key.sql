CREATE TABLE products.subject_to_attribute_key (
    id SERIAL PRIMARY KEY,
    attribute_key_id INT NOT NULL products.attribute_key(id),
		is_deleted BIT,
    created_at timestamp with time zone DEFAULT current_timestamp,
		updated_at timestamptz DEFAULT current_timestamp
);