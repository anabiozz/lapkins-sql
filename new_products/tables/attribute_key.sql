CREATE TABLE IF NOT EXISTS new_products.attribute_key (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	parent_id INT REFERENCES new_products.attribute_key(id),
	id_deleted BIT,
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);