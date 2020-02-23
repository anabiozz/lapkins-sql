CREATE OR REPLACE FUNCTION cart.remove_product(variation_id_p integer, session_p text, size_option_id_p integer)
	RETURNS VOID
AS $$
BEGIN
	DELETE FROM cart.cart
    WHERE size_option_id = size_option_id_p
    AND session = session_p::uuid
    AND variation_id = variation_id_p;
END
$$ LANGUAGE plpgsql;