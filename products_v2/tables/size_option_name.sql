CREATE TABLE IF NOT EXISTS products_v2.size_option_name (
	id SERIAL PRIMARY KEY,
	size TEXT NOT NULL,
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);

-- 26
-- 27
-- 28
-- 3-6мес
-- 6-9мес
-- 40
-- 37
-- 38-39
