CREATE OR REPLACE FUNCTION cart.load_cart(session_p text)
	RETURNS TABLE (
		vid INTEGER,
		name TEXT,
		brand TEXT,
		price INTEGER,
		price_per_item INTEGER,
		size TEXT,
		quantity INTEGER,
		size_option_id INTEGER
	)
AS $$
BEGIN

    CREATE TEMP TABLE IF NOT EXISTS cart_temp(
	    size_option_id INT,
	    variation_id INT,
	    quantity INT
    );

	INSERT INTO cart_temp
    SELECT cart.size_option_id, cart.variation_id, cart.quantity
    FROM cart.cart
	WHERE session = session_p::uuid;

	RETURN QUERY (

		SELECT
			v.id AS vid,
			n.name,
			b.name,
			sop.price::INTEGER * cart_temp.quantity,
			sop.price::INTEGER,
			s.size,
			cart_temp.quantity,
			cart_temp.size_option_id
		FROM cart_temp
		INNER JOIN new_products.variation v ON v.id = cart_temp.variation_id
		INNER JOIN new_products.product p ON v.product_id = p.id
		INNER JOIN new_products.name n ON p.name_id = n.id
		INNER JOIN new_products.brand b on p.brand_id = b.id
		INNER JOIN new_products.size_option so ON v.id = so.variation_id AND so.id = cart_temp.size_option_id
		INNER JOIN new_products.size s ON so.size_id = s.id
		INNER JOIN new_products.size_option_price sop ON so.id = sop.size_option_id
		WHERE v.id = cart_temp.variation_id
		AND so.id = cart_temp.size_option_id
		GROUP BY
			v.id, p.id, n.name, b.name, sop.price, so.id, cart_temp.quantity, s.size, cart_temp.size_option_id
	);

    DROP TABLE cart_temp;

END
$$ LANGUAGE plpgsql;

SELECT * FROM cart.load_cart('4144889c-1ba3-4fb0-bc23-e3cd5fe6e263')