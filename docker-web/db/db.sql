create database IF NOT EXISTS myDB;

use myDB;


DROP TABLE IF EXISTS secret;

CREATE TABLE secret (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO secret (`id`, `content`) VALUES (1, 'Noi dung nay cua admin');
INSERT INTO secret (`id`, `content`) VALUES (2, 'VKU{fake_flag}');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(50),
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
);

INSERT INTO `users` (`id`, `username`, `password`) VALUES (1, 'admin', '5d7845ac6ee7cfffafc5fe5f35cf666d');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (2, 'guest', '084e0343a0486ff05530df6c705c8bb4');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (3, 'utthi', '084e0343a0486ff05530df6c705c8bb4');
INSERT INTO `users` (`id`, `username`, `password`) VALUES (4, 'thuphuong', '084e0343a0486ff05530df6c705c8bb4');