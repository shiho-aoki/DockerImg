CREATE DATABASE IF NOT EXISTS `keep_cards` COLLATE 'utf8mb4_general_ci' ;

GRANT ALL ON `keep_cards`.* TO 'localuser'@'%' ;

FLUSH PRIVILEGES ;