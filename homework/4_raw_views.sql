
CREATE EXTERNAL TABLE zsuzsi.raw_views (
    title STRING,
    views INT,
    rank INT,
    date DATE,
    retrieved_at STRING
)
ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
LOCATION 's3://zsuzsi-wikidata/raw-views/';