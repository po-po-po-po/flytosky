/*
Navicat MySQL Data Transfer

Source Server         : po
Source Server Version : 50649
Source Host           : 49.232.228.221:3306
Source Database       : fly

Target Server Type    : MYSQL
Target Server Version : 50649
File Encoding         : 65001

Date: 2020-08-27 13:27:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for airlines
-- ----------------------------
DROP TABLE IF EXISTS `airlines`;
CREATE TABLE `airlines` (
  `id` int(11) NOT NULL,
  `airlines_name` varchar(255) DEFAULT NULL,
  `airlines_code` varchar(255) DEFAULT NULL,
  `airlines_description` varchar(255) DEFAULT NULL,
  `airlines_img` varchar(255) DEFAULT NULL,
  `airlines_alliance` varchar(255) DEFAULT NULL,
  `airlines_abbreviate` varchar(255) DEFAULT NULL,
  `airlines_rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
