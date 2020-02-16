CREATE TABLE products.product_images (
	id SERIAL PRIMARY KEY,
	image TEXT,
	alt TEXT,
	"order" INT,
	product_id INT REFERENCES products.product(id),
	created_at timestamptz DEFAULT current_timestamp
);