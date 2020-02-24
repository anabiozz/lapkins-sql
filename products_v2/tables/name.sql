CREATE TABLE IF NOT EXISTS products_v2.name (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);

-- Кардиган
-- Рукавицы
-- Джемпер
-- Постельное белье
-- Кофта
