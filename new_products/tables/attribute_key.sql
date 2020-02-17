CREATE TABLE products.attribute_key (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
		parent_id INT REFERENCES products.attribute_value(id),
		id_deleted BIT,
    created_at timestamp with time zone DEFAULT current_timestamp,
		updated_at timestamptz DEFAULT current_timestamp
);
