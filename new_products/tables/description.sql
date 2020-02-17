CREATE TABLE IF NOT EXISTS new_products.description (
	id SERIAL PRIMARY KEY,
	name INT NOT NULL,
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);
