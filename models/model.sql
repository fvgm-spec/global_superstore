

SELECT
    *
FROM global_superstore_orders gso
LEFT JOIN global_superstore_returns gsr ON gsr."Order ID" = gso."Order ID"
LEFT JOIN global_superstore_people gsp ON gsp."Region" = gso."Region"