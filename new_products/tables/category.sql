CREATE TABLE IF NOT EXISTS new_products.category (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	description TEXT,
	hidden BOOLEAN NOT NULL DEFAULT false,
	tree_id INT,
	parent_id INT REFERENCES new_products.category(id),
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);