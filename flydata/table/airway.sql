/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : fly

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-08-28 17:48:58
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
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of airway
-- ----------------------------
INSERT INTO `airway` VALUES ('1', 'PVG', 'PKX', '上海浦东', '北京大兴', null, null, null, '0', '2020-08-28 17:48:39');
INSERT INTO `airway` VALUES ('2', 'PVG', 'PEK', '上海浦东', '北京首都', null, null, null, '0', '2020-08-28 17:48:39');
INSERT INTO `airway` VALUES ('3', 'PVG', 'CAN', '上海浦东', '广州白云', null, null, null, '0', '2020-08-28 17:48:39');
INSERT INTO `airway` VALUES ('4', 'PVG', 'CTU', '上海浦东', '成都双流', null, null, null, '0', '2020-08-28 17:48:39');
INSERT INTO `airway` VALUES ('5', 'PVG', 'KMG', '上海浦东', '昆明长水', null, null, null, '0', '2020-08-28 17:48:39');
INSERT INTO `airway` VALUES ('6', 'PVG', 'SZX', '上海浦东', '深圳宝安', null, null, null, '0', '2020-08-28 17:48:39');
INSERT INTO `airway` VALUES ('7', 'PVG', 'FOC', '上海浦东', '福州长乐', null, null, null, '0', '2020-08-28 17:48:39');
INSERT INTO `airway` VALUES ('8', 'PVG', 'XIY', '上海浦东', '西安咸阳', null, null, null, '0', '2020-08-28 17:48:39');
INSERT INTO `airway` VALUES ('9', 'PVG', 'CKG', '上海浦东', '重庆江北', null, null, null, '0', '2020-08-28 17:48:39');
INSERT INTO `airway` VALUES ('10', 'PVG', 'CSX', '上海浦东', '长沙黄花', null, null, null, '0', '2020-08-28 17:48:39');
INSERT INTO `airway` VALUES ('11', 'PVG', 'TAO', '上海浦东', '青岛流亭', null, null, null, '0', '2020-08-28 17:48:39');
INSERT INTO `airway` VALUES ('12', 'SHA', 'PKX', '上海虹桥', '北京大兴', null, null, null, '0', '2020-08-28 17:48:39');
INSERT INTO `airway` VALUES ('13', 'SHA', 'PEK', '上海虹桥', '北京首都', null, null, null, '0', '2020-08-28 17:48:39');
INSERT INTO `airway` VALUES ('14', 'SHA', 'CAN', '上海虹桥', '广州白云', null, null, null, '0', '2020-08-28 17:48:39');
INSERT INTO `airway` VALUES ('15', 'SHA', 'CTU', '上海虹桥', '成都双流', null, null, null, '0', '2020-08-28 17:48:39');
INSERT INTO `airway` VALUES ('16', 'SHA', 'KMG', '上海虹桥', '昆明长水', null, null, null, '0', '2020-08-28 17:48:39');
INSERT INTO `airway` VALUES ('17', 'SHA', 'SZX', '上海虹桥', '深圳宝安', null, null, null, '0', '2020-08-28 17:48:39');
INSERT INTO `airway` VALUES ('18', 'SHA', 'FOC', '上海虹桥', '福州长乐', null, null, null, '0', '2020-08-28 17:48:39');
INSERT INTO `airway` VALUES ('19', 'SHA', 'XIY', '上海虹桥', '西安咸阳', null, null, null, '0', '2020-08-28 17:48:39');
INSERT INTO `airway` VALUES ('20', 'SHA', 'CKG', '上海虹桥', '重庆江北', null, null, null, '0', '2020-08-28 17:48:39');
INSERT INTO `airway` VALUES ('21', 'SHA', 'CSX', '上海虹桥', '长沙黄花', null, null, null, '0', '2020-08-28 17:48:39');
INSERT INTO `airway` VALUES ('22', 'SHA', 'TAO', '上海虹桥', '青岛流亭', null, null, null, '0', '2020-08-28 17:48:39');
INSERT INTO `airway` VALUES ('23', 'PKX', 'PVG', '北京大兴', '上海浦东', null, null, null, '0', '2020-08-28 17:48:39');
INSERT INTO `airway` VALUES ('24', 'PKX', 'SHA', '北京大兴', '上海虹桥', null, null, null, '0', '2020-08-28 17:48:39');
INSERT INTO `airway` VALUES ('25', 'PKX', 'NKG', '北京大兴', '南京禄口', null, null, null, '0', '2020-08-28 17:48:39');
INSERT INTO `airway` VALUES ('26', 'PKX', 'CAN', '北京大兴', '广州白云', null, null, null, '0', '2020-08-28 17:48:39');
INSERT INTO `airway` VALUES ('27', 'PKX', 'CTU', '北京大兴', '成都双流', null, null, null, '0', '2020-08-28 17:48:39');
INSERT INTO `airway` VALUES ('28', 'PKX', 'KMG', '北京大兴', '昆明长水', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('29', 'PKX', 'HGH', '北京大兴', '杭州萧山', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('30', 'PKX', 'SZX', '北京大兴', '深圳宝安', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('31', 'PKX', 'FOC', '北京大兴', '福州长乐', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('32', 'PKX', 'XIY', '北京大兴', '西安咸阳', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('33', 'PKX', 'CKG', '北京大兴', '重庆江北', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('34', 'PKX', 'CSX', '北京大兴', '长沙黄花', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('35', 'PKX', 'TAO', '北京大兴', '青岛流亭', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('36', 'PEK', 'PVG', '北京首都', '上海浦东', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('37', 'PEK', 'SHA', '北京首都', '上海虹桥', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('38', 'PEK', 'NKG', '北京首都', '南京禄口', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('39', 'PEK', 'CAN', '北京首都', '广州白云', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('40', 'PEK', 'CTU', '北京首都', '成都双流', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('41', 'PEK', 'KMG', '北京首都', '昆明长水', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('42', 'PEK', 'HGH', '北京首都', '杭州萧山', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('43', 'PEK', 'SZX', '北京首都', '深圳宝安', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('44', 'PEK', 'FOC', '北京首都', '福州长乐', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('45', 'PEK', 'XIY', '北京首都', '西安咸阳', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('46', 'PEK', 'CKG', '北京首都', '重庆江北', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('47', 'PEK', 'CSX', '北京首都', '长沙黄花', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('48', 'PEK', 'TAO', '北京首都', '青岛流亭', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('49', 'NKG', 'PKX', '南京禄口', '北京大兴', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('50', 'NKG', 'PEK', '南京禄口', '北京首都', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('51', 'NKG', 'CAN', '南京禄口', '广州白云', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('52', 'NKG', 'CTU', '南京禄口', '成都双流', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('53', 'NKG', 'KMG', '南京禄口', '昆明长水', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('54', 'NKG', 'SZX', '南京禄口', '深圳宝安', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('55', 'NKG', 'FOC', '南京禄口', '福州长乐', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('56', 'NKG', 'XIY', '南京禄口', '西安咸阳', null, null, null, '0', '2020-08-28 17:48:40');
INSERT INTO `airway` VALUES ('57', 'NKG', 'CKG', '南京禄口', '重庆江北', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('58', 'NKG', 'CSX', '南京禄口', '长沙黄花', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('59', 'NKG', 'TAO', '南京禄口', '青岛流亭', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('60', 'CAN', 'PVG', '广州白云', '上海浦东', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('61', 'CAN', 'SHA', '广州白云', '上海虹桥', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('62', 'CAN', 'PKX', '广州白云', '北京大兴', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('63', 'CAN', 'PEK', '广州白云', '北京首都', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('64', 'CAN', 'NKG', '广州白云', '南京禄口', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('65', 'CAN', 'CTU', '广州白云', '成都双流', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('66', 'CAN', 'KMG', '广州白云', '昆明长水', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('67', 'CAN', 'HGH', '广州白云', '杭州萧山', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('68', 'CAN', 'FOC', '广州白云', '福州长乐', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('69', 'CAN', 'XIY', '广州白云', '西安咸阳', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('70', 'CAN', 'CKG', '广州白云', '重庆江北', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('71', 'CAN', 'CSX', '广州白云', '长沙黄花', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('72', 'CAN', 'TAO', '广州白云', '青岛流亭', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('73', 'CTU', 'PVG', '成都双流', '上海浦东', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('74', 'CTU', 'SHA', '成都双流', '上海虹桥', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('75', 'CTU', 'PKX', '成都双流', '北京大兴', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('76', 'CTU', 'PEK', '成都双流', '北京首都', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('77', 'CTU', 'NKG', '成都双流', '南京禄口', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('78', 'CTU', 'CAN', '成都双流', '广州白云', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('79', 'CTU', 'KMG', '成都双流', '昆明长水', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('80', 'CTU', 'HGH', '成都双流', '杭州萧山', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('81', 'CTU', 'SZX', '成都双流', '深圳宝安', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('82', 'CTU', 'FOC', '成都双流', '福州长乐', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('83', 'CTU', 'XIY', '成都双流', '西安咸阳', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('84', 'CTU', 'CSX', '成都双流', '长沙黄花', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('85', 'CTU', 'TAO', '成都双流', '青岛流亭', null, null, null, '0', '2020-08-28 17:48:41');
INSERT INTO `airway` VALUES ('86', 'KMG', 'PVG', '昆明长水', '上海浦东', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('87', 'KMG', 'SHA', '昆明长水', '上海虹桥', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('88', 'KMG', 'PKX', '昆明长水', '北京大兴', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('89', 'KMG', 'PEK', '昆明长水', '北京首都', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('90', 'KMG', 'NKG', '昆明长水', '南京禄口', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('91', 'KMG', 'CAN', '昆明长水', '广州白云', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('92', 'KMG', 'CTU', '昆明长水', '成都双流', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('93', 'KMG', 'HGH', '昆明长水', '杭州萧山', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('94', 'KMG', 'SZX', '昆明长水', '深圳宝安', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('95', 'KMG', 'FOC', '昆明长水', '福州长乐', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('96', 'KMG', 'XIY', '昆明长水', '西安咸阳', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('97', 'KMG', 'CKG', '昆明长水', '重庆江北', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('98', 'KMG', 'CSX', '昆明长水', '长沙黄花', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('99', 'KMG', 'TAO', '昆明长水', '青岛流亭', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('100', 'HGH', 'PKX', '杭州萧山', '北京大兴', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('101', 'HGH', 'PEK', '杭州萧山', '北京首都', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('102', 'HGH', 'CAN', '杭州萧山', '广州白云', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('103', 'HGH', 'CTU', '杭州萧山', '成都双流', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('104', 'HGH', 'KMG', '杭州萧山', '昆明长水', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('105', 'HGH', 'SZX', '杭州萧山', '深圳宝安', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('106', 'HGH', 'XIY', '杭州萧山', '西安咸阳', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('107', 'HGH', 'CKG', '杭州萧山', '重庆江北', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('108', 'HGH', 'CSX', '杭州萧山', '长沙黄花', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('109', 'HGH', 'TAO', '杭州萧山', '青岛流亭', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('110', 'SZX', 'PVG', '深圳宝安', '上海浦东', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('111', 'SZX', 'SHA', '深圳宝安', '上海虹桥', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('112', 'SZX', 'PKX', '深圳宝安', '北京大兴', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('113', 'SZX', 'PEK', '深圳宝安', '北京首都', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('114', 'SZX', 'NKG', '深圳宝安', '南京禄口', null, null, null, '0', '2020-08-28 17:48:42');
INSERT INTO `airway` VALUES ('115', 'SZX', 'CTU', '深圳宝安', '成都双流', null, null, null, '0', '2020-08-28 17:48:43');
INSERT INTO `airway` VALUES ('116', 'SZX', 'KMG', '深圳宝安', '昆明长水', null, null, null, '0', '2020-08-28 17:48:43');
INSERT INTO `airway` VALUES ('117', 'SZX', 'HGH', '深圳宝安', '杭州萧山', null, null, null, '0', '2020-08-28 17:48:43');
INSERT INTO `airway` VALUES ('118', 'SZX', 'FOC', '深圳宝安', '福州长乐', null, null, null, '0', '2020-08-28 17:48:43');
INSERT INTO `airway` VALUES ('119', 'SZX', 'XIY', '深圳宝安', '西安咸阳', null, null, null, '0', '2020-08-28 17:48:43');
INSERT INTO `airway` VALUES ('120', 'SZX', 'CKG', '深圳宝安', '重庆江北', null, null, null, '0', '2020-08-28 17:48:43');
INSERT INTO `airway` VALUES ('121', 'SZX', 'CSX', '深圳宝安', '长沙黄花', null, null, null, '0', '2020-08-28 17:48:43');
INSERT INTO `airway` VALUES ('122', 'SZX', 'TAO', '深圳宝安', '青岛流亭', null, null, null, '0', '2020-08-28 17:48:43');
INSERT INTO `airway` VALUES ('123', 'FOC', 'PVG', '福州长乐', '上海浦东', null, null, null, '0', '2020-08-28 17:48:43');
INSERT INTO `airway` VALUES ('124', 'FOC', 'SHA', '福州长乐', '上海虹桥', null, null, null, '0', '2020-08-28 17:48:43');
INSERT INTO `airway` VALUES ('125', 'FOC', 'PKX', '福州长乐', '北京大兴', null, null, null, '0', '2020-08-28 17:48:43');
INSERT INTO `airway` VALUES ('126', 'FOC', 'PEK', '福州长乐', '北京首都', null, null, null, '0', '2020-08-28 17:48:43');
INSERT INTO `airway` VALUES ('127', 'FOC', 'NKG', '福州长乐', '南京禄口', null, null, null, '0', '2020-08-28 17:48:43');
INSERT INTO `airway` VALUES ('128', 'FOC', 'CAN', '福州长乐', '广州白云', null, null, null, '0', '2020-08-28 17:48:43');
INSERT INTO `airway` VALUES ('129', 'FOC', 'CTU', '福州长乐', '成都双流', null, null, null, '0', '2020-08-28 17:48:43');
INSERT INTO `airway` VALUES ('130', 'FOC', 'KMG', '福州长乐', '昆明长水', null, null, null, '0', '2020-08-28 17:48:43');
INSERT INTO `airway` VALUES ('131', 'FOC', 'SZX', '福州长乐', '深圳宝安', null, null, null, '0', '2020-08-28 17:48:43');
INSERT INTO `airway` VALUES ('132', 'FOC', 'XIY', '福州长乐', '西安咸阳', null, null, null, '0', '2020-08-28 17:48:43');
INSERT INTO `airway` VALUES ('133', 'FOC', 'CKG', '福州长乐', '重庆江北', null, null, null, '0', '2020-08-28 17:48:43');
INSERT INTO `airway` VALUES ('134', 'FOC', 'CSX', '福州长乐', '长沙黄花', null, null, null, '0', '2020-08-28 17:48:43');
INSERT INTO `airway` VALUES ('135', 'FOC', 'TAO', '福州长乐', '青岛流亭', null, null, null, '0', '2020-08-28 17:48:43');
INSERT INTO `airway` VALUES ('136', 'XIY', 'PVG', '西安咸阳', '上海浦东', null, null, null, '0', '2020-08-28 17:48:43');
INSERT INTO `airway` VALUES ('137', 'XIY', 'SHA', '西安咸阳', '上海虹桥', null, null, null, '0', '2020-08-28 17:48:43');
INSERT INTO `airway` VALUES ('138', 'XIY', 'PKX', '西安咸阳', '北京大兴', null, null, null, '0', '2020-08-28 17:48:43');
INSERT INTO `airway` VALUES ('139', 'XIY', 'PEK', '西安咸阳', '北京首都', null, null, null, '0', '2020-08-28 17:48:43');
INSERT INTO `airway` VALUES ('140', 'XIY', 'NKG', '西安咸阳', '南京禄口', null, null, null, '0', '2020-08-28 17:48:43');
INSERT INTO `airway` VALUES ('141', 'XIY', 'CAN', '西安咸阳', '广州白云', null, null, null, '0', '2020-08-28 17:48:43');
INSERT INTO `airway` VALUES ('142', 'XIY', 'CTU', '西安咸阳', '成都双流', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('143', 'XIY', 'KMG', '西安咸阳', '昆明长水', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('144', 'XIY', 'HGH', '西安咸阳', '杭州萧山', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('145', 'XIY', 'SZX', '西安咸阳', '深圳宝安', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('146', 'XIY', 'FOC', '西安咸阳', '福州长乐', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('147', 'XIY', 'CKG', '西安咸阳', '重庆江北', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('148', 'XIY', 'CSX', '西安咸阳', '长沙黄花', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('149', 'XIY', 'TAO', '西安咸阳', '青岛流亭', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('150', 'CKG', 'PVG', '重庆江北', '上海浦东', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('151', 'CKG', 'SHA', '重庆江北', '上海虹桥', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('152', 'CKG', 'PKX', '重庆江北', '北京大兴', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('153', 'CKG', 'PEK', '重庆江北', '北京首都', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('154', 'CKG', 'NKG', '重庆江北', '南京禄口', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('155', 'CKG', 'CAN', '重庆江北', '广州白云', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('156', 'CKG', 'KMG', '重庆江北', '昆明长水', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('157', 'CKG', 'HGH', '重庆江北', '杭州萧山', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('158', 'CKG', 'SZX', '重庆江北', '深圳宝安', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('159', 'CKG', 'FOC', '重庆江北', '福州长乐', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('160', 'CKG', 'XIY', '重庆江北', '西安咸阳', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('161', 'CKG', 'CSX', '重庆江北', '长沙黄花', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('162', 'CKG', 'TAO', '重庆江北', '青岛流亭', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('163', 'CSX', 'PVG', '长沙黄花', '上海浦东', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('164', 'CSX', 'SHA', '长沙黄花', '上海虹桥', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('165', 'CSX', 'PKX', '长沙黄花', '北京大兴', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('166', 'CSX', 'PEK', '长沙黄花', '北京首都', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('167', 'CSX', 'NKG', '长沙黄花', '南京禄口', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('168', 'CSX', 'CAN', '长沙黄花', '广州白云', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('169', 'CSX', 'CTU', '长沙黄花', '成都双流', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('170', 'CSX', 'KMG', '长沙黄花', '昆明长水', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('171', 'CSX', 'HGH', '长沙黄花', '杭州萧山', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('172', 'CSX', 'SZX', '长沙黄花', '深圳宝安', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('173', 'CSX', 'FOC', '长沙黄花', '福州长乐', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('174', 'CSX', 'XIY', '长沙黄花', '西安咸阳', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('175', 'CSX', 'CKG', '长沙黄花', '重庆江北', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('176', 'CSX', 'TAO', '长沙黄花', '青岛流亭', null, null, null, '0', '2020-08-28 17:48:44');
INSERT INTO `airway` VALUES ('177', 'TAO', 'PVG', '青岛流亭', '上海浦东', null, null, null, '0', '2020-08-28 17:48:45');
INSERT INTO `airway` VALUES ('178', 'TAO', 'SHA', '青岛流亭', '上海虹桥', null, null, null, '0', '2020-08-28 17:48:45');
INSERT INTO `airway` VALUES ('179', 'TAO', 'PKX', '青岛流亭', '北京大兴', null, null, null, '0', '2020-08-28 17:48:45');
INSERT INTO `airway` VALUES ('180', 'TAO', 'PEK', '青岛流亭', '北京首都', null, null, null, '0', '2020-08-28 17:48:45');
INSERT INTO `airway` VALUES ('181', 'TAO', 'NKG', '青岛流亭', '南京禄口', null, null, null, '0', '2020-08-28 17:48:45');
INSERT INTO `airway` VALUES ('182', 'TAO', 'CAN', '青岛流亭', '广州白云', null, null, null, '0', '2020-08-28 17:48:45');
INSERT INTO `airway` VALUES ('183', 'TAO', 'CTU', '青岛流亭', '成都双流', null, null, null, '0', '2020-08-28 17:48:45');
INSERT INTO `airway` VALUES ('184', 'TAO', 'KMG', '青岛流亭', '昆明长水', null, null, null, '0', '2020-08-28 17:48:45');
INSERT INTO `airway` VALUES ('185', 'TAO', 'HGH', '青岛流亭', '杭州萧山', null, null, null, '0', '2020-08-28 17:48:45');
INSERT INTO `airway` VALUES ('186', 'TAO', 'SZX', '青岛流亭', '深圳宝安', null, null, null, '0', '2020-08-28 17:48:45');
INSERT INTO `airway` VALUES ('187', 'TAO', 'FOC', '青岛流亭', '福州长乐', null, null, null, '0', '2020-08-28 17:48:45');
INSERT INTO `airway` VALUES ('188', 'TAO', 'XIY', '青岛流亭', '西安咸阳', null, null, null, '0', '2020-08-28 17:48:45');
INSERT INTO `airway` VALUES ('189', 'TAO', 'CKG', '青岛流亭', '重庆江北', null, null, null, '0', '2020-08-28 17:48:45');
INSERT INTO `airway` VALUES ('190', 'TAO', 'CSX', '青岛流亭', '长沙黄花', null, null, null, '0', '2020-08-28 17:48:45');
