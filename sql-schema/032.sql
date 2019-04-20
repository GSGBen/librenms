CREATE TABLE IF NOT EXISTS `ciscoASA` (  `ciscoASA_id` int(11) NOT NULL AUTO_INCREMENT, `device_id` int(11) NOT NULL, `oid` varchar(255) NOT NULL, `data` bigint(20) NOT NULL, `high_alert` bigint(20) NOT NULL, `low_alert` bigint(20) NOT NULL, `disabled` tinyint(4) NOT NULL DEFAULT '0', PRIMARY KEY (`ciscoASA_id`) ) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1  ROW_FORMAT=DYNAMIC;
