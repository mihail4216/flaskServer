                name                 |                 setting                 |                                                          description                                                          
-------------------------------------+-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------------
 allow_system_table_mods             | off                                     | Allows modifications of the structure of system tables.
 application_name                    | psql                                    | Sets the application name to be reported in statistics and logs.
 archive_command                     | (disabled)                              | Sets the shell command that will be called to archive a WAL file.
 archive_mode                        | off                                     | Allows archiving of WAL files using archive_command.
 archive_timeout                     | 0                                       | Forces a switch to the next WAL file if a new file has not been started within N seconds.
 array_nulls                         | on                                      | Enable input of NULL elements in arrays.
 authentication_timeout              | 1min                                    | Sets the maximum allowed time to complete client authentication.
 autovacuum                          | on                                      | Starts the autovacuum subprocess.
 autovacuum_analyze_scale_factor     | 0.1                                     | Number of tuple inserts, updates, or deletes prior to analyze as a fraction of reltuples.
 autovacuum_analyze_threshold        | 50                                      | Minimum number of tuple inserts, updates, or deletes prior to analyze.
 autovacuum_freeze_max_age           | 200000000                               | Age at which to autovacuum a table to prevent transaction ID wraparound.
 autovacuum_max_workers              | 3                                       | Sets the maximum number of simultaneously running autovacuum worker processes.
 autovacuum_multixact_freeze_max_age | 400000000                               | Multixact age at which to autovacuum a table to prevent multixact wraparound.
 autovacuum_naptime                  | 1min                                    | Time to sleep between autovacuum runs.
 autovacuum_vacuum_cost_delay        | 20ms                                    | Vacuum cost delay in milliseconds, for autovacuum.
 autovacuum_vacuum_cost_limit        | -1                                      | Vacuum cost amount available before napping, for autovacuum.
 autovacuum_vacuum_scale_factor      | 0.2                                     | Number of tuple updates or deletes prior to vacuum as a fraction of reltuples.
 autovacuum_vacuum_threshold         | 50                                      | Minimum number of tuple updates or deletes prior to vacuum.
 autovacuum_work_mem                 | -1                                      | Sets the maximum memory to be used by each autovacuum worker process.
 backend_flush_after                 | 0                                       | Number of pages after which previously performed writes are flushed to disk.
 backslash_quote                     | safe_encoding                           | Sets whether "\'" is allowed in string literals.
 bgwriter_delay                      | 200ms                                   | Background writer sleep time between rounds.
 bgwriter_flush_after                | 512kB                                   | Number of pages after which previously performed writes are flushed to disk.
 bgwriter_lru_maxpages               | 100                                     | Background writer maximum number of LRU pages to flush per round.
 bgwriter_lru_multiplier             | 2                                       | Multiple of the average buffer usage to free per round.
 block_size                          | 8192                                    | Shows the size of a disk block.
 bonjour                             | off                                     | Enables advertising the server via Bonjour.
 bonjour_name                        |                                         | Sets the Bonjour service name.
 bytea_output                        | hex                                     | Sets the output format for bytea.
 check_function_bodies               | on                                      | Check function bodies during CREATE FUNCTION.
 checkpoint_completion_target        | 0.5                                     | Time spent flushing dirty buffers during checkpoint, as fraction of checkpoint interval.
 checkpoint_flush_after              | 256kB                                   | Number of pages after which previously performed writes are flushed to disk.
 checkpoint_timeout                  | 5min                                    | Sets the maximum time between automatic WAL checkpoints.
 checkpoint_warning                  | 30s                                     | Enables warnings if checkpoint segments are filled more frequently than this.
 client_encoding                     | UTF8                                    | Sets the client's character set encoding.
 client_min_messages                 | notice                                  | Sets the message levels that are sent to the client.
 cluster_name                        | 10/main                                 | Sets the name of the cluster, which is included in the process title.
 commit_delay                        | 0                                       | Sets the delay in microseconds between transaction commit and flushing WAL to disk.
 commit_siblings                     | 5                                       | Sets the minimum concurrent open transactions before performing commit_delay.
 config_file                         | /etc/postgresql/10/main/postgresql.conf | Sets the server's main configuration file.
 constraint_exclusion                | partition                               | Enables the planner to use constraints to optimize queries.
 cpu_index_tuple_cost                | 0.005                                   | Sets the planner's estimate of the cost of processing each index entry during an index scan.
 cpu_operator_cost                   | 0.0025                                  | Sets the planner's estimate of the cost of processing each operator or function call.
 cpu_tuple_cost                      | 0.01                                    | Sets the planner's estimate of the cost of processing each tuple (row).
 cursor_tuple_fraction               | 0.1                                     | Sets the planner's estimate of the fraction of a cursor's rows that will be retrieved.
 data_checksums                      | off                                     | Shows whether data checksums are turned on for this cluster.
 data_directory                      | /var/lib/postgresql/10/main             | Sets the server's data directory.
 data_sync_retry                     | off                                     | Whether to continue running after a failure to sync data files.
 DateStyle                           | ISO, DMY                                | Sets the display format for date and time values.
 db_user_namespace                   | off                                     | Enables per-database user names.
 deadlock_timeout                    | 1s                                      | Sets the time to wait on a lock before checking for deadlock.
 debug_assertions                    | off                                     | Shows whether the running server has assertion checks enabled.
 debug_pretty_print                  | on                                      | Indents parse and plan tree displays.
 debug_print_parse                   | off                                     | Logs each query's parse tree.
 debug_print_plan                    | off                                     | Logs each query's execution plan.
 debug_print_rewritten               | off                                     | Logs each query's rewritten parse tree.
 default_statistics_target           | 100                                     | Sets the default statistics target.
 default_tablespace                  |                                         | Sets the default tablespace to create tables and indexes in.
 default_text_search_config          | pg_catalog.english                      | Sets default text search configuration.
 default_transaction_deferrable      | off                                     | Sets the default deferrable status of new transactions.
 default_transaction_isolation       | read committed                          | Sets the transaction isolation level of each new transaction.
 default_transaction_read_only       | off                                     | Sets the default read-only status of new transactions.
 default_with_oids                   | off                                     | Create new tables with OIDs by default.
 dynamic_library_path                | $libdir                                 | Sets the path for dynamically loadable modules.
 dynamic_shared_memory_type          | posix                                   | Selects the dynamic shared memory implementation used.
 effective_cache_size                | 4GB                                     | Sets the planner's assumption about the total size of the data caches.
 effective_io_concurrency            | 1                                       | Number of simultaneous requests that can be handled efficiently by the disk subsystem.
 enable_bitmapscan                   | on                                      | Enables the planner's use of bitmap-scan plans.
 enable_gathermerge                  | on                                      | Enables the planner's use of gather merge plans.
 enable_hashagg                      | on                                      | Enables the planner's use of hashed aggregation plans.
 enable_hashjoin                     | on                                      | Enables the planner's use of hash join plans.
 enable_indexonlyscan                | on                                      | Enables the planner's use of index-only-scan plans.
 enable_indexscan                    | on                                      | Enables the planner's use of index-scan plans.
 enable_material                     | on                                      | Enables the planner's use of materialization.
 enable_mergejoin                    | on                                      | Enables the planner's use of merge join plans.
 enable_nestloop                     | on                                      | Enables the planner's use of nested-loop join plans.
 enable_seqscan                      | on                                      | Enables the planner's use of sequential-scan plans.
 enable_sort                         | on                                      | Enables the planner's use of explicit sort steps.
 enable_tidscan                      | on                                      | Enables the planner's use of TID scan plans.
 escape_string_warning               | on                                      | Warn about backslash escapes in ordinary string literals.
 event_source                        | PostgreSQL                              | Sets the application name used to identify PostgreSQL messages in the event log.
 exit_on_error                       | off                                     | Terminate session on any error.
 external_pid_file                   | /var/run/postgresql/10-main.pid         | Writes the postmaster PID to the specified file.
 extra_float_digits                  | 0                                       | Sets the number of digits displayed for floating-point values.
 force_parallel_mode                 | off                                     | Forces use of parallel query facilities.
 from_collapse_limit                 | 8                                       | Sets the FROM-list size beyond which subqueries are not collapsed.
 fsync                               | on                                      | Forces synchronization of updates to disk.
 full_page_writes                    | on                                      | Writes full pages to WAL when first modified after a checkpoint.
 geqo                                | on                                      | Enables genetic query optimization.
 geqo_effort                         | 5                                       | GEQO: effort is used to set the default for other GEQO parameters.
 geqo_generations                    | 0                                       | GEQO: number of iterations of the algorithm.
 geqo_pool_size                      | 0                                       | GEQO: number of individuals in the population.
 geqo_seed                           | 0                                       | GEQO: seed for random path selection.
 geqo_selection_bias                 | 2                                       | GEQO: selective pressure within the population.
 geqo_threshold                      | 12                                      | Sets the threshold of FROM items beyond which GEQO is used.
 gin_fuzzy_search_limit              | 0                                       | Sets the maximum allowed result for exact search by GIN.
 gin_pending_list_limit              | 4MB                                     | Sets the maximum size of the pending list for GIN index.
 hba_file                            | /etc/postgresql/10/main/pg_hba.conf     | Sets the server's "hba" configuration file.
 hot_standby                         | on                                      | Allows connections and queries during recovery.
 hot_standby_feedback                | off                                     | Allows feedback from a hot standby to the primary that will avoid query conflicts.
 huge_pages                          | try                                     | Use of huge pages on Linux.
 ident_file                          | /etc/postgresql/10/main/pg_ident.conf   | Sets the server's "ident" configuration file.
 idle_in_transaction_session_timeout | 0                                       | Sets the maximum allowed duration of any idling transaction.
 ignore_checksum_failure             | off                                     | Continues processing after a checksum failure.
 ignore_system_indexes               | off                                     | Disables reading from system indexes.
 integer_datetimes                   | on                                      | Datetimes are integer based.
 IntervalStyle                       | postgres                                | Sets the display format for interval values.
 join_collapse_limit                 | 8                                       | Sets the FROM-list size beyond which JOIN constructs are not flattened.
 krb_caseins_users                   | off                                     | Sets whether Kerberos and GSSAPI user names should be treated as case-insensitive.
 krb_server_keyfile                  | FILE:/etc/postgresql-common/krb5.keytab | Sets the location of the Kerberos server key file.
 lc_collate                          | en_US.UTF-8                             | Shows the collation order locale.
 lc_ctype                            | en_US.UTF-8                             | Shows the character classification and case conversion locale.
 lc_messages                         | en_US.UTF-8                             | Sets the language in which messages are displayed.
 lc_monetary                         | ru_RU.UTF-8                             | Sets the locale for formatting monetary amounts.
 lc_numeric                          | ru_RU.UTF-8                             | Sets the locale for formatting numbers.
 lc_time                             | ru_RU.UTF-8                             | Sets the locale for formatting date and time values.
 listen_addresses                    | localhost                               | Sets the host name or IP address(es) to listen to.
 lo_compat_privileges                | off                                     | Enables backward compatibility mode for privilege checks on large objects.
 local_preload_libraries             |                                         | Lists unprivileged shared libraries to preload into each backend.
 lock_timeout                        | 0                                       | Sets the maximum allowed duration of any wait for a lock.
 log_autovacuum_min_duration         | -1                                      | Sets the minimum execution time above which autovacuum actions will be logged.
 log_checkpoints                     | off                                     | Logs each checkpoint.
 log_connections                     | off                                     | Logs each successful connection.
 log_destination                     | stderr                                  | Sets the destination for server log output.
 log_directory                       | log                                     | Sets the destination directory for log files.
 log_disconnections                  | off                                     | Logs end of a session, including duration.
 log_duration                        | off                                     | Logs the duration of each completed SQL statement.
 log_error_verbosity                 | default                                 | Sets the verbosity of logged messages.
 log_executor_stats                  | off                                     | Writes executor performance statistics to the server log.
 log_file_mode                       | 0600                                    | Sets the file permissions for log files.
 log_filename                        | postgresql-%Y-%m-%d_%H%M%S.log          | Sets the file name pattern for log files.
 log_hostname                        | off                                     | Logs the host name in the connection logs.
 log_line_prefix                     | %m [%p] %q%u@%d                         | Controls information prefixed to each log line.
 log_lock_waits                      | off                                     | Logs long lock waits.
 log_min_duration_statement          | -1                                      | Sets the minimum execution time above which statements will be logged.
 log_min_error_statement             | error                                   | Causes all statements generating error at or above this level to be logged.
 log_min_messages                    | warning                                 | Sets the message levels that are logged.
 log_parser_stats                    | off                                     | Writes parser performance statistics to the server log.
 log_planner_stats                   | off                                     | Writes planner performance statistics to the server log.
 log_replication_commands            | off                                     | Logs each replication command.
 log_rotation_age                    | 1d                                      | Automatic log file rotation will occur after N minutes.
 log_rotation_size                   | 10MB                                    | Automatic log file rotation will occur after N kilobytes.
 log_statement                       | none                                    | Sets the type of statements logged.
 log_statement_stats                 | off                                     | Writes cumulative performance statistics to the server log.
 log_temp_files                      | -1                                      | Log the use of temporary files larger than this number of kilobytes.
 log_timezone                        | Europe/Samara                           | Sets the time zone to use in log messages.
 log_truncate_on_rotation            | off                                     | Truncate existing log files of same name during log rotation.
 logging_collector                   | off                                     | Start a subprocess to capture stderr output and/or csvlogs into log files.
 maintenance_work_mem                | 64MB                                    | Sets the maximum memory to be used for maintenance operations.
 max_connections                     | 100                                     | Sets the maximum number of concurrent connections.
 max_files_per_process               | 1000                                    | Sets the maximum number of simultaneously open files for each server process.
 max_function_args                   | 100                                     | Shows the maximum number of function arguments.
 max_identifier_length               | 63                                      | Shows the maximum identifier length.
 max_index_keys                      | 32                                      | Shows the maximum number of index keys.
 max_locks_per_transaction           | 64                                      | Sets the maximum number of locks per transaction.
 max_logical_replication_workers     | 4                                       | Maximum number of logical replication worker processes.
 max_parallel_workers                | 8                                       | Sets the maximum number of parallel workers that can be active at one time.
 max_parallel_workers_per_gather     | 2                                       | Sets the maximum number of parallel processes per executor node.
 max_pred_locks_per_page             | 2                                       | Sets the maximum number of predicate-locked tuples per page.
 max_pred_locks_per_relation         | -2                                      | Sets the maximum number of predicate-locked pages and tuples per relation.
 max_pred_locks_per_transaction      | 64                                      | Sets the maximum number of predicate locks per transaction.
 max_prepared_transactions           | 0                                       | Sets the maximum number of simultaneously prepared transactions.
 max_replication_slots               | 10                                      | Sets the maximum number of simultaneously defined replication slots.
 max_stack_depth                     | 2MB                                     | Sets the maximum stack depth, in kilobytes.
 max_standby_archive_delay           | 30s                                     | Sets the maximum delay before canceling queries when a hot standby server is processing archived WAL data.
 max_standby_streaming_delay         | 30s                                     | Sets the maximum delay before canceling queries when a hot standby server is processing streamed WAL data.
 max_sync_workers_per_subscription   | 2                                       | Maximum number of table synchronization workers per subscription.
 max_wal_senders                     | 10                                      | Sets the maximum number of simultaneously running WAL sender processes.
 max_wal_size                        | 1GB                                     | Sets the WAL size that triggers a checkpoint.
 max_worker_processes                | 8                                       | Maximum number of concurrent worker processes.
 min_parallel_index_scan_size        | 512kB                                   | Sets the minimum amount of index data for a parallel scan.
 min_parallel_table_scan_size        | 8MB                                     | Sets the minimum amount of table data for a parallel scan.
 min_wal_size                        | 80MB                                    | Sets the minimum size to shrink the WAL to.
 old_snapshot_threshold              | -1                                      | Time before a snapshot is too old to read pages changed after the snapshot was taken.
 operator_precedence_warning         | off                                     | Emit a warning for constructs that changed meaning since PostgreSQL 9.4.
 parallel_setup_cost                 | 1000                                    | Sets the planner's estimate of the cost of starting up worker processes for parallel query.
 parallel_tuple_cost                 | 0.1                                     | Sets the planner's estimate of the cost of passing each tuple (row) from worker to master backend.
 password_encryption                 | md5                                     | Encrypt passwords.
 port                                | 5432                                    | Sets the TCP port the server listens on.
 post_auth_delay                     | 0                                       | Waits N seconds on connection startup after authentication.
 pre_auth_delay                      | 0                                       | Waits N seconds on connection startup before authentication.
 quote_all_identifiers               | off                                     | When generating SQL fragments, quote all identifiers.
 random_page_cost                    | 4                                       | Sets the planner's estimate of the cost of a nonsequentially fetched disk page.
 replacement_sort_tuples             | 150000                                  | Sets the maximum number of tuples to be sorted using replacement selection.
 restart_after_crash                 | on                                      | Reinitialize server after backend crash.
 row_security                        | on                                      | Enable row security.
 search_path                         | "$user", public                         | Sets the schema search order for names that are not schema-qualified.
 segment_size                        | 1GB                                     | Shows the number of pages per disk file.
 seq_page_cost                       | 1                                       | Sets the planner's estimate of the cost of a sequentially fetched disk page.
 server_encoding                     | UTF8                                    | Sets the server (database) character set encoding.
 server_version                      | 10.9 (Ubuntu 10.9-0ubuntu0.18.04.1)     | Shows the server version.
 server_version_num                  | 100009                                  | Shows the server version as an integer.
 session_preload_libraries           |                                         | Lists shared libraries to preload into each backend.
 session_replication_role            | origin                                  | Sets the session's behavior for triggers and rewrite rules.
 shared_buffers                      | 128MB                                   | Sets the number of shared memory buffers used by the server.
 shared_preload_libraries            |                                         | Lists shared libraries to preload into server.
 ssl                                 | on                                      | Enables SSL connections.
 ssl_ca_file                         |                                         | Location of the SSL certificate authority file.
 ssl_cert_file                       | /etc/ssl/certs/ssl-cert-snakeoil.pem    | Location of the SSL server certificate file.
 ssl_ciphers                         | HIGH:MEDIUM:+3DES:!aNULL                | Sets the list of allowed SSL ciphers.
 ssl_crl_file                        |                                         | Location of the SSL certificate revocation list file.
 ssl_dh_params_file                  |                                         | Location of the SSL DH parameters file.
 ssl_ecdh_curve                      | prime256v1                              | Sets the curve to use for ECDH.
 ssl_key_file                        | /etc/ssl/private/ssl-cert-snakeoil.key  | Location of the SSL server private key file.
 ssl_prefer_server_ciphers           | on                                      | Give priority to server ciphersuite order.
 standard_conforming_strings         | on                                      | Causes '...' strings to treat backslashes literally.
 statement_timeout                   | 0                                       | Sets the maximum allowed duration of any statement.
 stats_temp_directory                | /var/run/postgresql/10-main.pg_stat_tmp | Writes temporary statistics files to the specified directory.
 superuser_reserved_connections      | 3                                       | Sets the number of connection slots reserved for superusers.
 synchronize_seqscans                | on                                      | Enable synchronized sequential scans.
 synchronous_commit                  | on                                      | Sets the current transaction's synchronization level.
 synchronous_standby_names           |                                         | Number of synchronous standbys and list of names of potential synchronous ones.
 syslog_facility                     | local0                                  | Sets the syslog "facility" to be used when syslog enabled.
 syslog_ident                        | postgres                                | Sets the program name used to identify PostgreSQL messages in syslog.
 syslog_sequence_numbers             | on                                      | Add sequence number to syslog messages to avoid duplicate suppression.
 syslog_split_messages               | on                                      | Split messages sent to syslog by lines and to fit into 1024 bytes.
 tcp_keepalives_count                | 0                                       | Maximum number of TCP keepalive retransmits.
 tcp_keepalives_idle                 | 0                                       | Time between issuing TCP keepalives.
 tcp_keepalives_interval             | 0                                       | Time between TCP keepalive retransmits.
 temp_buffers                        | 8MB                                     | Sets the maximum number of temporary buffers used by each session.
 temp_file_limit                     | -1                                      | Limits the total size of all temporary files used by each process.
 temp_tablespaces                    |                                         | Sets the tablespace(s) to use for temporary tables and sort files.
 TimeZone                            | Europe/Samara                           | Sets the time zone for displaying and interpreting time stamps.
 timezone_abbreviations              | Default                                 | Selects a file of time zone abbreviations.
 trace_notify                        | off                                     | Generates debugging output for LISTEN and NOTIFY.
 trace_recovery_messages             | log                                     | Enables logging of recovery-related debugging information.
 trace_sort                          | off                                     | Emit information about resource usage in sorting.
 track_activities                    | on                                      | Collects information about executing commands.
 track_activity_query_size           | 1024                                    | Sets the size reserved for pg_stat_activity.query, in bytes.
 track_commit_timestamp              | off                                     | Collects transaction commit time.
 track_counts                        | on                                      | Collects statistics on database activity.
 track_functions                     | none                                    | Collects function-level statistics on database activity.
 track_io_timing                     | off                                     | Collects timing statistics for database I/O activity.
 transaction_deferrable              | off                                     | Whether to defer a read-only serializable transaction until it can be executed with no possible serialization failures.
 transaction_isolation               | read committed                          | Sets the current transaction's isolation level.
 transaction_read_only               | off                                     | Sets the current transaction's read-only status.
 transform_null_equals               | off                                     | Treats "expr=NULL" as "expr IS NULL".
 unix_socket_directories             | /var/run/postgresql                     | Sets the directories where Unix-domain sockets will be created.
 unix_socket_group                   |                                         | Sets the owning group of the Unix-domain socket.
 unix_socket_permissions             | 0777                                    | Sets the access permissions of the Unix-domain socket.
 update_process_title                | on                                      | Updates the process title to show the active SQL command.
 vacuum_cost_delay                   | 0                                       | Vacuum cost delay in milliseconds.
 vacuum_cost_limit                   | 200                                     | Vacuum cost amount available before napping.
 vacuum_cost_page_dirty              | 20                                      | Vacuum cost for a page dirtied by vacuum.
 vacuum_cost_page_hit                | 1                                       | Vacuum cost for a page found in the buffer cache.
 vacuum_cost_page_miss               | 10                                      | Vacuum cost for a page not found in the buffer cache.
 vacuum_defer_cleanup_age            | 0                                       | Number of transactions by which VACUUM and HOT cleanup should be deferred, if any.
 vacuum_freeze_min_age               | 50000000                                | Minimum age at which VACUUM should freeze a table row.
 vacuum_freeze_table_age             | 150000000                               | Age at which VACUUM should scan whole table to freeze tuples.
 vacuum_multixact_freeze_min_age     | 5000000                                 | Minimum age at which VACUUM should freeze a MultiXactId in a table row.
 vacuum_multixact_freeze_table_age   | 150000000                               | Multixact age at which VACUUM should scan whole table to freeze tuples.
 wal_block_size                      | 8192                                    | Shows the block size in the write ahead log.
 wal_buffers                         | 4MB                                     | Sets the number of disk-page buffers in shared memory for WAL.
 wal_compression                     | off                                     | Compresses full-page writes written in WAL file.
 wal_consistency_checking            |                                         | Sets the WAL resource managers for which WAL consistency checks are done.
 wal_keep_segments                   | 0                                       | Sets the number of WAL files held for standby servers.
 wal_level                           | replica                                 | Set the level of information written to the WAL.
 wal_log_hints                       | off                                     | Writes full pages to WAL when first modified after a checkpoint, even for a non-critical modifications.
 wal_receiver_status_interval        | 10s                                     | Sets the maximum interval between WAL receiver status reports to the primary.
 wal_receiver_timeout                | 1min                                    | Sets the maximum wait time to receive data from the primary.
 wal_retrieve_retry_interval         | 5s                                      | Sets the time to wait before retrying to retrieve WAL after a failed attempt.
 wal_segment_size                    | 16MB                                    | Shows the number of pages per write ahead log segment.
 wal_sender_timeout                  | 1min                                    | Sets the maximum time to wait for WAL replication.
 wal_sync_method                     | fdatasync                               | Selects the method used for forcing WAL updates to disk.
 wal_writer_delay                    | 200ms                                   | Time between WAL flushes performed in the WAL writer.
 wal_writer_flush_after              | 1MB                                     | Amount of WAL written out by WAL writer that triggers a flush.
 work_mem                            | 4MB                                     | Sets the maximum memory to be used for query workspaces.
 xmlbinary                           | base64                                  | Sets how binary values are to be encoded in XML.
 xmloption                           | content                                 | Sets whether XML data in implicit parsing and serialization operations is to be considered as documents or content fragments.
 zero_damaged_pages                  | off                                     | Continues processing past damaged page headers.
(270 rows)

