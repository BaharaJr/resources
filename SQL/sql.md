
[Advanced SQL Part1](https://egghead.io/courses/advanced-sql-for-professional-developers)
>
[Advanced SQL Part2](https://egghead.io/courses/advanced-sql-for-professional-developers?utm_content=advanced-sql-for-professional-developers&amp;utm_medium=email&amp;utm_source=drip&amp;utm_term=postgres)

* FILTER DUPLICATES IN A TABLE
>
`
SELECT "recordId", "trainingsessionId", COUNT(*)
FROM sessionfacilitator
GROUP BY "recordId", "trainingsessionId"
HAVING COUNT(*) > 1
order by count desc
`
