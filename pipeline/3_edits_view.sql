-- Replace <username> with your username (same as used in the notebook)

-- DROP VIEW IF EXISTS <username>.edits;

CREATE VIEW zsuzsi.edits AS
    SELECT
        title,
        edits,
        date,
        cast(from_iso8601_timestamp(retrieved_at) AS TIMESTAMP) as retrieved_at
    FROM zsuzsi.raw_edits
