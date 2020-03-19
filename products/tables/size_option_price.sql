CREATE TABLE IF NOT EXISTS products.size_option_price (
	size_option_id INT NOT NULL REFERENCES products.size_option(id),
	price TEXT,
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);

INSERT INTO products.size_option_price
VALUES (2, '100'),
       (3, '50'),
       (1, '150'),
       (4, '100'),
       (5, '150');