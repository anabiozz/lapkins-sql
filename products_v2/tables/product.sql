CREATE TABLE IF NOT EXISTS products_v2.product (
	id SERIAL PRIMARY KEY,
	name_id INT NOT NULL REFERENCES products_v2.name(id),
	description_id INT NOT NULL REFERENCES products_v2.description(id),
	brand_id INT NOT NULL REFERENCES products_v2.brand(id),
	subject_id INT NOT NULL REFERENCES products_v2.subject(id),
	season_id INT NOT NULL REFERENCES products_v2.season(id),
	kind_id INT NOT NULL REFERENCES products_v2.kind(id),
	is_deleted BIT,
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);