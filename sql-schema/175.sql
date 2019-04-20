CREATE TABLE IF NOT EXISTS `mefinfo` ( `id` int(11) NOT NULL AUTO_INCREMENT, `device_id` int(11) NOT NULL, `mefID` int(32) NOT NULL, `mefType` varchar(128) NOT NULL, `mefIdent` varchar(128) NOT NULL, `mefMTU` int(16) NOT NULL DEFAULT '1500', `mefAdmState` varchar(128) NOT NULL, `mefRowState` varchar(128) NOT NULL, PRIMARY KEY (`id`), KEY `device_id` (`device_id`), KEY `mefID` (`mefID`)) DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci ROW_FORMAT=DYNAMIC;
