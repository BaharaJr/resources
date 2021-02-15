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
### List all tables referencing a given table
  `SELECT
  tc.constraint_name, tc.table_name, kcu.column_name, 
  ccu.table_name AS foreign_table_name,
  ccu.column_name AS foreign_column_name 
  FROM 
  information_schema.table_constraints AS tc 
  JOIN information_schema.key_column_usage AS kcu
    ON tc.constraint_name = kcu.constraint_name
  JOIN information_schema.constraint_column_usage AS ccu
    ON ccu.constraint_name = tc.constraint_name
  WHERE constraint_type = 'FOREIGN KEY' AND ccu.table_name='YourTableNameHere';`
