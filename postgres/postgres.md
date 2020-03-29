\COPY (SELECT * FROM information_schema.sequences) TO '/tmp/sequences.csv' DELIMITER ',' CSV HEADER
