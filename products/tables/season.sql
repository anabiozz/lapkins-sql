CREATE TABLE IF NOT EXISTS products.season (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	is_deleted BOOLEAN,
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);

INSERT INTO products.season
VALUES (1, 'круглогодичный', false),
       (2, 'зима', false),
       (3, 'лето', false),
       (4, 'демисезон', false);