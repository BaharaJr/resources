## Copy Table data to csv
\COPY (SELECT * FROM information_schema.sequences) TO '/tmp/sequences.csv' DELIMITER ',' CSV HEADER

## Reset Sequence
ALTER SEQUENCE product_id_seq RESTART WITH 1453;

