/*
Navicat MySQL Data Transfer

Source Server         : po
Source Server Version : 50649
Source Host           : 49.232.228.221:3306
Source Database       : fly

Target Server Type    : MYSQL
Target Server Version : 50649
File Encoding         : 65001

Date: 2020-08-27 13:27:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for airport
-- ----------------------------
DROP TABLE IF EXISTS `airport`;
CREATE TABLE `airport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `airport_name` varchar(255) DEFAULT NULL,
  `airport_code` varchar(255) DEFAULT NULL,
  `airport_abbreviate` varchar(255) DEFAULT NULL,
  `airport_location` varchar(255) DEFAULT NULL,
  `airport_area` varchar(255) DEFAULT NULL,
  `is_hot` varchar(255) DEFAULT NULL,
  `airport_url` varchar(255) DEFAULT NULL,
  `airport_rank` int(11) DEFAULT NULL,
  `city_url` varchar(255) DEFAULT NULL,
  `airport_description` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;
