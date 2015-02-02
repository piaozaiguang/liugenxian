-- ----------------------------
-- Table structure for artist
-- ----------------------------
DROP TABLE IF EXISTS `artist`;
CREATE TABLE `artist` (
  `artist_no` bigint(16) NOT NULL,
  `region` varchar(10) NOT NULL,
  `artist_name` varchar(50) NOT NULL,
  `artist_idx` char(1) NOT NULL,
  PRIMARY KEY (`artist_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for authorities
-- ----------------------------
DROP TABLE IF EXISTS `authorities`;
CREATE TABLE `authorities` (
  `USERNAME` varchar(10) NOT NULL,
  `AUTHORITY` varchar(10) NOT NULL,
  KEY `FK_USERNAME_AUTHORITY` (`USERNAME`),
  CONSTRAINT `FK_USERNAME_AUTHORITY` FOREIGN KEY (`USERNAME`) REFERENCES `users` (`USERNAME`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `post_no` bigint(16) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `view_cnt` int(9) NOT NULL DEFAULT '0',
  `creator` varchar(50) NOT NULL,
  `mod_ymdt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tablature
-- ----------------------------
DROP TABLE IF EXISTS `tablature`;
CREATE TABLE `tablature` (
  `tab_no` bigint(16) NOT NULL,
  `category` varchar(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `artist` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `creator` varchar(50) NOT NULL,
  `xiami_sid` bigint(16),
  `view_cnt` int(9) NOT NULL DEFAULT '0',
  `mod_ymdt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`tab_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `USERNAME` varchar(10) NOT NULL,
  `PASSWORD` varchar(32) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL,
  PRIMARY KEY (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;