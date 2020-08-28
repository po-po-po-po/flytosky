/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : fly

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-08-28 15:10:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for airway
-- ----------------------------
DROP TABLE IF EXISTS `airway`;
CREATE TABLE `airway` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `airway_name_start_code` varchar(10) DEFAULT NULL,
  `airway_name_end_code` varchar(10) DEFAULT NULL,
  `airway_name_start` varchar(255) DEFAULT NULL,
  `airway_name_end` varchar(255) DEFAULT NULL,
  `airway_description` varchar(255) DEFAULT NULL,
  `airway_rate` int(11) DEFAULT NULL,
  `flight_num` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of airway
-- ----------------------------
INSERT INTO `airway` VALUES ('1', 'PVG', 'PKX', '上海浦东', '北京大兴', null, null, null, '0', '2020-08-28 15:09:11');
INSERT INTO `airway` VALUES ('2', 'PVG', 'PEK', '上海浦东', '北京首都', null, null, null, '0', '2020-08-28 15:09:11');
INSERT INTO `airway` VALUES ('3', 'PVG', 'CAN', '上海浦东', '广州白云', null, null, null, '0', '2020-08-28 15:09:11');
INSERT INTO `airway` VALUES ('4', 'PVG', 'CTU', '上海浦东', '成都双流', null, null, null, '0', '2020-08-28 15:09:11');
INSERT INTO `airway` VALUES ('5', 'PVG', 'KMG', '上海浦东', '昆明长水', null, null, null, '0', '2020-08-28 15:09:11');
INSERT INTO `airway` VALUES ('6', 'PVG', 'SZX', '上海浦东', '深圳宝安', null, null, null, '0', '2020-08-28 15:09:11');
INSERT INTO `airway` VALUES ('7', 'PVG', 'XIY', '上海浦东', '西安咸阳', null, null, null, '0', '2020-08-28 15:09:11');
INSERT INTO `airway` VALUES ('8', 'PVG', 'CKG', '上海浦东', '重庆江北', null, null, null, '0', '2020-08-28 15:09:11');
INSERT INTO `airway` VALUES ('9', 'PVG', 'CSX', '上海浦东', '长沙黄花', null, null, null, '0', '2020-08-28 15:09:11');
INSERT INTO `airway` VALUES ('10', 'PVG', 'TAO', '上海浦东', '青岛流亭', null, null, null, '0', '2020-08-28 15:09:11');
INSERT INTO `airway` VALUES ('11', 'SHA', 'PKX', '上海虹桥', '北京大兴', null, null, null, '0', '2020-08-28 15:09:11');
INSERT INTO `airway` VALUES ('12', 'SHA', 'PEK', '上海虹桥', '北京首都', null, null, null, '0', '2020-08-28 15:09:11');
INSERT INTO `airway` VALUES ('13', 'SHA', 'CAN', '上海虹桥', '广州白云', null, null, null, '0', '2020-08-28 15:09:11');
INSERT INTO `airway` VALUES ('14', 'SHA', 'CTU', '上海虹桥', '成都双流', null, null, null, '0', '2020-08-28 15:09:11');
INSERT INTO `airway` VALUES ('15', 'SHA', 'KMG', '上海虹桥', '昆明长水', null, null, null, '0', '2020-08-28 15:09:11');
INSERT INTO `airway` VALUES ('16', 'SHA', 'SZX', '上海虹桥', '深圳宝安', null, null, null, '0', '2020-08-28 15:09:11');
INSERT INTO `airway` VALUES ('17', 'SHA', 'XIY', '上海虹桥', '西安咸阳', null, null, null, '0', '2020-08-28 15:09:11');
INSERT INTO `airway` VALUES ('18', 'SHA', 'CKG', '上海虹桥', '重庆江北', null, null, null, '0', '2020-08-28 15:09:12');
INSERT INTO `airway` VALUES ('19', 'SHA', 'CSX', '上海虹桥', '长沙黄花', null, null, null, '0', '2020-08-28 15:09:12');
INSERT INTO `airway` VALUES ('20', 'SHA', 'TAO', '上海虹桥', '青岛流亭', null, null, null, '0', '2020-08-28 15:09:12');
INSERT INTO `airway` VALUES ('21', 'PKX', 'PVG', '北京大兴', '上海浦东', null, null, null, '0', '2020-08-28 15:09:12');
INSERT INTO `airway` VALUES ('22', 'PKX', 'SHA', '北京大兴', '上海虹桥', null, null, null, '0', '2020-08-28 15:09:12');
INSERT INTO `airway` VALUES ('23', 'PKX', 'NKG', '北京大兴', '南京禄口', null, null, null, '0', '2020-08-28 15:09:12');
INSERT INTO `airway` VALUES ('24', 'PKX', 'CAN', '北京大兴', '广州白云', null, null, null, '0', '2020-08-28 15:09:12');
INSERT INTO `airway` VALUES ('25', 'PKX', 'CTU', '北京大兴', '成都双流', null, null, null, '0', '2020-08-28 15:09:12');
INSERT INTO `airway` VALUES ('26', 'PKX', 'KMG', '北京大兴', '昆明长水', null, null, null, '0', '2020-08-28 15:09:12');
INSERT INTO `airway` VALUES ('27', 'PKX', 'HGH', '北京大兴', '杭州萧山', null, null, null, '0', '2020-08-28 15:09:12');
INSERT INTO `airway` VALUES ('28', 'PKX', 'SZX', '北京大兴', '深圳宝安', null, null, null, '0', '2020-08-28 15:09:12');
INSERT INTO `airway` VALUES ('29', 'PKX', 'XIY', '北京大兴', '西安咸阳', null, null, null, '0', '2020-08-28 15:09:12');
INSERT INTO `airway` VALUES ('30', 'PKX', 'CKG', '北京大兴', '重庆江北', null, null, null, '0', '2020-08-28 15:09:12');
INSERT INTO `airway` VALUES ('31', 'PKX', 'CSX', '北京大兴', '长沙黄花', null, null, null, '0', '2020-08-28 15:09:12');
INSERT INTO `airway` VALUES ('32', 'PKX', 'TAO', '北京大兴', '青岛流亭', null, null, null, '0', '2020-08-28 15:09:12');
INSERT INTO `airway` VALUES ('33', 'PEK', 'PVG', '北京首都', '上海浦东', null, null, null, '0', '2020-08-28 15:09:12');
INSERT INTO `airway` VALUES ('34', 'PEK', 'SHA', '北京首都', '上海虹桥', null, null, null, '0', '2020-08-28 15:09:12');
INSERT INTO `airway` VALUES ('35', 'PEK', 'NKG', '北京首都', '南京禄口', null, null, null, '0', '2020-08-28 15:09:12');
INSERT INTO `airway` VALUES ('36', 'PEK', 'CAN', '北京首都', '广州白云', null, null, null, '0', '2020-08-28 15:09:12');
INSERT INTO `airway` VALUES ('37', 'PEK', 'CTU', '北京首都', '成都双流', null, null, null, '0', '2020-08-28 15:09:12');
INSERT INTO `airway` VALUES ('38', 'PEK', 'KMG', '北京首都', '昆明长水', null, null, null, '0', '2020-08-28 15:09:12');
INSERT INTO `airway` VALUES ('39', 'PEK', 'HGH', '北京首都', '杭州萧山', null, null, null, '0', '2020-08-28 15:09:12');
INSERT INTO `airway` VALUES ('40', 'PEK', 'SZX', '北京首都', '深圳宝安', null, null, null, '0', '2020-08-28 15:09:12');
INSERT INTO `airway` VALUES ('41', 'PEK', 'XIY', '北京首都', '西安咸阳', null, null, null, '0', '2020-08-28 15:09:12');
INSERT INTO `airway` VALUES ('42', 'PEK', 'CKG', '北京首都', '重庆江北', null, null, null, '0', '2020-08-28 15:09:12');
INSERT INTO `airway` VALUES ('43', 'PEK', 'CSX', '北京首都', '长沙黄花', null, null, null, '0', '2020-08-28 15:09:12');
INSERT INTO `airway` VALUES ('44', 'PEK', 'TAO', '北京首都', '青岛流亭', null, null, null, '0', '2020-08-28 15:09:12');
INSERT INTO `airway` VALUES ('45', 'NKG', 'PKX', '南京禄口', '北京大兴', null, null, null, '0', '2020-08-28 15:09:12');
INSERT INTO `airway` VALUES ('46', 'NKG', 'PEK', '南京禄口', '北京首都', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('47', 'NKG', 'CAN', '南京禄口', '广州白云', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('48', 'NKG', 'CTU', '南京禄口', '成都双流', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('49', 'NKG', 'KMG', '南京禄口', '昆明长水', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('50', 'NKG', 'SZX', '南京禄口', '深圳宝安', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('51', 'NKG', 'XIY', '南京禄口', '西安咸阳', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('52', 'NKG', 'CKG', '南京禄口', '重庆江北', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('53', 'NKG', 'CSX', '南京禄口', '长沙黄花', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('54', 'NKG', 'TAO', '南京禄口', '青岛流亭', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('55', 'CAN', 'PVG', '广州白云', '上海浦东', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('56', 'CAN', 'SHA', '广州白云', '上海虹桥', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('57', 'CAN', 'PKX', '广州白云', '北京大兴', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('58', 'CAN', 'PEK', '广州白云', '北京首都', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('59', 'CAN', 'NKG', '广州白云', '南京禄口', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('60', 'CAN', 'CTU', '广州白云', '成都双流', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('61', 'CAN', 'KMG', '广州白云', '昆明长水', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('62', 'CAN', 'HGH', '广州白云', '杭州萧山', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('63', 'CAN', 'XIY', '广州白云', '西安咸阳', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('64', 'CAN', 'CKG', '广州白云', '重庆江北', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('65', 'CAN', 'CSX', '广州白云', '长沙黄花', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('66', 'CAN', 'TAO', '广州白云', '青岛流亭', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('67', 'CTU', 'PVG', '成都双流', '上海浦东', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('68', 'CTU', 'SHA', '成都双流', '上海虹桥', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('69', 'CTU', 'PKX', '成都双流', '北京大兴', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('70', 'CTU', 'PEK', '成都双流', '北京首都', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('71', 'CTU', 'NKG', '成都双流', '南京禄口', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('72', 'CTU', 'CAN', '成都双流', '广州白云', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('73', 'CTU', 'KMG', '成都双流', '昆明长水', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('74', 'CTU', 'HGH', '成都双流', '杭州萧山', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('75', 'CTU', 'SZX', '成都双流', '深圳宝安', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('76', 'CTU', 'XIY', '成都双流', '西安咸阳', null, null, null, '0', '2020-08-28 15:09:13');
INSERT INTO `airway` VALUES ('77', 'CTU', 'CSX', '成都双流', '长沙黄花', null, null, null, '0', '2020-08-28 15:09:14');
INSERT INTO `airway` VALUES ('78', 'CTU', 'TAO', '成都双流', '青岛流亭', null, null, null, '0', '2020-08-28 15:09:14');
INSERT INTO `airway` VALUES ('79', 'KMG', 'PVG', '昆明长水', '上海浦东', null, null, null, '0', '2020-08-28 15:09:14');
INSERT INTO `airway` VALUES ('80', 'KMG', 'SHA', '昆明长水', '上海虹桥', null, null, null, '0', '2020-08-28 15:09:14');
INSERT INTO `airway` VALUES ('81', 'KMG', 'PKX', '昆明长水', '北京大兴', null, null, null, '0', '2020-08-28 15:09:14');
INSERT INTO `airway` VALUES ('82', 'KMG', 'PEK', '昆明长水', '北京首都', null, null, null, '0', '2020-08-28 15:09:14');
INSERT INTO `airway` VALUES ('83', 'KMG', 'NKG', '昆明长水', '南京禄口', null, null, null, '0', '2020-08-28 15:09:14');
INSERT INTO `airway` VALUES ('84', 'KMG', 'CAN', '昆明长水', '广州白云', null, null, null, '0', '2020-08-28 15:09:14');
INSERT INTO `airway` VALUES ('85', 'KMG', 'CTU', '昆明长水', '成都双流', null, null, null, '0', '2020-08-28 15:09:14');
INSERT INTO `airway` VALUES ('86', 'KMG', 'HGH', '昆明长水', '杭州萧山', null, null, null, '0', '2020-08-28 15:09:14');
INSERT INTO `airway` VALUES ('87', 'KMG', 'SZX', '昆明长水', '深圳宝安', null, null, null, '0', '2020-08-28 15:09:14');
INSERT INTO `airway` VALUES ('88', 'KMG', 'XIY', '昆明长水', '西安咸阳', null, null, null, '0', '2020-08-28 15:09:14');
INSERT INTO `airway` VALUES ('89', 'KMG', 'CKG', '昆明长水', '重庆江北', null, null, null, '0', '2020-08-28 15:09:14');
INSERT INTO `airway` VALUES ('90', 'KMG', 'CSX', '昆明长水', '长沙黄花', null, null, null, '0', '2020-08-28 15:09:14');
INSERT INTO `airway` VALUES ('91', 'KMG', 'TAO', '昆明长水', '青岛流亭', null, null, null, '0', '2020-08-28 15:09:14');
INSERT INTO `airway` VALUES ('92', 'HGH', 'PKX', '杭州萧山', '北京大兴', null, null, null, '0', '2020-08-28 15:09:14');
INSERT INTO `airway` VALUES ('93', 'HGH', 'PEK', '杭州萧山', '北京首都', null, null, null, '0', '2020-08-28 15:09:14');
INSERT INTO `airway` VALUES ('94', 'HGH', 'CAN', '杭州萧山', '广州白云', null, null, null, '0', '2020-08-28 15:09:14');
INSERT INTO `airway` VALUES ('95', 'HGH', 'CTU', '杭州萧山', '成都双流', null, null, null, '0', '2020-08-28 15:09:14');
INSERT INTO `airway` VALUES ('96', 'HGH', 'KMG', '杭州萧山', '昆明长水', null, null, null, '0', '2020-08-28 15:09:14');
INSERT INTO `airway` VALUES ('97', 'HGH', 'SZX', '杭州萧山', '深圳宝安', null, null, null, '0', '2020-08-28 15:09:14');
INSERT INTO `airway` VALUES ('98', 'HGH', 'XIY', '杭州萧山', '西安咸阳', null, null, null, '0', '2020-08-28 15:09:14');
INSERT INTO `airway` VALUES ('99', 'HGH', 'CKG', '杭州萧山', '重庆江北', null, null, null, '0', '2020-08-28 15:09:14');
INSERT INTO `airway` VALUES ('100', 'HGH', 'CSX', '杭州萧山', '长沙黄花', null, null, null, '0', '2020-08-28 15:09:14');
INSERT INTO `airway` VALUES ('101', 'HGH', 'TAO', '杭州萧山', '青岛流亭', null, null, null, '0', '2020-08-28 15:09:14');
INSERT INTO `airway` VALUES ('102', 'SZX', 'PVG', '深圳宝安', '上海浦东', null, null, null, '0', '2020-08-28 15:09:15');
INSERT INTO `airway` VALUES ('103', 'SZX', 'SHA', '深圳宝安', '上海虹桥', null, null, null, '0', '2020-08-28 15:09:15');
INSERT INTO `airway` VALUES ('104', 'SZX', 'PKX', '深圳宝安', '北京大兴', null, null, null, '0', '2020-08-28 15:09:15');
INSERT INTO `airway` VALUES ('105', 'SZX', 'PEK', '深圳宝安', '北京首都', null, null, null, '0', '2020-08-28 15:09:15');
INSERT INTO `airway` VALUES ('106', 'SZX', 'NKG', '深圳宝安', '南京禄口', null, null, null, '0', '2020-08-28 15:09:15');
INSERT INTO `airway` VALUES ('107', 'SZX', 'CTU', '深圳宝安', '成都双流', null, null, null, '0', '2020-08-28 15:09:15');
INSERT INTO `airway` VALUES ('108', 'SZX', 'KMG', '深圳宝安', '昆明长水', null, null, null, '0', '2020-08-28 15:09:15');
INSERT INTO `airway` VALUES ('109', 'SZX', 'HGH', '深圳宝安', '杭州萧山', null, null, null, '0', '2020-08-28 15:09:15');
INSERT INTO `airway` VALUES ('110', 'SZX', 'XIY', '深圳宝安', '西安咸阳', null, null, null, '0', '2020-08-28 15:09:15');
INSERT INTO `airway` VALUES ('111', 'SZX', 'CKG', '深圳宝安', '重庆江北', null, null, null, '0', '2020-08-28 15:09:15');
INSERT INTO `airway` VALUES ('112', 'SZX', 'CSX', '深圳宝安', '长沙黄花', null, null, null, '0', '2020-08-28 15:09:15');
INSERT INTO `airway` VALUES ('113', 'SZX', 'TAO', '深圳宝安', '青岛流亭', null, null, null, '0', '2020-08-28 15:09:15');
INSERT INTO `airway` VALUES ('114', 'XIY', 'PVG', '西安咸阳', '上海浦东', null, null, null, '0', '2020-08-28 15:09:15');
INSERT INTO `airway` VALUES ('115', 'XIY', 'SHA', '西安咸阳', '上海虹桥', null, null, null, '0', '2020-08-28 15:09:15');
INSERT INTO `airway` VALUES ('116', 'XIY', 'PKX', '西安咸阳', '北京大兴', null, null, null, '0', '2020-08-28 15:09:15');
INSERT INTO `airway` VALUES ('117', 'XIY', 'PEK', '西安咸阳', '北京首都', null, null, null, '0', '2020-08-28 15:09:15');
INSERT INTO `airway` VALUES ('118', 'XIY', 'NKG', '西安咸阳', '南京禄口', null, null, null, '0', '2020-08-28 15:09:15');
INSERT INTO `airway` VALUES ('119', 'XIY', 'CAN', '西安咸阳', '广州白云', null, null, null, '0', '2020-08-28 15:09:15');
INSERT INTO `airway` VALUES ('120', 'XIY', 'CTU', '西安咸阳', '成都双流', null, null, null, '0', '2020-08-28 15:09:15');
INSERT INTO `airway` VALUES ('121', 'XIY', 'KMG', '西安咸阳', '昆明长水', null, null, null, '0', '2020-08-28 15:09:15');
INSERT INTO `airway` VALUES ('122', 'XIY', 'HGH', '西安咸阳', '杭州萧山', null, null, null, '0', '2020-08-28 15:09:15');
INSERT INTO `airway` VALUES ('123', 'XIY', 'SZX', '西安咸阳', '深圳宝安', null, null, null, '0', '2020-08-28 15:09:15');
INSERT INTO `airway` VALUES ('124', 'XIY', 'CKG', '西安咸阳', '重庆江北', null, null, null, '0', '2020-08-28 15:09:15');
INSERT INTO `airway` VALUES ('125', 'XIY', 'CSX', '西安咸阳', '长沙黄花', null, null, null, '0', '2020-08-28 15:09:15');
INSERT INTO `airway` VALUES ('126', 'XIY', 'TAO', '西安咸阳', '青岛流亭', null, null, null, '0', '2020-08-28 15:09:15');
INSERT INTO `airway` VALUES ('127', 'CKG', 'PVG', '重庆江北', '上海浦东', null, null, null, '0', '2020-08-28 15:09:15');
INSERT INTO `airway` VALUES ('128', 'CKG', 'SHA', '重庆江北', '上海虹桥', null, null, null, '0', '2020-08-28 15:09:15');
INSERT INTO `airway` VALUES ('129', 'CKG', 'PKX', '重庆江北', '北京大兴', null, null, null, '0', '2020-08-28 15:09:15');
INSERT INTO `airway` VALUES ('130', 'CKG', 'PEK', '重庆江北', '北京首都', null, null, null, '0', '2020-08-28 15:09:16');
INSERT INTO `airway` VALUES ('131', 'CKG', 'NKG', '重庆江北', '南京禄口', null, null, null, '0', '2020-08-28 15:09:16');
INSERT INTO `airway` VALUES ('132', 'CKG', 'CAN', '重庆江北', '广州白云', null, null, null, '0', '2020-08-28 15:09:16');
INSERT INTO `airway` VALUES ('133', 'CKG', 'KMG', '重庆江北', '昆明长水', null, null, null, '0', '2020-08-28 15:09:16');
INSERT INTO `airway` VALUES ('134', 'CKG', 'HGH', '重庆江北', '杭州萧山', null, null, null, '0', '2020-08-28 15:09:16');
INSERT INTO `airway` VALUES ('135', 'CKG', 'SZX', '重庆江北', '深圳宝安', null, null, null, '0', '2020-08-28 15:09:16');
INSERT INTO `airway` VALUES ('136', 'CKG', 'XIY', '重庆江北', '西安咸阳', null, null, null, '0', '2020-08-28 15:09:16');
INSERT INTO `airway` VALUES ('137', 'CKG', 'CSX', '重庆江北', '长沙黄花', null, null, null, '0', '2020-08-28 15:09:16');
INSERT INTO `airway` VALUES ('138', 'CKG', 'TAO', '重庆江北', '青岛流亭', null, null, null, '0', '2020-08-28 15:09:16');
INSERT INTO `airway` VALUES ('139', 'CSX', 'PVG', '长沙黄花', '上海浦东', null, null, null, '0', '2020-08-28 15:09:16');
INSERT INTO `airway` VALUES ('140', 'CSX', 'SHA', '长沙黄花', '上海虹桥', null, null, null, '0', '2020-08-28 15:09:16');
INSERT INTO `airway` VALUES ('141', 'CSX', 'PKX', '长沙黄花', '北京大兴', null, null, null, '0', '2020-08-28 15:09:16');
INSERT INTO `airway` VALUES ('142', 'CSX', 'PEK', '长沙黄花', '北京首都', null, null, null, '0', '2020-08-28 15:09:16');
INSERT INTO `airway` VALUES ('143', 'CSX', 'NKG', '长沙黄花', '南京禄口', null, null, null, '0', '2020-08-28 15:09:16');
INSERT INTO `airway` VALUES ('144', 'CSX', 'CAN', '长沙黄花', '广州白云', null, null, null, '0', '2020-08-28 15:09:16');
INSERT INTO `airway` VALUES ('145', 'CSX', 'CTU', '长沙黄花', '成都双流', null, null, null, '0', '2020-08-28 15:09:16');
INSERT INTO `airway` VALUES ('146', 'CSX', 'KMG', '长沙黄花', '昆明长水', null, null, null, '0', '2020-08-28 15:09:16');
INSERT INTO `airway` VALUES ('147', 'CSX', 'HGH', '长沙黄花', '杭州萧山', null, null, null, '0', '2020-08-28 15:09:16');
INSERT INTO `airway` VALUES ('148', 'CSX', 'SZX', '长沙黄花', '深圳宝安', null, null, null, '0', '2020-08-28 15:09:16');
INSERT INTO `airway` VALUES ('149', 'CSX', 'XIY', '长沙黄花', '西安咸阳', null, null, null, '0', '2020-08-28 15:09:16');
INSERT INTO `airway` VALUES ('150', 'CSX', 'CKG', '长沙黄花', '重庆江北', null, null, null, '0', '2020-08-28 15:09:16');
INSERT INTO `airway` VALUES ('151', 'CSX', 'TAO', '长沙黄花', '青岛流亭', null, null, null, '0', '2020-08-28 15:09:16');
INSERT INTO `airway` VALUES ('152', 'TAO', 'PVG', '青岛流亭', '上海浦东', null, null, null, '0', '2020-08-28 15:09:16');
INSERT INTO `airway` VALUES ('153', 'TAO', 'SHA', '青岛流亭', '上海虹桥', null, null, null, '0', '2020-08-28 15:09:16');
INSERT INTO `airway` VALUES ('154', 'TAO', 'PKX', '青岛流亭', '北京大兴', null, null, null, '0', '2020-08-28 15:09:17');
INSERT INTO `airway` VALUES ('155', 'TAO', 'PEK', '青岛流亭', '北京首都', null, null, null, '0', '2020-08-28 15:09:17');
INSERT INTO `airway` VALUES ('156', 'TAO', 'NKG', '青岛流亭', '南京禄口', null, null, null, '0', '2020-08-28 15:09:17');
INSERT INTO `airway` VALUES ('157', 'TAO', 'CAN', '青岛流亭', '广州白云', null, null, null, '0', '2020-08-28 15:09:17');
INSERT INTO `airway` VALUES ('158', 'TAO', 'CTU', '青岛流亭', '成都双流', null, null, null, '0', '2020-08-28 15:09:17');
INSERT INTO `airway` VALUES ('159', 'TAO', 'KMG', '青岛流亭', '昆明长水', null, null, null, '0', '2020-08-28 15:09:17');
INSERT INTO `airway` VALUES ('160', 'TAO', 'HGH', '青岛流亭', '杭州萧山', null, null, null, '0', '2020-08-28 15:09:17');
INSERT INTO `airway` VALUES ('161', 'TAO', 'SZX', '青岛流亭', '深圳宝安', null, null, null, '0', '2020-08-28 15:09:17');
INSERT INTO `airway` VALUES ('162', 'TAO', 'XIY', '青岛流亭', '西安咸阳', null, null, null, '0', '2020-08-28 15:09:17');
INSERT INTO `airway` VALUES ('163', 'TAO', 'CKG', '青岛流亭', '重庆江北', null, null, null, '0', '2020-08-28 15:09:17');
INSERT INTO `airway` VALUES ('164', 'TAO', 'CSX', '青岛流亭', '长沙黄花', null, null, null, '0', '2020-08-28 15:09:17');
