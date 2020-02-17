CREATE TABLE IF NOT EXISTS new_products.size_option_price (
	size_option_id INT NOT NULL REFERENCES new_products.size_option(id),
	price TEXT,
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);