CREATE TABLE IF NOT EXISTS products.attribute_key (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	parent_id INT REFERENCES products.attribute_key(id),
	id_deleted bool,
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);

INSERT INTO products.attribute_key
VALUES (1, 'Автор', null, false),
       (2, 'Покрытие', null, false),
       (3, 'Материалы', null, false);