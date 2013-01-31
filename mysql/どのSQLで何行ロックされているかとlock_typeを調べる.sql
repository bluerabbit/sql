SELECT
  INNODB_TRX.trx_mysql_thread_id,
  INNODB_TRX.trx_query,
  INNODB_TRX.trx_rows_locked,
  INNODB_TRX.trx_tables_in_use,
  INNODB_TRX.trx_tables_locked,
  INNODB_LOCKS.lock_mode,
  INNODB_LOCKS.lock_type,
  INNODB_LOCKS.lock_table,
  INNODB_LOCKS.lock_index
FROM
  INNODB_TRX INNER JOIN INNODB_LOCKS
    ON INNODB_TRX.trx_id = INNODB_LOCKS.lock_trx_id
WHERE trx_state = 'LOCK WAIT';
