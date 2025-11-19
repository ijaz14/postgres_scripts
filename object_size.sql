SELECT relname   AS objectname
     , relkind   AS objecttype
     , reltuples AS entries
     , pg_size_pretty(pg_table_size(oid)) AS size
FROM   pg_class
WHERE  relkind IN ('r', 'i', 'm')
ORDER  BY pg_table_size(oid) DESC LIMIT 15;
