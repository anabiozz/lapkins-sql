CREATE TABLE IF NOT EXISTS products.brand (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	is_deleted BOOLEAN,
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);

INSERT INTO products.brand
VALUES (1, 'Anastasia Kondraieva', false);