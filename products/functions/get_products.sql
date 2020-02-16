CREATE OR REPLACE FUNCTION products.get_products(category_id_param integer)
    returns TABLE(id integer, name text, description text, price integer)
    language plpgsql
as
$$
BEGIN
	 	RETURN QUERY 
 		SELECT 
 			p.id, 
 			p."name", 
 			p.description, 
 			p.price
		FROM
			products.product p
		INNER JOIN 
			products.product_to_category pc ON pc.product_id = p.id AND pc.category_id = category_id_param
		GROUP BY p.id;
	END;
$$;

alter function get_products(integer) owner to lapkin;

