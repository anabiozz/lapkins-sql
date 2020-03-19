CREATE TABLE IF NOT EXISTS products.category (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	description TEXT,
	url TEXT,
	hidden BOOLEAN NOT NULL DEFAULT false,
	tree_id INT,
	parent_id INT REFERENCES products.category(id),
	created_at timestamp with time zone DEFAULT current_timestamp,
	updated_at timestamptz DEFAULT current_timestamp
);

CREATE INDEX section_parent_id_idx ON products.category (parent_id);

INSERT INTO products.category
VALUES (1, 'картина на холсте', 'Give your couch the love and care that it deserves with our fun', 'canvas', false, 0, 7),
       (2, 'ежеднивники', 'Give your couch the love and care that it deserves with our fun', '', false, 0, 8),
       (3, 'открытки', 'Give your couch the love and care that it deserves with our fun', 'postcards', false, 0, 8),
       (4, 'подарки', 'Give your couch the love and care that it deserves with our fun and', '', false, 0, null),
       (5, 'календари', 'Give your couch the love and care that it deserves with our fun', '', false, 0, 8),
       (6, 'дом', 'Give your couch the love and care that it deserves with our fun', '', false, 0, null),
       (7, 'декор', 'Give your couch the love and care that it deserves with our fun', 'wallart', false, 0, null),
       (8, 'канцелярия', 'Give your couch the love and care that it deserves with our fun', 'stationery', false, 0, null),
       (9, 'тетради', 'Give your couch the love and care that it deserves with our fun', '', false, 0, 8),
       (10, 'постер', 'Give your couch the love and care that it deserves with our fun', 'posters-without-frame', false, 0, 7);