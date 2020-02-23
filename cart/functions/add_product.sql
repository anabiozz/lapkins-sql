CREATE OR REPLACE FUNCTION cart.add_product(variation_id_p integer, session_p text, size_option_id_p integer)
RETURNS VOID
AS $$
	BEGIN
	    UPDATE cart.cart
	    SET
	        session=session_p::uuid,
	        variation_id=variation_id_p,
	        size_option_id=size_option_id_p,
	        quantity=(
                SELECT quantity FROM cart.cart
                WHERE variation_id = variation_id_p
                AND session = session_p::uuid
	            AND size_option_id=size_option_id_p
            ) + 1
	    WHERE
			variation_id = variation_id_p
        AND
			session = session_p::uuid
	    AND
			size_option_id = size_option_id_p;

		INSERT INTO cart.cart(session, variation_id, size_option_id, quantity)
		SELECT session_p::uuid, variation_id_p, size_option_id_p, 1
	    WHERE NOT EXISTS(
			SELECT 1 FROM cart.cart
			WHERE session = session_p::uuid
	        AND variation_id = variation_id_p
	        AND size_option_id = size_option_id_p
	    );

	END
$$ LANGUAGE plpgsql;