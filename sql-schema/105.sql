CREATE TABLE IF NOT EXISTS `state_indexes` ( `state_index_id` int(11) NOT NULL AUTO_INCREMENT, `state_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL, PRIMARY KEY (`state_index_id`), UNIQUE KEY `state_name` (`state_name`) ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ROW_FORMAT=DYNAMIC;
CREATE TABLE IF NOT EXISTS `state_translations` ( `state_translation_id` int(11) NOT NULL AUTO_INCREMENT, `state_index_id` int(11) NOT NULL, `state_descr` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL, `state_draw_graph` tinyint(1) NOT NULL, `state_value` tinyint(1) NOT NULL, `state_generic_value` tinyint(1) NOT NULL, `state_lastupdated` timestamp NOT NULL, PRIMARY KEY (`state_translation_id`), UNIQUE KEY `state_index_id_value` (`state_index_id`,`state_value`) ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ROW_FORMAT=DYNAMIC;
CREATE TABLE IF NOT EXISTS `sensors_to_state_indexes` ( `sensors_to_state_translations_id` int(11) NOT NULL AUTO_INCREMENT, `sensor_id` int(11) NOT NULL, `state_index_id` int(11) NOT NULL, PRIMARY KEY (`sensors_to_state_translations_id`), UNIQUE KEY `sensor_id_state_index_id` (`sensor_id`,`state_index_id`) ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ROW_FORMAT=DYNAMIC;
ALTER TABLE  `sensors_to_state_indexes` ADD FOREIGN KEY (`sensor_id`) REFERENCES  `sensors`(`sensor_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE  `sensors_to_state_indexes` ADD FOREIGN KEY (`state_index_id`) REFERENCES  `state_indexes`(`state_index_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE  `sensors` ADD `sensor_prev` float default NULL;
