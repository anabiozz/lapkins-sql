create or replace function new_products.get_products(subject_url text)
	returns TABLE(
	    id integer,
	    name text,
	    description text,
	    brand text,
	    subject text,
	    season text,
	    kind text,
	    photo_count integer,
	    article text,
	    price text
    )
	language plpgsql
as
$$
BEGIN
	RETURN QUERY
	SELECT
		v.id,
		n.name,
		d.name,
		b.name,
		su.name,
		se.name,
		k.name,
		v.photo_count,
		v.article,
		min(sop.price)
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
		new_products.subject su on p.subject_id = su.id AND su.url LIKE subject_url
			INNER JOIN
		new_products.season se on p.season_id = se.id
			INNER JOIN
		new_products.kind k on p.kind_id = k.id
			INNER JOIN
		new_products.size_option so ON v.id = so.variation_id
			INNER JOIN
		new_products.size_option_price sop ON so.id = sop.size_option_id
		GROUP BY v.id, n.name, d.name, b.name, su.name, se.name, k.name;
END
$$;