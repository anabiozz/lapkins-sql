
-- product_attribute
INSERT INTO products.attribute_key (name, display)
VALUES ('authors', 'авторы'), 
('materials', 'материалы'), 
('finish', 'покрытие'), 
('print type', 'тип печати'), 
('postcards size', 'размер'), 
('posters size', 'размер'), 
('frame', 'рамка');

-- product_class
INSERT INTO products.class (name, display, sku_part)
VALUES ('postcards', 'открытки', 'PSTCRD'), 
('posters', 'постеры', 'PSTR'), 
('badges', 'бэджи', 'BDGS'), 
('table lamps', 'настольные лампы', 'TBL-LMP'),
('canvas', 'картины на холсте', 'CNVS');

-- attribute_choice_value
INSERT INTO products.attribute_value (display, attribute_id)
VALUES ('Анастасия Кондратьева', 1), 
('Lolka Lolkina', 1),
('240 g/m² pure white paper', 2),
('300 g/m² Munken Lynx Rough paper (woodfree)', 2),
('semi-gloss', 3),
('gloss', 3),
('matte', 3),
('digital printing', 4),
('12-colour digital printing', 4),
('дерево', 7),
('пластик', 7);

-- category
INSERT INTO products.category (name, display, parent_id)
VALUES ('wallart', 'декор', NULL), 
('stationery', 'канцелярия', NULL), 
('gifts', 'подарки', NULL), 
('home', 'дом', NULL),
('posters-without-frame', 'постеры без рамки', 1),
('framed-posters-plastic', 'постеры с пластиковой рамкой', 1),
('framed-posters-wood', 'постеры с деревянной рамкой', 1),
('postcards', 'открытки', 2),
('notebooks', 'тетради', 2),
('diaries', 'ежеднивники', 2),
('calendars', 'календари', 2),
('canvas', 'картина  на холсте', 1);

-- class_to_attribute_key
INSERT INTO products.class_to_attribute_key (class_id, attribute_id)
VALUES (1, 1), 
(1, 3), 
(1, 4), 
(1, 5), 
(2, 1), 
(2, 3), 
(2, 4), 
(2, 6);

-- class_variant_attribute
INSERT INTO products.class_variant_attribute (class_id, attribute_id)
VALUES (1, 2), (2, 2), (2, 7);

-- product
INSERT INTO products.product (name, description, price, class_id)
VALUES (
			'1-pstr-veselye', 
			'Et deserunt labore excepteur id eiusmod reprehenderit do nostrud cupidatat consectetur laboris culpa.', 
			300, 
			2
		),
		(
			'2-pstr-smisl', 
			'Commodo labore est qui laboris irure esse aliquip', 
			300, 
			2
		),
		(
			'3-pstcrd-veselye', 
			'Anim ex occaecat occaecat non tempor in enim id mollit.', 
			50, 
			1
		),
		(
			'4-pstcrd-smisl', 
			'Nisi eiusmod laborum ullamco mollit elit amet deserunt ex sit nisi consectetur cillum commodo incididunt.', 
			50, 
			1
		),
		(
			'5-pstr-veselye-framed-wood', 
			'Et deserunt labore excepteur id eiusmod reprehenderit do nostrud cupidatat consectetur laboris culpa.', 
			400, 
			2
		),
		(
			'6-pstr-veselye-framed-plastic', 
			'Et deserunt labore excepteur id eiusmod reprehenderit do nostrud cupidatat consectetur laboris culpa.', 
			600, 
			2
		),
		(
			'7-pstr-smisl-framed-wood', 
			'Et deserunt labore excepteur id eiusmod reprehenderit do nostrud cupidatat consectetur laboris culpa.', 
			400, 
			2
		),
		(
			'8-pstr-smisl-framed-plastic', 
			'Et deserunt labore excepteur id eiusmod reprehenderit do nostrud cupidatat consectetur laboris culpa.', 
			600, 
			2
		),
		(
			'9-cnvs-veselye', 
			'Et deserunt labore excepteur id eiusmod reprehenderit do nostrud cupidatat consectetur laboris culpa.', 
			1000, 
			5
		);

