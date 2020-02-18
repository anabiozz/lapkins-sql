CREATE TABLE IF NOT EXISTS new_products.kind (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	is_deleted BIT,
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);

-- Мужской
-- Женский
-- Детский
