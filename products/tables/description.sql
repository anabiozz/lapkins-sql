CREATE TABLE IF NOT EXISTS products.description (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);

INSERT INTO products.description
VALUES (1, 'Прекрасная, удобная рубашка с отложным воротником и длинными рукавами. На груди имеется накладной карман.'),
       (2, 'Крутой плакат'),
       (3, 'Лолкина открытка, которая лолится про открывании');
