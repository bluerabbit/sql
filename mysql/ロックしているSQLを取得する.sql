SELECT
  INNODB_TRX.trx_id,
  INNODB_TRX.trx_query
FROM
  INNODB_LOCK_WAITS
    INNER JOIN INNODB_TRX
      ON INNODB_LOCK_WAITS.requesting_trx_id = INNODB_TRX.trx_id;
