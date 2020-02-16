CREATE OR REPLACE FUNCTION products.get_variant(product_id_param INTEGER)
	RETURNS TABLE(vid integer, pid integer, name text, description text, price_override integer, sizes text[], images text[], attributes json[])
as
--     TABLE(vid integer, pid integer, name text, description text, price_override integer, sizes text[], images text[], attr json)
$$
    DECLARE
        attr json[];
        sizes text[];
BEGIN

	SELECT array_agg(json_build_object('key', pa.display, 'value', acv.display))::json[] INTO attr
	FROM
		products.product p
			INNER JOIN
		products.product_to_attribute_value ptav ON ptav.product_id = p.id
			INNER JOIN
		products.attribute_value acv ON acv.id = ptav.attribute_value_id
			INNER JOIN
		products.attribute_key pa ON pa.id = acv.attribute_id
	WHERE p.id = product_id_param;

	SELECT array_agg(size) INTO sizes
	FROM
		products."size" s
	INNER JOIN
		products.class_to_size pcps ON pcps.size_id = s.id
	INNER JOIN
		products.class pc ON pc.id = pcps.class_id
	INNER JOIN
		products.product product ON product.class_id = pc.id AND product.id = product_id_param;


    RETURN QUERY (SELECT
	    variant.id AS vid,
		product.id AS pid,
	    variant."name",
		product.description,
	    variant.price_override,
	    sizes,
		array_agg(DISTINCT product."name" || '/' || ss.size || '/' || vim.name) AS images,
	    attr as attributes
	FROM
		products.variant variant
	INNER JOIN
		products.product product ON variant.product_id = product.id AND product.id = product_id_param
	INNER JOIN
		products.variant_to_size pvts ON pvts.variant_id = variant.id AND pvts.is_default_size = true
	INNER JOIN
		products."size" ss ON ss.id = pvts.size_id
	INNER JOIN
		products.variant_images vim ON vim.variant_id = variant.id
	GROUP BY
		product.id, variant.id, ss.size
	ORDER BY product.id);
END;
$$
LANGUAGE 'plpgsql';

alter function get_variant(integer) owner to lapkin;

