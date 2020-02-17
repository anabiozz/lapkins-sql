CREATE TABLE IF NOT EXISTS new_products.subject (
	id SERIAL PRIMARY KEY,
	name INT NOT NULL,
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
