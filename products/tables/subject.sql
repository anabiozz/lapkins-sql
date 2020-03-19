CREATE TABLE IF NOT EXISTS products.subject (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	is_deleted BOOLEAN,
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);

INSERT INTO products.subject
VALUES (1, 'Одежда', false),
       (2, 'Кольца', false),
       (3, 'Постеры с деревянной рамкой', false),
       (4, 'Постеры', false),
       (5, 'Открытки', false);
