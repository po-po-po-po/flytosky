/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : fly

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-08-28 14:26:41
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of airway
-- ----------------------------
INSERT INTO `airway` VALUES ('1', 'PVG', 'PKX', '上海浦东', '北京大兴', null, null, null, '0', '2020-08-28 14:26:29');
INSERT INTO `airway` VALUES ('2', 'PVG', 'PEK', '上海浦东', '北京首都', null, null, null, '0', '2020-08-28 14:26:29');
INSERT INTO `airway` VALUES ('3', 'PVG', 'CAN', '上海浦东', '广州白云', null, null, null, '0', '2020-08-28 14:26:29');
INSERT INTO `airway` VALUES ('4', 'PVG', 'CTU', '上海浦东', '成都双流', null, null, null, '0', '2020-08-28 14:26:29');
INSERT INTO `airway` VALUES ('5', 'PVG', 'KMG', '上海浦东', '昆明长水', null, null, null, '0', '2020-08-28 14:26:29');
INSERT INTO `airway` VALUES ('6', 'PVG', 'SZX', '上海浦东', '深圳宝安', null, null, null, '0', '2020-08-28 14:26:29');
INSERT INTO `airway` VALUES ('7', 'PVG', 'XIY', '上海浦东', '西安咸阳', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('8', 'PVG', 'CKG', '上海浦东', '重庆江北', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('9', 'PVG', 'TAO', '上海浦东', '青岛流亭', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('10', 'SHA', 'PKX', '上海虹桥', '北京大兴', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('11', 'SHA', 'PEK', '上海虹桥', '北京首都', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('12', 'SHA', 'CAN', '上海虹桥', '广州白云', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('13', 'SHA', 'CTU', '上海虹桥', '成都双流', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('14', 'SHA', 'KMG', '上海虹桥', '昆明长水', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('15', 'SHA', 'SZX', '上海虹桥', '深圳宝安', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('16', 'SHA', 'XIY', '上海虹桥', '西安咸阳', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('17', 'SHA', 'CKG', '上海虹桥', '重庆江北', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('18', 'SHA', 'TAO', '上海虹桥', '青岛流亭', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('19', 'PKX', 'PVG', '北京大兴', '上海浦东', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('20', 'PKX', 'SHA', '北京大兴', '上海虹桥', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('21', 'PKX', 'NKG', '北京大兴', '南京禄口', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('22', 'PKX', 'CAN', '北京大兴', '广州白云', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('23', 'PKX', 'CTU', '北京大兴', '成都双流', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('24', 'PKX', 'KMG', '北京大兴', '昆明长水', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('25', 'PKX', 'HGH', '北京大兴', '杭州萧山', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('26', 'PKX', 'SZX', '北京大兴', '深圳宝安', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('27', 'PKX', 'XIY', '北京大兴', '西安咸阳', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('28', 'PKX', 'CKG', '北京大兴', '重庆江北', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('29', 'PKX', 'TAO', '北京大兴', '青岛流亭', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('30', 'PEK', 'PVG', '北京首都', '上海浦东', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('31', 'PEK', 'SHA', '北京首都', '上海虹桥', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('32', 'PEK', 'NKG', '北京首都', '南京禄口', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('33', 'PEK', 'CAN', '北京首都', '广州白云', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('34', 'PEK', 'CTU', '北京首都', '成都双流', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('35', 'PEK', 'KMG', '北京首都', '昆明长水', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('36', 'PEK', 'HGH', '北京首都', '杭州萧山', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('37', 'PEK', 'SZX', '北京首都', '深圳宝安', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('38', 'PEK', 'XIY', '北京首都', '西安咸阳', null, null, null, '0', '2020-08-28 14:26:30');
INSERT INTO `airway` VALUES ('39', 'PEK', 'CKG', '北京首都', '重庆江北', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('40', 'PEK', 'TAO', '北京首都', '青岛流亭', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('41', 'NKG', 'PKX', '南京禄口', '北京大兴', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('42', 'NKG', 'PEK', '南京禄口', '北京首都', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('43', 'NKG', 'CAN', '南京禄口', '广州白云', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('44', 'NKG', 'CTU', '南京禄口', '成都双流', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('45', 'NKG', 'KMG', '南京禄口', '昆明长水', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('46', 'NKG', 'SZX', '南京禄口', '深圳宝安', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('47', 'NKG', 'XIY', '南京禄口', '西安咸阳', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('48', 'NKG', 'CKG', '南京禄口', '重庆江北', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('49', 'NKG', 'TAO', '南京禄口', '青岛流亭', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('50', 'CAN', 'PVG', '广州白云', '上海浦东', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('51', 'CAN', 'SHA', '广州白云', '上海虹桥', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('52', 'CAN', 'PKX', '广州白云', '北京大兴', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('53', 'CAN', 'PEK', '广州白云', '北京首都', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('54', 'CAN', 'NKG', '广州白云', '南京禄口', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('55', 'CAN', 'CTU', '广州白云', '成都双流', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('56', 'CAN', 'KMG', '广州白云', '昆明长水', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('57', 'CAN', 'HGH', '广州白云', '杭州萧山', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('58', 'CAN', 'XIY', '广州白云', '西安咸阳', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('59', 'CAN', 'CKG', '广州白云', '重庆江北', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('60', 'CAN', 'TAO', '广州白云', '青岛流亭', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('61', 'CTU', 'PVG', '成都双流', '上海浦东', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('62', 'CTU', 'SHA', '成都双流', '上海虹桥', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('63', 'CTU', 'PKX', '成都双流', '北京大兴', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('64', 'CTU', 'PEK', '成都双流', '北京首都', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('65', 'CTU', 'NKG', '成都双流', '南京禄口', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('66', 'CTU', 'CAN', '成都双流', '广州白云', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('67', 'CTU', 'KMG', '成都双流', '昆明长水', null, null, null, '0', '2020-08-28 14:26:31');
INSERT INTO `airway` VALUES ('68', 'CTU', 'HGH', '成都双流', '杭州萧山', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('69', 'CTU', 'SZX', '成都双流', '深圳宝安', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('70', 'CTU', 'XIY', '成都双流', '西安咸阳', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('71', 'CTU', 'TAO', '成都双流', '青岛流亭', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('72', 'KMG', 'PVG', '昆明长水', '上海浦东', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('73', 'KMG', 'SHA', '昆明长水', '上海虹桥', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('74', 'KMG', 'PKX', '昆明长水', '北京大兴', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('75', 'KMG', 'PEK', '昆明长水', '北京首都', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('76', 'KMG', 'NKG', '昆明长水', '南京禄口', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('77', 'KMG', 'CAN', '昆明长水', '广州白云', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('78', 'KMG', 'CTU', '昆明长水', '成都双流', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('79', 'KMG', 'HGH', '昆明长水', '杭州萧山', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('80', 'KMG', 'SZX', '昆明长水', '深圳宝安', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('81', 'KMG', 'XIY', '昆明长水', '西安咸阳', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('82', 'KMG', 'CKG', '昆明长水', '重庆江北', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('83', 'KMG', 'TAO', '昆明长水', '青岛流亭', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('84', 'HGH', 'PKX', '杭州萧山', '北京大兴', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('85', 'HGH', 'PEK', '杭州萧山', '北京首都', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('86', 'HGH', 'CAN', '杭州萧山', '广州白云', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('87', 'HGH', 'CTU', '杭州萧山', '成都双流', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('88', 'HGH', 'KMG', '杭州萧山', '昆明长水', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('89', 'HGH', 'SZX', '杭州萧山', '深圳宝安', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('90', 'HGH', 'XIY', '杭州萧山', '西安咸阳', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('91', 'HGH', 'CKG', '杭州萧山', '重庆江北', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('92', 'HGH', 'TAO', '杭州萧山', '青岛流亭', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('93', 'SZX', 'PVG', '深圳宝安', '上海浦东', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('94', 'SZX', 'SHA', '深圳宝安', '上海虹桥', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('95', 'SZX', 'PKX', '深圳宝安', '北京大兴', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('96', 'SZX', 'PEK', '深圳宝安', '北京首都', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('97', 'SZX', 'NKG', '深圳宝安', '南京禄口', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('98', 'SZX', 'CTU', '深圳宝安', '成都双流', null, null, null, '0', '2020-08-28 14:26:32');
INSERT INTO `airway` VALUES ('99', 'SZX', 'KMG', '深圳宝安', '昆明长水', null, null, null, '0', '2020-08-28 14:26:33');
INSERT INTO `airway` VALUES ('100', 'SZX', 'HGH', '深圳宝安', '杭州萧山', null, null, null, '0', '2020-08-28 14:26:33');
INSERT INTO `airway` VALUES ('101', 'SZX', 'XIY', '深圳宝安', '西安咸阳', null, null, null, '0', '2020-08-28 14:26:33');
INSERT INTO `airway` VALUES ('102', 'SZX', 'CKG', '深圳宝安', '重庆江北', null, null, null, '0', '2020-08-28 14:26:33');
INSERT INTO `airway` VALUES ('103', 'SZX', 'TAO', '深圳宝安', '青岛流亭', null, null, null, '0', '2020-08-28 14:26:33');
INSERT INTO `airway` VALUES ('104', 'XIY', 'PVG', '西安咸阳', '上海浦东', null, null, null, '0', '2020-08-28 14:26:33');
INSERT INTO `airway` VALUES ('105', 'XIY', 'SHA', '西安咸阳', '上海虹桥', null, null, null, '0', '2020-08-28 14:26:33');
INSERT INTO `airway` VALUES ('106', 'XIY', 'PKX', '西安咸阳', '北京大兴', null, null, null, '0', '2020-08-28 14:26:33');
INSERT INTO `airway` VALUES ('107', 'XIY', 'PEK', '西安咸阳', '北京首都', null, null, null, '0', '2020-08-28 14:26:33');
INSERT INTO `airway` VALUES ('108', 'XIY', 'NKG', '西安咸阳', '南京禄口', null, null, null, '0', '2020-08-28 14:26:33');
INSERT INTO `airway` VALUES ('109', 'XIY', 'CAN', '西安咸阳', '广州白云', null, null, null, '0', '2020-08-28 14:26:33');
INSERT INTO `airway` VALUES ('110', 'XIY', 'CTU', '西安咸阳', '成都双流', null, null, null, '0', '2020-08-28 14:26:33');
INSERT INTO `airway` VALUES ('111', 'XIY', 'KMG', '西安咸阳', '昆明长水', null, null, null, '0', '2020-08-28 14:26:33');
INSERT INTO `airway` VALUES ('112', 'XIY', 'HGH', '西安咸阳', '杭州萧山', null, null, null, '0', '2020-08-28 14:26:33');
INSERT INTO `airway` VALUES ('113', 'XIY', 'SZX', '西安咸阳', '深圳宝安', null, null, null, '0', '2020-08-28 14:26:33');
INSERT INTO `airway` VALUES ('114', 'XIY', 'CKG', '西安咸阳', '重庆江北', null, null, null, '0', '2020-08-28 14:26:33');
INSERT INTO `airway` VALUES ('115', 'XIY', 'TAO', '西安咸阳', '青岛流亭', null, null, null, '0', '2020-08-28 14:26:33');
INSERT INTO `airway` VALUES ('116', 'CKG', 'PVG', '重庆江北', '上海浦东', null, null, null, '0', '2020-08-28 14:26:33');
INSERT INTO `airway` VALUES ('117', 'CKG', 'SHA', '重庆江北', '上海虹桥', null, null, null, '0', '2020-08-28 14:26:33');
INSERT INTO `airway` VALUES ('118', 'CKG', 'PKX', '重庆江北', '北京大兴', null, null, null, '0', '2020-08-28 14:26:33');
INSERT INTO `airway` VALUES ('119', 'CKG', 'PEK', '重庆江北', '北京首都', null, null, null, '0', '2020-08-28 14:26:33');
INSERT INTO `airway` VALUES ('120', 'CKG', 'NKG', '重庆江北', '南京禄口', null, null, null, '0', '2020-08-28 14:26:33');
INSERT INTO `airway` VALUES ('121', 'CKG', 'CAN', '重庆江北', '广州白云', null, null, null, '0', '2020-08-28 14:26:34');
INSERT INTO `airway` VALUES ('122', 'CKG', 'KMG', '重庆江北', '昆明长水', null, null, null, '0', '2020-08-28 14:26:34');
INSERT INTO `airway` VALUES ('123', 'CKG', 'HGH', '重庆江北', '杭州萧山', null, null, null, '0', '2020-08-28 14:26:34');
INSERT INTO `airway` VALUES ('124', 'CKG', 'SZX', '重庆江北', '深圳宝安', null, null, null, '0', '2020-08-28 14:26:34');
INSERT INTO `airway` VALUES ('125', 'CKG', 'XIY', '重庆江北', '西安咸阳', null, null, null, '0', '2020-08-28 14:26:34');
INSERT INTO `airway` VALUES ('126', 'CKG', 'TAO', '重庆江北', '青岛流亭', null, null, null, '0', '2020-08-28 14:26:34');
INSERT INTO `airway` VALUES ('127', 'TAO', 'PVG', '青岛流亭', '上海浦东', null, null, null, '0', '2020-08-28 14:26:34');
INSERT INTO `airway` VALUES ('128', 'TAO', 'SHA', '青岛流亭', '上海虹桥', null, null, null, '0', '2020-08-28 14:26:34');
INSERT INTO `airway` VALUES ('129', 'TAO', 'PKX', '青岛流亭', '北京大兴', null, null, null, '0', '2020-08-28 14:26:34');
INSERT INTO `airway` VALUES ('130', 'TAO', 'PEK', '青岛流亭', '北京首都', null, null, null, '0', '2020-08-28 14:26:34');
INSERT INTO `airway` VALUES ('131', 'TAO', 'NKG', '青岛流亭', '南京禄口', null, null, null, '0', '2020-08-28 14:26:34');
INSERT INTO `airway` VALUES ('132', 'TAO', 'CAN', '青岛流亭', '广州白云', null, null, null, '0', '2020-08-28 14:26:34');
INSERT INTO `airway` VALUES ('133', 'TAO', 'CTU', '青岛流亭', '成都双流', null, null, null, '0', '2020-08-28 14:26:34');
INSERT INTO `airway` VALUES ('134', 'TAO', 'KMG', '青岛流亭', '昆明长水', null, null, null, '0', '2020-08-28 14:26:34');
INSERT INTO `airway` VALUES ('135', 'TAO', 'HGH', '青岛流亭', '杭州萧山', null, null, null, '0', '2020-08-28 14:26:34');
INSERT INTO `airway` VALUES ('136', 'TAO', 'SZX', '青岛流亭', '深圳宝安', null, null, null, '0', '2020-08-28 14:26:34');
INSERT INTO `airway` VALUES ('137', 'TAO', 'XIY', '青岛流亭', '西安咸阳', null, null, null, '0', '2020-08-28 14:26:34');
INSERT INTO `airway` VALUES ('138', 'TAO', 'CKG', '青岛流亭', '重庆江北', null, null, null, '0', '2020-08-28 14:26:34');
