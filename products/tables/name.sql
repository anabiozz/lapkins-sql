CREATE TABLE IF NOT EXISTS products.name (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);

INSERT INTO products.name
VALUES (1, 'Постер "Веселье"'),
       (2, 'Постер "Смысл"'),
       (3, 'Открытка "Веселье"'),
       (4, 'Открытка "Смысл"');