INSERT INTO products.variant (name, price_override, product_id)
VALUES (
			'плакат веселье 300x450', 
			300, 
			1
		), 
		(
			'плакат веселье с плаcтиковой рамой 300x450', 
			600, 
			6
		),
		(
			'плакат веселье с деревянной рамой 300x450', 
			400, 
			5
		),
		(
			'плакат веселье 600x900', 
			400, 
			1
		), 
		(
			'плакат веселье с плаcтиковой рамой 600x900', 
			800, 
			6
		),
		(
			'плакат веселье с деревянной рамой 600x900', 
			900, 
			5
		),
		(
			'открытка веселье 105х148', 
			50, 
			3
		),
		(
			'плакат надпись со смыслом 300x450', 
			300, 
			2
		), 
		(
			'плакат надпись со смыслом с плаcтиковой рамой 300x450', 
			600, 
			8
		),
		(
			'плакат надпись со смыслом с деревянной рамой 300x450', 
			400, 
			7
		),
		(
			'плакат надпись со смыслом 600x900', 
			400, 
			2
		), 
		(
			'плакат надпись со смыслом с плаcтиковой рамой 600x900', 
			600, 
			8
		),
		(
			'плакат надпись со смыслом с деревянной рамой 600x900', 
			400, 
			7
		),
		(
			'открытка надпись со смыслом 105х148', 
			50, 
			4
		),
		(
			'открытка веселье 148x210', 
			70, 
			3
		),
		(
			'открытка надпись со смыслом 148x210', 
			70, 
			4
		),
		(
			'картина на холсте веселье 300x450', 
			1000, 
			9
		);

-- categories
INSERT INTO products.categories (product_id, category_id)
VALUES (1, 5), 
(2, 5), 
(3, 8), 
(4, 8), 
(5, 7), 
(6, 6), 
(7, 7), 
(8, 6),
(9, 12);

-- size
INSERT INTO products."size" (size)
VALUES ('105x148'),
('148x210'),
('300x450'),
('600x900');

-- product_class_product_size
INSERT INTO products.class_to_size (class_id, size_id)
VALUES (1, 1),
(1, 2),
(2, 3),
(2, 4);

-- product_variant_to_size
INSERT INTO products.variant_to_size (variant_id, size_id)
VALUES (1, 3),
(2, 3),
(3, 3),
(4, 4),
(5, 4),
(6, 4),
(7, 1),
(8, 3),
(9, 3),
(10, 3),
(11, 4),
(12, 4),
(13, 4),
(14, 1),
(15, 2),
(16, 2);

-- stock_location
INSERT INTO products.stock_location (name)
VALUES ('default');

-- stock
INSERT INTO products.stock (qty, cost_price, variant_id, location_id)
VALUES (10, 150, 1, 1), -- 300x450
(10, 190, 2, 1), -- 300x450 пластик
(10, 200, 3, 1), -- 300x450 дерево
(10, 160, 4, 1), -- 600х900
(10, 250, 1, 1), -- 600х900 пластик
(10, 270, 6, 1), -- 600х900 дерево
(10, 15, 7, 1), -- 105х148
(10, 150, 8, 1), -- 300x450
(10, 190, 9, 1), -- 300x450 пластик
(10, 200, 10, 1), -- 300x450 дерево
(10, 150, 11, 1),  -- 600х900
(10, 250, 12, 1), -- 600х900 пластик
(10, 270, 13, 1),  -- 600х900 дерево
(10, 15, 14, 1);


INSERT INTO products.variant_images (name, variant_id)
VALUES ('1', 1),
('2', 1),
('3', 1),
('1', 2),
('2', 2),
('3', 2),
('1', 3),
('2', 3),
('3', 3),
('1', 4),
('2', 4),
('3', 4),
('1', 5),
('2', 5),
('3', 5),
('1', 6),
('2', 6),
('3', 6),
('1', 7),
('2', 7),
('3', 7),
('1', 8),
('2', 8),
('3', 8),
('1', 9),
('2', 9),
('3', 9),
('1', 10),
('2', 10),
('3', 10),
('1', 11),
('2', 11),
('3', 11),
('1', 12),
('2', 12),
('3', 12),
('1', 13),
('2', 13),
('3', 13),
('1', 14),
('2', 14),
('3', 14),
('1', 15),
('2', 15),
('3', 15),
('1', 16),
('2', 16);