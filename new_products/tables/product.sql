
CREATE TABLE products.product (
    id SERIAL PRIMARY KEY,
    name_id INT NOT NULL REFERENCES products.name(id),
    description_id INT NOT NULL REFERENCES products.description(id),
    brand_id INT NOT NULL REFERENCES products.brand(id),
    subject_id INT NOT NULL REFERENCES products.subject(id),
    season_id INT NOT NULL REFERENCES products.season(id),
    kind_id INT NOT NULL REFERENCES products.kind(id),
    is_deleted BIT,
    created_at timestamp with time zone DEFAULT current_timestamp,
		updated_at timestamptz DEFAULT current_timestamp
);
