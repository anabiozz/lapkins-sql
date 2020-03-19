CREATE OR REPLACE FUNCTION products.get_categories(category_url text)
    RETURNS TABLE (
        id int,
        name text,
        description text,
        url text
	)
AS $$
BEGIN
    RETURN QUERY
	    WITH RECURSIVE nodes(id, name, description, url) AS (
		    SELECT s1.id, s1.name, s1.description, s1.url
		    FROM products.category s1 WHERE parent_id = ( SELECT c.id FROM products.category c
		                                                     WHERE c.url = category_url)
		    UNION
		    SELECT s2.id, s2.name, s2.description, s2.url
		    FROM products.category s2, nodes s1 WHERE s2.parent_id = s1.id
	    )
	    SELECT * FROM nodes;
END;
$$ LANGUAGE plpgsql;