CREATE TABLE IF NOT EXISTS products.kind (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	is_deleted BOOLEAN,
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);

INSERT INTO products.kind
VALUES (1, 'Мужской', false),
       (2, 'Женский', false),
       (3, 'Детский', false),
       (4, 'Девочки', false),
       (5, 'Мальчики', false),
       (6, 'Унисекс', false);