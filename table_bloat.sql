SELECT
  schemaname,
  relname AS table_name,
  indexrelname AS index_name,
  pg_size_pretty(pg_relation_size(indexrelid)) AS index_size
FROM
  pg_stat_user_indexes
ORDER BY
  pg_relation_size(indexrelid) DESC
LIMIT 10;

