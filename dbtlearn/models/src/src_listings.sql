WITH raw_listings AS (
    SELECT
        *
    FROM
        -- AIRBNB.RAW.RAW_LISTINGS
        {{ source('airbnb', 'listings')}}
)
SELECT
    id AS listing_id,
    name AS listing_name,
    listing_url,
    room_type,
    minimum_nights,
    host_id,
    price AS price_str,
    created_at,
    updated_at,
    CURRENT_TIMESTAMP AS audit_datetime
FROM
    raw_listings