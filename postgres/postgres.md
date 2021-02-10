## Copy Table data to csv
\COPY (SELECT * FROM information_schema.sequences) TO '/tmp/sequences.csv' DELIMITER ',' CSV HEADER
>
## Reset Sequence
ALTER SEQUENCE product_id_seq RESTART WITH 1453;
>

## Backup DB
`pg_dump -h localhost -U "username" "dbname" -Fc > hris.bak`
>
[FillFactor](https://www.cybertec-postgresql.com/en/what-is-fillfactor-and-how-does-it-affect-postgresql-performance/)

>
### Backup DB in PG
`pg_dump -U user -f backup.sql db_name`

### Backup DB in Docker
`docker exec -t containername pg_dump --no-owner -U postgres dbname > backup.sql`
