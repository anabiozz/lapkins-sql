CREATE TABLE IF NOT EXISTS products.attribute_value (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	attribute_key_id INT REFERENCES products.attribute_key(id),
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);

INSERT INTO products.attribute_value
VALUES (1, 'Анастасия Кондратьева', 1),
       (2, '240 g/m² pure white paper', 3),
       (3, '300 g/m² Munken Lynx Rough paper (woodfree)', 3),
       (4, 'semi-gloss', 2),
       (5, 'matte', 2),
       (6, 'gloss', 2);