CREATE TABLE IF NOT EXISTS products.product (
	id SERIAL PRIMARY KEY,
	name_id INT NOT NULL REFERENCES products.name(id),
	description_id INT NOT NULL REFERENCES products.description(id),
	brand_id INT NOT NULL REFERENCES products.brand(id),
	subject_id INT NOT NULL REFERENCES products.subject(id),
	season_id INT NOT NULL REFERENCES products.season(id),
	kind_id INT NOT NULL REFERENCES products.kind(id),
    category_id INT NOT NULL REFERENCES products.category(id),
	is_deleted BOOLEAN,
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);

INSERT INTO products.product
VALUES (1, 1, 2, 1, 4, 1, 6, 10, false),
       (2, 2, 1, 1, 4, 1, 6, 10, false),
       (3, 3, 3, 1, 5, 1, 6, 3, false),
       (4, 4, 1, 1, 5, 1, 6, 3, false);