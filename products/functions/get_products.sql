create or replace function products.get_products(category_url text)
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
	    price text,
	    category integer
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
		min(sop.price),
		c.id
	FROM
        products.variation v
	INNER JOIN
        products.product p ON v.product_id = p.id
	INNER JOIN
        products.category c on p.category_id = c.id AND c.url = category_url
	INNER JOIN
        products.name n ON p.name_id = n.id
	INNER JOIN
        products.description d ON p.description_id = d.id
	INNER JOIN
        products.brand b on p.brand_id = b.id
	INNER JOIN
        products.subject su on p.subject_id = su.id
	INNER JOIN
        products.season se on p.season_id = se.id
	INNER JOIN
        products.kind k on p.kind_id = k.id
	INNER JOIN
        products.size_option so ON v.id = so.variation_id
	INNER JOIN
        products.size_option_price sop ON so.id = sop.size_option_id
	GROUP BY v.id, n.name, d.name, b.name, su.name, se.name, k.name, c.id;
END
$$;