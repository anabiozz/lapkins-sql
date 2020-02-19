CREATE OR REPLACE FUNCTION new_products.get_variant(variation_id_param INTEGER)
    RETURNS TABLE(vid integer, pid integer, name text, description text, price_override integer, sizes text[], images text[], attributes json[])
as
$$
DECLARE
    attr json[];
    sizes text[];
BEGIN

    SELECT array_agg(json_build_object('key', pa.display, 'value', acv.display))::json[] INTO attr
    FROM
        new_products.variation v
            INNER JOIN
        new_products.product_to_attribute_value ptav ON ptav.product_id = p.id
            INNER JOIN
        new_products.attribute_value acv ON acv.id = ptav.attribute_value_id
            INNER JOIN
        new_products.attribute_key pa ON pa.id = acv.attribute_id
    WHERE p.id = product_id_param;

    SELECT array_agg(size) INTO sizes
    FROM
        new_products."size" s
            INNER JOIN
        new_products.class_to_size pcps ON pcps.size_id = s.id
            INNER JOIN
        new_products.class pc ON pc.id = pcps.class_id
            INNER JOIN
        new_products.product product ON product.class_id = pc.id AND product.id = product_id_param;


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
            new_products.variation v
        INNER JOIN
            new_products.product product ON v.product_id = product.id
        INNER JOIN
            new_products.variant_to_size pvts ON pvts.variant_id = variant.id AND pvts.is_default_size = true
        INNER JOIN
            new_products."size" ss ON ss.id = pvts.size_id
        INNER JOIN
            new_products.variant_images vim ON vim.variant_id = variant.id
        WHERE
            v.id = variation_id_param
        GROUP BY
            product.id, variant.id, ss.size
        ORDER BY product.id);
END;
$$
LANGUAGE 'plpgsql';

alter function new_products.get_variant(integer) owner to lapkin;

