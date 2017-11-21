/**
information_schema
 */

-- Innodb
SELECT *
FROM INFORMATION_SCHEMA.INNODB_TRX;
SELECT *
FROM INFORMATION_SCHEMA.INNODB_LOCKS;

/*
processlist
 */
SELECT
  `ID`,
  `USER`,
  `HOST`,
  `DB`,
  `COMMAND`,
  `TIME`,
  `STATE`,
  LEFT(`INFO`, 51200) AS `Info`
FROM `information_schema`.`PROCESSLIST`;

SHOW PROCESSLIST ;
SHOW FULL PROCESSLIST ;

