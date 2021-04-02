ALTER DATABASE redmine DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

DELIMITER $$
CREATE PROCEDURE `redmine`.`update_char_set`()
    BEGIN
     DECLARE done INT DEFAULT 0;
     DECLARE t_sql VARCHAR(256);
     DECLARE tableName VARCHAR(128);
     DECLARE lists CURSOR FOR SELECT table_name FROM `information_schema`.`TABLES` WHERE table_schema = 'redmine';
     DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;
     OPEN lists;
     FETCH lists INTO tableName;
     REPEAT
        SET @t_sql = CONCAT('ALTER TABLE ', tableName, ' CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci');
        PREPARE stmt FROM @t_sql;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;
     FETCH lists INTO tableName;
     UNTIL done END REPEAT;
     CLOSE lists;
    END$$
DELIMITER ;

CALL redmine.update_char_set();
