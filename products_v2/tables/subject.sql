CREATE TABLE IF NOT EXISTS products_v2.subject (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	is_deleted BIT,
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);

-- Одежда
-- Обувь
-- Аксессуары
-- Белье
-- Головные уборы
-- Игрушки
-- Брюки
-- Кольца
-- Шкатулки
-- Фоторамки
