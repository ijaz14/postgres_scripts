SELECT 
	datname as database ,usename as user ,client_addr,state, count(*) as total_connections
FROM pg_stat_activity
WHERE pid<>pg_backend_pid()
GROUP BY usename,client_addr,datname,state;
