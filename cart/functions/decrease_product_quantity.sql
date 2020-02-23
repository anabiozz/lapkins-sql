CREATE OR REPLACE FUNCTION cart.decrease_product_quantity(variation_id_p integer, session_p text, size_option_id_p integer)
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
				) - 1
		WHERE
			variation_id = variation_id_p
		AND
			session = session_p::uuid
		AND
			size_option_id = size_option_id_p;
	END;
$$ LANGUAGE plpgsql;
