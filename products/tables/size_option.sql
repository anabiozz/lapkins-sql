CREATE TABLE IF NOT EXISTS products.size_option (
	id SERIAL PRIMARY KEY,
	variation_id INT NOT NULL REFERENCES products.variation(id),
	is_deleted BOOLEAN,
	size_id INT NOT NULL REFERENCES products.size(id),
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);

INSERT INTO products.size_option
VALUES (1, 1, false, 1),
       (2, 1, false, 2),
       (3, 2, false, 1),
       (4, 2, false, 2),
       (5, 3, false, 3),
       (6, 4, false, 3);