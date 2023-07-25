use ace_world;

CREATE TABLE IF NOT EXISTS `town` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique Id of this Town',
  `name` varchar(255) NOT NULL COMMENT 'Unique Name of Town',
  `allegiance_id` int DEFAULT 0 NOT NULL COMMENT 'The allegiance id that this town belongs to',
  `tax_rate` float DEFAULT 0 NOT NULL COMMENT 'The tax rate for this town',
  `expiration` double NOT NULL DEFAULT 0 COMMENT 'The unix time town ownership expires',
  `last_Modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Town Control';
