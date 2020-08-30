/*
Navicat MySQL Data Transfer

Source Server         : 49.232.228.221
Source Server Version : 50649
Source Host           : 49.232.228.221:3306
Source Database       : fly

Target Server Type    : MYSQL
Target Server Version : 50649
File Encoding         : 65001

Date: 2020-08-30 16:33:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for airlines
-- ----------------------------
DROP TABLE IF EXISTS `airlines`;
CREATE TABLE `airlines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `airlines_name` varchar(255) DEFAULT NULL,
  `airlines_code` varchar(255) DEFAULT NULL,
  `airlines_description` varchar(255) DEFAULT NULL,
  `airlines_img` varchar(255) DEFAULT NULL,
  `airlines_alliance` varchar(255) DEFAULT NULL,
  `airlines_abbreviate` varchar(255) DEFAULT NULL,
  `airlines_rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of airlines
-- ----------------------------
INSERT INTO `airlines` VALUES ('1', '中国联合航空', 'KN', null, 'https://www.potucs.com/wechat/airline/kn.png', null, '中国联航', null);
INSERT INTO `airlines` VALUES ('2', '中国南方航空', 'CZ', null, 'https://www.potucs.com/wechat/airline/cz.png', null, '南方航空', null);
INSERT INTO `airlines` VALUES ('3', '厦门航空', 'MF', null, 'https://www.potucs.com/wechat/airline/mf.png', null, '厦门航空', null);
INSERT INTO `airlines` VALUES ('4', '中国东方航空', 'MU', null, 'https://www.potucs.com/wechat/airline/mu.png', null, '东方航空', null);
INSERT INTO `airlines` VALUES ('5', '中国国际航空', 'CA', null, 'https://www.potucs.com/wechat/airline/ca.png', null, '中国国航', null);
INSERT INTO `airlines` VALUES ('6', '海南航空', 'HU', null, 'https://www.potucs.com/wechat/airline/hu.png', null, '海南航空', null);
INSERT INTO `airlines` VALUES ('7', '首都航空', 'JD', null, 'https://www.potucs.com/wechat/airline/jd.png', null, '首都航空', null);
INSERT INTO `airlines` VALUES ('8', '上海航空', 'FM', null, 'https://www.potucs.com/wechat/airline/fm.png', null, '上海航空', null);
INSERT INTO `airlines` VALUES ('9', '浙江长龙航空', 'GJ', null, 'https://www.potucs.com/wechat/airline/gj.png', null, '长龙航空', null);
INSERT INTO `airlines` VALUES ('10', '深圳航空', 'ZH', null, 'https://www.potucs.com/wechat/airline/zh.png', null, '深圳航空', null);
INSERT INTO `airlines` VALUES ('11', '河北航空', 'NS', null, 'https://www.potucs.com/wechat/airline/ns.png', null, '河北航空', null);
INSERT INTO `airlines` VALUES ('12', '吉祥航空', 'HO', null, 'https://www.potucs.com/wechat/airline/ho.png', null, '吉祥航空', null);
INSERT INTO `airlines` VALUES ('13', '春秋航空', '9C', null, 'https://www.potucs.com/wechat/airline/9c.png', null, '春秋航空', null);
INSERT INTO `airlines` VALUES ('14', '四川航空', '3U', null, 'https://www.potucs.com/wechat/airline/3u.png', null, '四川航空', null);
INSERT INTO `airlines` VALUES ('15', '成都航空', 'EU', null, 'https://www.potucs.com/wechat/airline/eu.png', null, '成都航空', null);
INSERT INTO `airlines` VALUES ('16', '西藏航空', 'TV', null, 'https://www.potucs.com/wechat/airline/tv.png', null, '西藏航空', null);
INSERT INTO `airlines` VALUES ('17', '天津航空', 'GS', null, 'https://www.potucs.com/wechat/airline/gs.png', null, '天津航空', null);
INSERT INTO `airlines` VALUES ('18', '东海航空', 'DZ', null, 'https://www.potucs.com/wechat/airline/dz.png', null, '东海航空', null);
INSERT INTO `airlines` VALUES ('19', '金鹏航空', 'Y8', null, 'https://www.potucs.com/wechat/airline/y8.png', null, '金鹏航空', null);
INSERT INTO `airlines` VALUES ('20', '昆明航空', 'KY', null, 'https://www.potucs.com/wechat/airline/ky.png', null, '昆明航空', null);
INSERT INTO `airlines` VALUES ('21', '祥鹏航空', '8L', null, 'https://www.potucs.com/wechat/airline/8l.png', null, '祥鹏航空', null);
INSERT INTO `airlines` VALUES ('22', '瑞丽航空', 'DR', null, 'https://www.potucs.com/wechat/airline/dr.png', null, '昆明航空', null);
INSERT INTO `airlines` VALUES ('23', '青岛航空', 'QW', null, 'https://www.potucs.com/wechat/airline/qw.png', null, '青岛航空', null);
INSERT INTO `airlines` VALUES ('24', '奥凯航空', 'BK', null, 'https://www.potucs.com/wechat/airline/bk.png', null, '奥凯航空', null);
INSERT INTO `airlines` VALUES ('25', '华夏航空', 'G5', null, 'https://www.potucs.com/wechat/airline/g5.png', null, '华夏航空', null);
INSERT INTO `airlines` VALUES ('26', '西部航空', 'PN', null, 'https://www.potucs.com/wechat/airline/pn.png', null, '西部航空', null);
INSERT INTO `airlines` VALUES ('27', '山东航空', 'SC', null, 'https://www.potucs.com/wechat/airline/sc.png', null, '山东航空', null);
INSERT INTO `airlines` VALUES ('28', '红土航空', 'A6', null, 'https://www.potucs.com/wechat/airline/a6.png', null, '红土航空', null);
INSERT INTO `airlines` VALUES ('29', '九元航空', 'AQ', null, 'https://www.potucs.com/wechat/airline/aq.png', null, '九元航空', null);
INSERT INTO `airlines` VALUES ('30', '福州航空', 'FU', null, 'https://www.potucs.com/wechat/airline/fu.png', null, '福州航空', null);
INSERT INTO `airlines` VALUES ('31', '桂林航空', 'GT', null, 'https://www.potucs.com/wechat/airline/gt.png', null, '桂林航空', null);
INSERT INTO `airlines` VALUES ('32', '大新华航空', 'CN', null, 'https://www.potucs.com/wechat/airline/hu.png', null, '大新华航空', null);
