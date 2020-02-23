CREATE TABLE IF NOT EXISTS cart.cart (
	id SERIAL PRIMARY KEY,
	session uuid DEFAULT NULL,
	customer_id INT REFERENCES customers.customer(id) DEFAULT NULL,
	size_option_id INT REFERENCES new_products.size_option(id) NOT NULL,
	variation_id INT REFERENCES new_products.variation(id) NOT NULL,
	quantity INT NOT NULL DEFAULT 0
)