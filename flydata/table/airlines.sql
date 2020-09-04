/*
Navicat MySQL Data Transfer

Source Server         : po
Source Server Version : 50649
Source Host           : 49.232.228.221:3306
Source Database       : fly

Target Server Type    : MYSQL
Target Server Version : 50649
File Encoding         : 65001

Date: 2020-09-04 17:52:14
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of airlines
-- ----------------------------
INSERT INTO `airlines` VALUES ('1', '中国联合航空', 'KN', '../airlinesflights/airlinesflights?airline_id=kn', 'https://www.potucs.com/wechat/airline/kn.png', '魔盒9.16', '中国联航', null);
INSERT INTO `airlines` VALUES ('2', '中国南方航空', 'CZ', '../airlinesflights/airlinesflights?airline_id=cz', 'https://www.potucs.com/wechat/airline/cz.png', '快乐飞', '南方航空', null);
INSERT INTO `airlines` VALUES ('3', '厦门航空', 'MF', '../airlinesflights/airlinesflights?airline_id=mf', 'https://www.potucs.com/wechat/airline/mf.png', '', '厦门航空', null);
INSERT INTO `airlines` VALUES ('4', '中国东方航空', 'MU', '../airlinesflights/airlinesflights?airline_id=mu', 'https://www.potucs.com/wechat/airline/mu.png', '随心飞', '东方航空', null);
INSERT INTO `airlines` VALUES ('5', '中国国际航空', 'CA', '../airlinesflights/airlinesflights?airline_id=ca', 'https://www.potucs.com/wechat/airline/ca.png', '', '中国国航', null);
INSERT INTO `airlines` VALUES ('6', '海南航空', 'HU', '../airlinesflights/airlinesflights?airline_id=hu', 'https://www.potucs.com/wechat/airline/hu.png', '', '海南航空', null);
INSERT INTO `airlines` VALUES ('7', '首都航空', 'JD', '../airlinesflights/airlinesflights?airline_id=jd', 'https://www.potucs.com/wechat/airline/jd.png', '', '首都航空', null);
INSERT INTO `airlines` VALUES ('8', '上海航空', 'FM', '../airlinesflights/airlinesflights?airline_id=fm', 'https://www.potucs.com/wechat/airline/fm.png', '随心飞', '上海航空', null);
INSERT INTO `airlines` VALUES ('9', '浙江长龙航空', 'GJ', '../airlinesflights/airlinesflights?airline_id=gj', 'https://www.potucs.com/wechat/airline/gj.png', '', '长龙航空', null);
INSERT INTO `airlines` VALUES ('10', '深圳航空', 'ZH', '../airlinesflights/airlinesflights?airline_id=zh', 'https://www.potucs.com/wechat/airline/zh.png', '深情飞', '深圳航空', null);
INSERT INTO `airlines` VALUES ('11', '河北航空', 'NS', '../airlinesflights/airlinesflights?airline_id=ns', 'https://www.potucs.com/wechat/airline/ns.png', '', '河北航空', null);
INSERT INTO `airlines` VALUES ('12', '吉祥航空', 'HO', '../airlinesflights/airlinesflights?airline_id=ho', 'https://www.potucs.com/wechat/airline/ho.png', '畅飞卡', '吉祥航空', null);
INSERT INTO `airlines` VALUES ('13', '春秋航空', '9C', '../airlinesflights/airlinesflights?airline_id=9c', 'https://www.potucs.com/wechat/airline/9c.png', '', '春秋航空', null);
INSERT INTO `airlines` VALUES ('14', '四川航空', '3U', '../airlinesflights/airlinesflights?airline_id=3u', 'https://www.potucs.com/wechat/airline/3u.png', '安逸飞', '四川航空', null);
INSERT INTO `airlines` VALUES ('15', '成都航空', 'EU', '../airlinesflights/airlinesflights?airline_id=eu', 'https://www.potucs.com/wechat/airline/eu.png', '', '成都航空', null);
INSERT INTO `airlines` VALUES ('16', '西藏航空', 'TV', '../airlinesflights/airlinesflights?airline_id=tv', 'https://www.potucs.com/wechat/airline/tv.png', '', '西藏航空', null);
INSERT INTO `airlines` VALUES ('17', '天津航空', 'GS', '../airlinesflights/airlinesflights?airline_id=gs', 'https://www.potucs.com/wechat/airline/gs.png', '', '天津航空', null);
INSERT INTO `airlines` VALUES ('18', '东海航空', 'DZ', '../airlinesflights/airlinesflights?airline_id=dz', 'https://www.potucs.com/wechat/airline/dz.png', '', '东海航空', null);
INSERT INTO `airlines` VALUES ('19', '金鹏航空', 'Y8', '../airlinesflights/airlinesflights?airline_id=y8', 'https://www.potucs.com/wechat/airline/y8.png', '', '金鹏航空', null);
INSERT INTO `airlines` VALUES ('20', '昆明航空', 'KY', '../airlinesflights/airlinesflights?airline_id=ky', 'https://www.potucs.com/wechat/airline/ky.png', '', '昆明航空', null);
INSERT INTO `airlines` VALUES ('21', '祥鹏航空', '8L', '../airlinesflights/airlinesflights?airline_id=8l', 'https://www.potucs.com/wechat/airline/8l.png', '无限飞', '祥鹏航空', null);
INSERT INTO `airlines` VALUES ('22', '瑞丽航空', 'DR', '../airlinesflights/airlinesflights?airline_id=dr', 'https://www.potucs.com/wechat/airline/dr.png', '', '昆明航空', null);
INSERT INTO `airlines` VALUES ('23', '青岛航空', 'QW', '../airlinesflights/airlinesflights?airline_id=qw', 'https://www.potucs.com/wechat/airline/qw.png', '', '青岛航空', null);
INSERT INTO `airlines` VALUES ('24', '奥凯航空', 'BK', '../airlinesflights/airlinesflights?airline_id=bk', 'https://www.potucs.com/wechat/airline/bk.png', '', '奥凯航空', null);
INSERT INTO `airlines` VALUES ('25', '华夏航空', 'G5', '../airlinesflights/airlinesflights?airline_id=g5', 'https://www.potucs.com/wechat/airline/g5.png', '', '华夏航空', null);
INSERT INTO `airlines` VALUES ('26', '西部航空', 'PN', '../airlinesflights/airlinesflights?airline_id=pn', 'https://www.potucs.com/wechat/airline/pn.png', '愉悦飞', '西部航空', null);
INSERT INTO `airlines` VALUES ('27', '山东航空', 'SC', '../airlinesflights/airlinesflights?airline_id=sc', 'https://www.potucs.com/wechat/airline/sc.png', '山航魔毯', '山东航空', null);
INSERT INTO `airlines` VALUES ('28', '红土航空', 'A6', '../airlinesflights/airlinesflights?airline_id=a6', 'https://www.potucs.com/wechat/airline/a6.png', '', '红土航空', null);
INSERT INTO `airlines` VALUES ('29', '九元航空', 'AQ', '../airlinesflights/airlinesflights?airline_id=aq', 'https://www.potucs.com/wechat/airline/aq.png', '', '九元航空', null);
INSERT INTO `airlines` VALUES ('30', '福州航空', 'FU', '../airlinesflights/airlinesflights?airline_id=fu', 'https://www.potucs.com/wechat/airline/fu.png', '', '福州航空', null);
INSERT INTO `airlines` VALUES ('31', '桂林航空', 'GT', '../airlinesflights/airlinesflights?airline_id=gt', 'https://www.potucs.com/wechat/airline/gt.png', '', '桂林航空', null);
INSERT INTO `airlines` VALUES ('32', '大新华航空', 'CN', '../airlinesflights/airlinesflights?airline_id=cn', 'https://www.potucs.com/wechat/airline/hu.png', '', '大新华航空', null);
INSERT INTO `airlines` VALUES ('33', '龙江航空', 'LT', '../airlinesflights/airlinesflights?airline_id=lt', 'https://www.potucs.com/wechat/airline/lt.png', '', '龙江航空', null);
INSERT INTO `airlines` VALUES ('34', '幸福航空', 'JR', '../airlinesflights/airlinesflights?airline_id=jr', 'https://www.potucs.com/wechat/airline/jr.png', '', '幸福航空', null);
INSERT INTO `airlines` VALUES ('35', '乌鲁木齐航空', 'UQ', '../airlinesflights/airlinesflights?airline_id=uq', 'https://www.potucs.com/wechat/airline/uq.png', '', '乌鲁木齐航空', null);
INSERT INTO `airlines` VALUES ('36', '江西航空', 'RY', '../airlinesflights/airlinesflights?airline_id=ry', 'https://www.potucs.com/wechat/airline/ry.png', '', '江西航空', null);
INSERT INTO `airlines` VALUES ('37', '多彩贵州航空', 'GY', '../airlinesflights/airlinesflights?airline_id=gy', 'https://www.potucs.com/wechat/airline/muyou.png', '', '多彩贵州航空', null);
INSERT INTO `airlines` VALUES ('38', '广西北部湾航空', 'GX', '../airlinesflights/airlinesflights?airline_id=gx', 'https://www.potucs.com/wechat/airline/gx.png', '', '北部湾航空', null);
INSERT INTO `airlines` VALUES ('39', '长安航空', '9H', '../airlinesflights/airlinesflights?airline_id=9h', 'https://www.potucs.com/wechat/airline/9h.png', '', '长安航空', null);
