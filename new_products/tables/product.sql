CREATE TABLE IF NOT EXISTS new_products.product (
	id SERIAL PRIMARY KEY,
	name_id INT NOT NULL REFERENCES new_products.name(id),
	description_id INT NOT NULL REFERENCES new_products.description(id),
	brand_id INT NOT NULL REFERENCES new_products.brand(id),
	subject_id INT NOT NULL REFERENCES new_products.subject(id),
	season_id INT NOT NULL REFERENCES new_products.season(id),
	kind_id INT NOT NULL REFERENCES new_products.kind(id),
	is_deleted BIT,
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);