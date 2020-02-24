CREATE OR REPLACE FUNCTION products_v2.get_variant(variation_id_param INTEGER)
    RETURNS TABLE(vid integer, pid integer, name text, description text, price_override integer, sizes text[], images text[], attributes json[])
as
$$
DECLARE
    attr json[];
    sizes text[];
BEGIN

    SELECT array_agg(json_build_object('key', pa.display, 'value', acv.display))::json[] INTO attr
    FROM
        products_v2.variation v
            INNER JOIN
        products_v2.product_to_attribute_value ptav ON ptav.product_id = p.id
            INNER JOIN
        products_v2.attribute_value acv ON acv.id = ptav.attribute_value_id
            INNER JOIN
        products_v2.attribute_key pa ON pa.id = acv.attribute_id
    WHERE p.id = product_id_param;

    SELECT array_agg(size) INTO sizes
    FROM
        products_v2."size" s
            INNER JOIN
        products_v2.class_to_size pcps ON pcps.size_id = s.id
            INNER JOIN
        products_v2.class pc ON pc.id = pcps.class_id
            INNER JOIN
        products_v2.product product ON product.class_id = pc.id AND product.id = product_id_param;


    RETURN QUERY (
        SELECT
            v.id AS vid,
            product.id AS pid,
            variant."name",
            product.description,
            variant.price_override,
            sizes,
            array_agg(DISTINCT product."name" || '/' || ss.size || '/' || vim.name) AS images,
            attr as attributes
        FROM
            products_v2.variation v
        INNER JOIN
            products_v2.product product ON v.product_id = product.id
        INNER JOIN
            products_v2.variant_to_size pvts ON pvts.variant_id = variant.id AND pvts.is_default_size = true
        INNER JOIN
            products_v2."size" ss ON ss.id = pvts.size_id
        INNER JOIN
            products_v2.variant_images vim ON vim.variant_id = variant.id
        WHERE
            v.id = variation_id_param
        GROUP BY
            product.id, variant.id, ss.size
        ORDER BY product.id);
END;
$$
LANGUAGE 'plpgsql';

alter function products_v2.get_variant(integer) owner to lapkin;

