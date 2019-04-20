CREATE TABLE IF NOT EXISTS `ports_stp` (`port_stp_id` int(11) NOT NULL,`device_id` int(11) NOT NULL,`port_id` int(11) NOT NULL,`priority` tinyint(3) unsigned NOT NULL,`state` varchar(11) NOT NULL,`enable` varchar(8) NOT NULL,`pathCost` int(10) unsigned NOT NULL,`designatedRoot` varchar(32) NOT NULL,`designatedCost` smallint(5) unsigned NOT NULL,`designatedBridge` varchar(32) NOT NULL,`designatedPort` mediumint(9) NOT NULL,`forwardTransitions` int(10) unsigned NOT NULL) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
ALTER TABLE `ports_stp` ADD PRIMARY KEY (`port_stp_id`), ADD UNIQUE KEY `device_id` (`device_id`,`port_id`);
ALTER TABLE `ports_stp` MODIFY `port_stp_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;
