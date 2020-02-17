
CREATE TABLE products.variation_to_brand (
		variation_id INT NOT NULL REFERENCES products.variation(id),
    brand_id INT NOT NULL REFERENCES products.brand(id),
   	created_at timestamp with time zone DEFAULT current_timestamp,
		updated_at timestamptz DEFAULT current_timestamp
);