CREATE TABLE IF NOT EXISTS products_v2.size_option_price (
	size_option_id INT NOT NULL REFERENCES products_v2.size_option(id),
	price TEXT,
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);