INSERT INTO new_products.attribute_key (id, name, parent_id, id_deleted, created_at, updated_at) VALUES (1, 'Автор', null, '0', '2020-02-18 09:28:03.907495', '2020-02-18 09:28:03.907495');
INSERT INTO new_products.attribute_key (id, name, parent_id, id_deleted, created_at, updated_at) VALUES (3, 'Покрытие', null, '0', '2020-02-19 12:27:43.071456', '2020-02-19 12:27:43.071456');
INSERT INTO new_products.attribute_key (id, name, parent_id, id_deleted, created_at, updated_at) VALUES (2, 'Материалы', null, '0', '2020-02-19 12:25:08.843184', '2020-02-19 12:25:08.843184');
INSERT INTO new_products.attribute_value (id, name, attribute_key_id, created_at, updated_at) VALUES (1, 'Анастасия Кондратьева', 1, '2020-02-18 09:28:36.752317', '2020-02-18 09:28:36.752317');
INSERT INTO new_products.attribute_value (id, name, attribute_key_id, created_at, updated_at) VALUES (2, '240 g/m² pure white paper', 2, '2020-02-19 12:26:55.829005', '2020-02-19 12:26:55.829005');
INSERT INTO new_products.attribute_value (id, name, attribute_key_id, created_at, updated_at) VALUES (3, '300 g/m² Munken Lynx Rough paper (woodfree)', 2, '2020-02-19 12:27:10.118408', '2020-02-19 12:27:10.118408');
INSERT INTO new_products.attribute_value (id, name, attribute_key_id, created_at, updated_at) VALUES (4, 'semi-gloss', 3, '2020-02-19 12:27:57.329631', '2020-02-19 12:27:57.329631');
INSERT INTO new_products.attribute_value (id, name, attribute_key_id, created_at, updated_at) VALUES (5, 'gloss', 3, '2020-02-19 12:28:22.177655', '2020-02-19 12:28:22.177655');
INSERT INTO new_products.attribute_value (id, name, attribute_key_id, created_at, updated_at) VALUES (6, 'matte', 3, '2020-02-19 12:28:22.177655', '2020-02-19 12:28:22.177655');
INSERT INTO new_products.brand (id, name, is_deleted, created_at, updated_at) VALUES (1, 'Anastasia Kondraieva', '0', '2020-02-18 09:29:09.443083', '2020-02-18 09:29:09.443083');
INSERT INTO new_products.description (id, name, created_at, updated_at) VALUES (1, 'Прекрасная, удобная рубашка с отложным воротником и длинными рукавами. На груди имеется накладной карман. Изделие застегивается на пуговицы, оформлена модными полосами.', '2020-02-18 09:35:41.442903', '2020-02-18 09:35:41.442903');
INSERT INTO new_products.description (id, name, created_at, updated_at) VALUES (2, 'Крутой плакат', '2020-02-19 12:11:46.823262', '2020-02-19 12:11:46.823262');
INSERT INTO new_products.description (id, name, created_at, updated_at) VALUES (3, 'Лолкина открытка, которая лолится про открывании', '2020-02-19 12:12:21.859350', '2020-02-19 12:12:21.859350');
INSERT INTO new_products.kind (id, name, is_deleted, created_at, updated_at) VALUES (1, 'Мужской', '0', '2020-02-18 09:38:46.874323', '2020-02-18 09:38:46.874323');
INSERT INTO new_products.kind (id, name, is_deleted, created_at, updated_at) VALUES (2, 'Женский', '0', '2020-02-18 09:38:46.874323', '2020-02-18 09:38:46.874323');
INSERT INTO new_products.kind (id, name, is_deleted, created_at, updated_at) VALUES (3, 'Детский', '0', '2020-02-18 09:38:46.874323', '2020-02-18 09:38:46.874323');
INSERT INTO new_products.kind (id, name, is_deleted, created_at, updated_at) VALUES (4, 'Девочки', '0', '2020-02-18 09:38:46.874323', '2020-02-18 09:38:46.874323');
INSERT INTO new_products.kind (id, name, is_deleted, created_at, updated_at) VALUES (5, 'Мальчики', '0', '2020-02-18 09:38:46.874323', '2020-02-18 09:38:46.874323');
INSERT INTO new_products.kind (id, name, is_deleted, created_at, updated_at) VALUES (6, 'Унисекс', '0', '2020-02-18 09:38:46.874323', '2020-02-18 09:38:46.874323');
INSERT INTO new_products.name (id, name, created_at, updated_at) VALUES (1, 'Постер "Веселье"', '2020-02-18 09:42:49.807961', '2020-02-18 09:42:49.807961');
INSERT INTO new_products.name (id, name, created_at, updated_at) VALUES (2, 'Постер "Смысл"', '2020-02-19 12:13:50.134416', '2020-02-19 12:13:50.134416');
INSERT INTO new_products.name (id, name, created_at, updated_at) VALUES (3, 'Открытка "Веселье"', '2020-02-19 12:13:50.134416', '2020-02-19 12:13:50.134416');
INSERT INTO new_products.name (id, name, created_at, updated_at) VALUES (4, 'Открытка "Смысл"', '2020-02-19 12:13:50.134416', '2020-02-19 12:13:50.134416');
INSERT INTO new_products.product (id, name_id, description_id, brand_id, subject_id, season_id, kind_id, is_deleted, created_at, updated_at) VALUES (2, 1, 1, 1, 1, 1, 6, '0', '2020-02-18 09:45:00.313473', '2020-02-18 09:45:00.313473');
INSERT INTO new_products.product (id, name_id, description_id, brand_id, subject_id, season_id, kind_id, is_deleted, created_at, updated_at) VALUES (3, 3, 3, 1, 2, 1, 6, '0', '2020-02-19 12:20:55.611809', '2020-02-19 12:20:55.611809');
INSERT INTO new_products.product (id, name_id, description_id, brand_id, subject_id, season_id, kind_id, is_deleted, created_at, updated_at) VALUES (1, 2, 2, 1, 1, 1, 6, '0', '2020-02-19 12:15:39.363829', '2020-02-19 12:15:39.363829');
INSERT INTO new_products.product_to_attributes (product_id, attribute_key_id, attribute_value_id, created_at, updated_at) VALUES (1, 1, 1, '2020-02-18 09:40:04.257572', '2020-02-18 09:40:04.257572');
INSERT INTO new_products.product_to_attributes (product_id, attribute_key_id, attribute_value_id, created_at, updated_at) VALUES (1, 2, 2, '2020-02-19 12:30:07.989994', '2020-02-19 12:30:07.989994');
INSERT INTO new_products.product_to_attributes (product_id, attribute_key_id, attribute_value_id, created_at, updated_at) VALUES (2, 1, 1, '2020-02-19 12:31:51.562135', '2020-02-19 12:31:51.562135');
INSERT INTO new_products.product_to_attributes (product_id, attribute_key_id, attribute_value_id, created_at, updated_at) VALUES (2, 2, 2, '2020-02-19 12:31:51.562135', '2020-02-19 12:31:51.562135');
INSERT INTO new_products.product_to_attributes (product_id, attribute_key_id, attribute_value_id, created_at, updated_at) VALUES (3, 1, 1, '2020-02-19 12:31:51.562135', '2020-02-19 12:31:51.562135');
INSERT INTO new_products.product_to_attributes (product_id, attribute_key_id, attribute_value_id, created_at, updated_at) VALUES (3, 2, 2, '2020-02-19 12:31:51.562135', '2020-02-19 12:31:51.562135');
INSERT INTO new_products.product_to_attributes (product_id, attribute_key_id, attribute_value_id, created_at, updated_at) VALUES (3, 3, 4, '2020-02-19 12:31:51.562135', '2020-02-19 12:31:51.562135');
INSERT INTO new_products.product_to_attributes (product_id, attribute_key_id, attribute_value_id, created_at, updated_at) VALUES (2, 3, 4, '2020-02-19 12:31:51.562135', '2020-02-19 12:31:51.562135');
INSERT INTO new_products.product_to_attributes (product_id, attribute_key_id, attribute_value_id, created_at, updated_at) VALUES (1, 3, 4, '2020-02-19 12:30:13.985290', '2020-02-19 12:30:13.985290');
INSERT INTO new_products.season (id, name, is_deleted, created_at, updated_at) VALUES (1, 'круглогодичный', '0', '2020-02-18 09:40:44.541102', '2020-02-18 09:40:44.541102');
INSERT INTO new_products.season (id, name, is_deleted, created_at, updated_at) VALUES (4, 'зима', '0', '2020-02-18 09:40:44.541102', '2020-02-18 09:40:44.541102');
INSERT INTO new_products.season (id, name, is_deleted, created_at, updated_at) VALUES (2, 'лето', '0', '2020-02-18 09:40:44.541102', '2020-02-18 09:40:44.541102');
INSERT INTO new_products.season (id, name, is_deleted, created_at, updated_at) VALUES (3, 'демисезон', '0', '2020-02-18 09:40:44.541102', '2020-02-18 09:40:44.541102');
INSERT INTO new_products.size (id, size, created_at, updated_at) VALUES (1, '120x300', '2020-02-19 17:22:41.636633', '2020-02-19 17:22:41.636633');
INSERT INTO new_products.size (id, size, created_at, updated_at) VALUES (2, '400x400', '2020-02-19 17:22:41.636633', '2020-02-19 17:22:41.636633');
INSERT INTO new_products.size (id, size, created_at, updated_at) VALUES (3, '250x600', '2020-02-19 17:22:41.636633', '2020-02-19 17:22:41.636633');
INSERT INTO new_products.size_option (id, variation_id, is_deleted, created_at, updated_at, size_id) VALUES (1, 1, '0', '2020-02-18 17:02:18.487937', '2020-02-18 17:02:18.487937', 1);
INSERT INTO new_products.size_option (id, variation_id, is_deleted, created_at, updated_at, size_id) VALUES (3, 3, '0', '2020-02-19 12:37:50.890832', '2020-02-19 12:37:50.890832', 2);
INSERT INTO new_products.size_option (id, variation_id, is_deleted, created_at, updated_at, size_id) VALUES (2, 2, '0', '2020-02-19 12:37:50.890832', '2020-02-19 12:37:50.890832', 2);
INSERT INTO new_products.size_option (id, variation_id, is_deleted, created_at, updated_at, size_id) VALUES (7, 3, '0', '2020-02-19 17:32:13.685952', '2020-02-19 17:32:13.685952', 3);
INSERT INTO new_products.size_option_price (size_option_id, price, created_at, updated_at) VALUES (2, '100', '2020-02-19 12:38:57.628775', '2020-02-19 12:38:57.628775');
INSERT INTO new_products.size_option_price (size_option_id, price, created_at, updated_at) VALUES (1, '100', '2020-02-18 17:03:21.561528', '2020-02-18 17:03:21.561528');
INSERT INTO new_products.size_option_price (size_option_id, price, created_at, updated_at) VALUES (3, '50', '2020-02-19 12:38:57.628775', '2020-02-19 12:38:57.628775');
INSERT INTO new_products.subject (id, name, is_deleted, created_at, updated_at) VALUES (1, 'Постеры', '0', '2020-02-18 09:44:45.530929', '2020-02-18 09:44:45.530929');
INSERT INTO new_products.subject (id, name, is_deleted, created_at, updated_at) VALUES (2, 'Открытки', '0', '2020-02-18 09:44:45.530929', '2020-02-18 09:44:45.530929');
INSERT INTO new_products.subject (id, name, is_deleted, created_at, updated_at) VALUES (3, 'Одежда', '0', '2020-02-18 09:44:45.530929', '2020-02-18 09:44:45.530929');
INSERT INTO new_products.subject (id, name, is_deleted, created_at, updated_at) VALUES (4, 'Кольца', '0', '2020-02-18 09:44:45.530929', '2020-02-18 09:44:45.530929');
INSERT INTO new_products.subject_to_attribute_key (subject_id, attribute_key_id, is_deleted, created_at, updated_at) VALUES (1, 1, '0', '2020-02-18 17:04:35.571139', '2020-02-18 17:04:35.571139');
INSERT INTO new_products.variation (id, product_id, article, photo_count, is_deleted, created_at, updated_at) VALUES (1, 2, '123', 1, '0', '2020-02-18 16:43:53.217681', '2020-02-18 16:43:53.217681');
INSERT INTO new_products.variation (id, product_id, article, photo_count, is_deleted, created_at, updated_at) VALUES (2, 1, 'выфвф', 3, '0', '2020-02-19 12:22:35.983665', '2020-02-19 12:22:35.983665');
INSERT INTO new_products.variation (id, product_id, article, photo_count, is_deleted, created_at, updated_at) VALUES (3, 3, 'афываыфв', 2, '0', '2020-02-19 12:32:25.248397', '2020-02-19 12:32:25.248397');
INSERT INTO new_products.variation_to_brand (variation_id, brand_id, created_at, updated_at) VALUES (1, 1, '2020-02-18 17:01:05.236858', '2020-02-18 17:01:05.236858');