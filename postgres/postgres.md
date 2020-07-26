## Copy Table data to csv
\COPY (SELECT * FROM information_schema.sequences) TO '/tmp/sequences.csv' DELIMITER ',' CSV HEADER

## Reset Sequence
ALTER SEQUENCE product_id_seq RESTART WITH 1453;
>
[FillFactor](https://www.cybertec-postgresql.com/en/what-is-fillfactor-and-how-does-it-affect-postgresql-performance/)
