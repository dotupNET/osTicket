/**
 * @signature 222ef6c95d5afb35cca5f44b6b64bdb3
 * @version v1.15
 * @title Alter dept_id and priority_id in email table
 *
 * This patch changes dept_id and priority_id fron tinyint to int
 */

-- change dept_id
ALTER TABLE  `%TABLE_PREFIX%email` CHANGE  `dept_id`  `dept_id` INT( 11 ) UNSIGNED NOT NULL DEFAULT  '0';
-- change priority_id
ALTER TABLE  `%TABLE_PREFIX%email` CHANGE  `priority_id`  `priority_id` INT( 11 ) UNSIGNED NOT NULL DEFAULT  '2';

-- Finished with patch
UPDATE `%TABLE_PREFIX%config`
    SET `value` = '222ef6c95d5afb35cca5f44b6b64bdb3'
    WHERE `key` = 'schema_signature' AND `namespace` = 'core';
