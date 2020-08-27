/*
Navicat MySQL Data Transfer

Source Server         : po
Source Server Version : 50649
Source Host           : 49.232.228.221:3306
Source Database       : fly

Target Server Type    : MYSQL
Target Server Version : 50649
File Encoding         : 65001

Date: 2020-08-27 13:27:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for flight
-- ----------------------------
DROP TABLE IF EXISTS `flight`;
CREATE TABLE `flight` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flight_no` varchar(255) DEFAULT NULL,
  `flight_name_start` varchar(255) DEFAULT NULL,
  `flight_name_end` varchar(255) DEFAULT NULL,
  `airlines_code` varchar(255) DEFAULT NULL,
  `flight_date` varchar(255) DEFAULT NULL,
  `flight_frequency` varchar(255) DEFAULT '',
  `airway_id` int(11) DEFAULT NULL,
  `flight_remark` varchar(255) DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `airport_name_start` varchar(255) DEFAULT NULL,
  `airport_name_end` varchar(255) DEFAULT NULL,
  `sort` int(11) unsigned zerofill DEFAULT NULL,
  `airport_name_start_code` varchar(32) DEFAULT NULL,
  `airport_name_end_code` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4328 DEFAULT CHARSET=utf8;
