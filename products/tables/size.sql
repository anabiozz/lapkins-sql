CREATE TABLE products."size" (
	id SERIAL PRIMARY KEY,
	size TEXT NOT NULL,
	created_at timestamptz DEFAULT current_timestamp
);