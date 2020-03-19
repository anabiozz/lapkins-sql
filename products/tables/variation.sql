CREATE TABLE IF NOT EXISTS products.variation (
	id SERIAL PRIMARY KEY,
	product_id INT NOT NULL REFERENCES products.product(id),
	article TEXT NOT NULL,
	photo_count INT NOT NULL,
	is_deleted BOOLEAN,
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);

INSERT INTO products.variation
VALUES (1, 1, 'pstr-veselie', 1, false),
       (2, 2, 'pstr-smisl', 1, false),
       (3, 3, 'pstcrd-veselie', 3, false),
       (4, 4, 'pstcrd-smisl', 2, false);
