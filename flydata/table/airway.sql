/*
Navicat MySQL Data Transfer

Source Server         : po
Source Server Version : 50649
Source Host           : 49.232.228.221:3306
Source Database       : fly

Target Server Type    : MYSQL
Target Server Version : 50649
File Encoding         : 65001

Date: 2020-08-27 13:27:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for airway
-- ----------------------------
DROP TABLE IF EXISTS `airway`;
CREATE TABLE `airway` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `airway_name_start` varchar(255) DEFAULT NULL,
  `airway_name_end` varchar(255) DEFAULT NULL,
  `airway_description` varchar(255) DEFAULT NULL,
  `airway_rate` int(11) DEFAULT NULL,
  `flight_num` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1182 DEFAULT CHARSET=utf8;
