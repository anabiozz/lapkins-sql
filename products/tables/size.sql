CREATE TABLE IF NOT EXISTS products.size (
    id SERIAL PRIMARY KEY,
    size TEXT NOT NULL,
    created_at timestamp with time zone DEFAULT current_timestamp,
    updated_at timestamptz DEFAULT current_timestamp
);

INSERT INTO products.size
VALUES (1, '400x400'),
       (2, '250x600'),
       (3, '105x148');
