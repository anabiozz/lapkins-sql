CREATE OR REPLACE FUNCTION new_products.get_variant(variant_id_param INTEGER, size_option_id_param INTEGER)
	RETURNS TABLE (
		vid integer,
		pid integer,
		name text,
		description text,
		brand text,
		subject text,
		season text,
		kind text,
		images text[],
		attributes json[],
		price text,
		sizes text[]
    )
as
$$
DECLARE
	attr json[];
	sizes text[];
BEGIN

	SELECT array_agg(json_build_object('key', ak.name, 'value', av.name))::json[] INTO attr
	FROM
		new_products.variation v
	INNER JOIN
		new_products.product p ON v.product_id = p.id
	INNER JOIN
		new_products.product_to_attributes pta ON p.id = pta.product_id
	INNER JOIN
		new_products.attribute_key ak ON pta.attribute_key_id = ak.id
	INNER JOIN
		new_products.attribute_value av ON pta.attribute_value_id = av.id
	WHERE
			v.id = variant_id_param;

    SELECT array_agg(json_build_object('key', so.id, 'value', s.size)) INTO sizes
    FROM
        new_products.size s
    INNER JOIN
        new_products.size_option so ON s.id = so.size_id
    INNER JOIN
        new_products.variation v ON so.variation_id = v.id
    WHERE
      v.id = variant_id_param;

	RETURN QUERY (
		SELECT
			v.id AS vid,
			p.id AS pid,
			n.name,
			d.name,
			b.name,
			su.name,
			se.name,
			k.name,
			array_agg(DISTINCT n.name || '/' || s.size || '/' || n.name) AS images,
			attr as attributes,
			sop.price,
			sizes as sizes
		FROM
			new_products.variation v
		INNER JOIN
			new_products.product p ON v.product_id = p.id
		INNER JOIN
			new_products.name n ON p.name_id = n.id
		INNER JOIN
			new_products.description d ON p.description_id = d.id
		INNER JOIN
			new_products.brand b on p.brand_id = b.id
		INNER JOIN
			new_products.subject su on p.subject_id = su.id
		INNER JOIN
			new_products.season se on p.season_id = se.id
		INNER JOIN
			new_products.kind k on p.kind_id = k.id
		INNER JOIN
			new_products.size_option so ON v.id = so.variation_id
		INNER JOIN
			new_products.size s ON so.size_id = s.id
		INNER JOIN
			new_products.size_option_price sop ON so.id = sop.size_option_id
		WHERE
			v.id = variant_id_param
		AND
	        so.id = size_option_id_param
		GROUP BY
			v.id, p.id, n.name, d.name, b.name, su.name, se.name, k.name, sop.price
	);
END
$$
	LANGUAGE 'plpgsql';