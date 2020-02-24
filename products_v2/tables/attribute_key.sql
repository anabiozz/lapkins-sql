CREATE TABLE IF NOT EXISTS products_v2.attribute_key (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	parent_id INT REFERENCES products_v2.attribute_key(id),
	id_deleted BIT,
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);