CREATE VIEW zsuzsi.views AS
SELECT
    title,
    views,
    date,
    rank, 
    CAST(from_iso8601_timestamp(retrieved_at) AS TIMESTAMP) AS retrieved_at
FROM zsuzsi.raw_views
ORDER BY
    date ASC,
    rank ASC;