/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50719
Source Host           : 127.0.0.1:3306
Source Database       : fly

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2020-08-28 22:59:13
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
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of airway
-- ----------------------------
INSERT INTO `airway` VALUES ('1', 'PVG', 'PKX', '上海浦东', '北京大兴', null, null, null, '0', '2020-08-28 22:58:30');
INSERT INTO `airway` VALUES ('2', 'PVG', 'PEK', '上海浦东', '北京首都', null, null, null, '0', '2020-08-28 22:58:30');
INSERT INTO `airway` VALUES ('3', 'PVG', 'XMN', '上海浦东', '厦门高崎', null, null, null, '0', '2020-08-28 22:58:30');
INSERT INTO `airway` VALUES ('4', 'PVG', 'TSN', '上海浦东', '天津滨海', null, null, null, '0', '2020-08-28 22:58:30');
INSERT INTO `airway` VALUES ('5', 'PVG', 'CAN', '上海浦东', '广州白云', null, null, null, '0', '2020-08-28 22:58:30');
INSERT INTO `airway` VALUES ('6', 'PVG', 'CTU', '上海浦东', '成都双流', null, null, null, '0', '2020-08-28 22:58:30');
INSERT INTO `airway` VALUES ('7', 'PVG', 'KMG', '上海浦东', '昆明长水', null, null, null, '0', '2020-08-28 22:58:30');
INSERT INTO `airway` VALUES ('8', 'PVG', 'SZX', '上海浦东', '深圳宝安', null, null, null, '0', '2020-08-28 22:58:30');
INSERT INTO `airway` VALUES ('9', 'PVG', 'FOC', '上海浦东', '福州长乐', null, null, null, '0', '2020-08-28 22:58:30');
INSERT INTO `airway` VALUES ('10', 'PVG', 'XIY', '上海浦东', '西安咸阳', null, null, null, '0', '2020-08-28 22:58:30');
INSERT INTO `airway` VALUES ('11', 'PVG', 'CKG', '上海浦东', '重庆江北', null, null, null, '0', '2020-08-28 22:58:30');
INSERT INTO `airway` VALUES ('12', 'PVG', 'CSX', '上海浦东', '长沙黄花', null, null, null, '0', '2020-08-28 22:58:30');
INSERT INTO `airway` VALUES ('13', 'PVG', 'TAO', '上海浦东', '青岛流亭', null, null, null, '0', '2020-08-28 22:58:30');
INSERT INTO `airway` VALUES ('14', 'SHA', 'PKX', '上海虹桥', '北京大兴', null, null, null, '0', '2020-08-28 22:58:30');
INSERT INTO `airway` VALUES ('15', 'SHA', 'PEK', '上海虹桥', '北京首都', null, null, null, '0', '2020-08-28 22:58:30');
INSERT INTO `airway` VALUES ('16', 'SHA', 'XMN', '上海虹桥', '厦门高崎', null, null, null, '0', '2020-08-28 22:58:31');
INSERT INTO `airway` VALUES ('17', 'SHA', 'TSN', '上海虹桥', '天津滨海', null, null, null, '0', '2020-08-28 22:58:31');
INSERT INTO `airway` VALUES ('18', 'SHA', 'CAN', '上海虹桥', '广州白云', null, null, null, '0', '2020-08-28 22:58:31');
INSERT INTO `airway` VALUES ('19', 'SHA', 'CTU', '上海虹桥', '成都双流', null, null, null, '0', '2020-08-28 22:58:31');
INSERT INTO `airway` VALUES ('20', 'SHA', 'KMG', '上海虹桥', '昆明长水', null, null, null, '0', '2020-08-28 22:58:31');
INSERT INTO `airway` VALUES ('21', 'SHA', 'SZX', '上海虹桥', '深圳宝安', null, null, null, '0', '2020-08-28 22:58:31');
INSERT INTO `airway` VALUES ('22', 'SHA', 'FOC', '上海虹桥', '福州长乐', null, null, null, '0', '2020-08-28 22:58:31');
INSERT INTO `airway` VALUES ('23', 'SHA', 'XIY', '上海虹桥', '西安咸阳', null, null, null, '0', '2020-08-28 22:58:31');
INSERT INTO `airway` VALUES ('24', 'SHA', 'CKG', '上海虹桥', '重庆江北', null, null, null, '0', '2020-08-28 22:58:31');
INSERT INTO `airway` VALUES ('25', 'SHA', 'CSX', '上海虹桥', '长沙黄花', null, null, null, '0', '2020-08-28 22:58:31');
INSERT INTO `airway` VALUES ('26', 'SHA', 'TAO', '上海虹桥', '青岛流亭', null, null, null, '0', '2020-08-28 22:58:31');
INSERT INTO `airway` VALUES ('27', 'PKX', 'PVG', '北京大兴', '上海浦东', null, null, null, '0', '2020-08-28 22:58:31');
INSERT INTO `airway` VALUES ('28', 'PKX', 'SHA', '北京大兴', '上海虹桥', null, null, null, '0', '2020-08-28 22:58:31');
INSERT INTO `airway` VALUES ('29', 'PKX', 'NKG', '北京大兴', '南京禄口', null, null, null, '0', '2020-08-28 22:58:31');
INSERT INTO `airway` VALUES ('30', 'PKX', 'XMN', '北京大兴', '厦门高崎', null, null, null, '0', '2020-08-28 22:58:31');
INSERT INTO `airway` VALUES ('31', 'PKX', 'CAN', '北京大兴', '广州白云', null, null, null, '0', '2020-08-28 22:58:31');
INSERT INTO `airway` VALUES ('32', 'PKX', 'CTU', '北京大兴', '成都双流', null, null, null, '0', '2020-08-28 22:58:31');
INSERT INTO `airway` VALUES ('33', 'PKX', 'KMG', '北京大兴', '昆明长水', null, null, null, '0', '2020-08-28 22:58:31');
INSERT INTO `airway` VALUES ('34', 'PKX', 'HGH', '北京大兴', '杭州萧山', null, null, null, '0', '2020-08-28 22:58:31');
INSERT INTO `airway` VALUES ('35', 'PKX', 'SZX', '北京大兴', '深圳宝安', null, null, null, '0', '2020-08-28 22:58:31');
INSERT INTO `airway` VALUES ('36', 'PKX', 'FOC', '北京大兴', '福州长乐', null, null, null, '0', '2020-08-28 22:58:31');
INSERT INTO `airway` VALUES ('37', 'PKX', 'XIY', '北京大兴', '西安咸阳', null, null, null, '0', '2020-08-28 22:58:31');
INSERT INTO `airway` VALUES ('38', 'PKX', 'CKG', '北京大兴', '重庆江北', null, null, null, '0', '2020-08-28 22:58:31');
INSERT INTO `airway` VALUES ('39', 'PKX', 'CSX', '北京大兴', '长沙黄花', null, null, null, '0', '2020-08-28 22:58:31');
INSERT INTO `airway` VALUES ('40', 'PKX', 'TAO', '北京大兴', '青岛流亭', null, null, null, '0', '2020-08-28 22:58:32');
INSERT INTO `airway` VALUES ('41', 'PEK', 'PVG', '北京首都', '上海浦东', null, null, null, '0', '2020-08-28 22:58:32');
INSERT INTO `airway` VALUES ('42', 'PEK', 'SHA', '北京首都', '上海虹桥', null, null, null, '0', '2020-08-28 22:58:32');
INSERT INTO `airway` VALUES ('43', 'PEK', 'NKG', '北京首都', '南京禄口', null, null, null, '0', '2020-08-28 22:58:32');
INSERT INTO `airway` VALUES ('44', 'PEK', 'XMN', '北京首都', '厦门高崎', null, null, null, '0', '2020-08-28 22:58:32');
INSERT INTO `airway` VALUES ('45', 'PEK', 'CAN', '北京首都', '广州白云', null, null, null, '0', '2020-08-28 22:58:32');
INSERT INTO `airway` VALUES ('46', 'PEK', 'CTU', '北京首都', '成都双流', null, null, null, '0', '2020-08-28 22:58:32');
INSERT INTO `airway` VALUES ('47', 'PEK', 'KMG', '北京首都', '昆明长水', null, null, null, '0', '2020-08-28 22:58:32');
INSERT INTO `airway` VALUES ('48', 'PEK', 'HGH', '北京首都', '杭州萧山', null, null, null, '0', '2020-08-28 22:58:32');
INSERT INTO `airway` VALUES ('49', 'PEK', 'SZX', '北京首都', '深圳宝安', null, null, null, '0', '2020-08-28 22:58:32');
INSERT INTO `airway` VALUES ('50', 'PEK', 'FOC', '北京首都', '福州长乐', null, null, null, '0', '2020-08-28 22:58:32');
INSERT INTO `airway` VALUES ('51', 'PEK', 'XIY', '北京首都', '西安咸阳', null, null, null, '0', '2020-08-28 22:58:32');
INSERT INTO `airway` VALUES ('52', 'PEK', 'CKG', '北京首都', '重庆江北', null, null, null, '0', '2020-08-28 22:58:32');
INSERT INTO `airway` VALUES ('53', 'PEK', 'CSX', '北京首都', '长沙黄花', null, null, null, '0', '2020-08-28 22:58:32');
INSERT INTO `airway` VALUES ('54', 'PEK', 'TAO', '北京首都', '青岛流亭', null, null, null, '0', '2020-08-28 22:58:32');
INSERT INTO `airway` VALUES ('55', 'NKG', 'PKX', '南京禄口', '北京大兴', null, null, null, '0', '2020-08-28 22:58:32');
INSERT INTO `airway` VALUES ('56', 'NKG', 'PEK', '南京禄口', '北京首都', null, null, null, '0', '2020-08-28 22:58:32');
INSERT INTO `airway` VALUES ('57', 'NKG', 'XMN', '南京禄口', '厦门高崎', null, null, null, '0', '2020-08-28 22:58:32');
INSERT INTO `airway` VALUES ('58', 'NKG', 'CAN', '南京禄口', '广州白云', null, null, null, '0', '2020-08-28 22:58:32');
INSERT INTO `airway` VALUES ('59', 'NKG', 'CTU', '南京禄口', '成都双流', null, null, null, '0', '2020-08-28 22:58:32');
INSERT INTO `airway` VALUES ('60', 'NKG', 'KMG', '南京禄口', '昆明长水', null, null, null, '0', '2020-08-28 22:58:32');
INSERT INTO `airway` VALUES ('61', 'NKG', 'SZX', '南京禄口', '深圳宝安', null, null, null, '0', '2020-08-28 22:58:32');
INSERT INTO `airway` VALUES ('62', 'NKG', 'FOC', '南京禄口', '福州长乐', null, null, null, '0', '2020-08-28 22:58:32');
INSERT INTO `airway` VALUES ('63', 'NKG', 'XIY', '南京禄口', '西安咸阳', null, null, null, '0', '2020-08-28 22:58:32');
INSERT INTO `airway` VALUES ('64', 'NKG', 'CKG', '南京禄口', '重庆江北', null, null, null, '0', '2020-08-28 22:58:32');
INSERT INTO `airway` VALUES ('65', 'NKG', 'CSX', '南京禄口', '长沙黄花', null, null, null, '0', '2020-08-28 22:58:32');
INSERT INTO `airway` VALUES ('66', 'NKG', 'TAO', '南京禄口', '青岛流亭', null, null, null, '0', '2020-08-28 22:58:32');
INSERT INTO `airway` VALUES ('67', 'XMN', 'PVG', '厦门高崎', '上海浦东', null, null, null, '0', '2020-08-28 22:58:32');
INSERT INTO `airway` VALUES ('68', 'XMN', 'SHA', '厦门高崎', '上海虹桥', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('69', 'XMN', 'PKX', '厦门高崎', '北京大兴', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('70', 'XMN', 'PEK', '厦门高崎', '北京首都', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('71', 'XMN', 'NKG', '厦门高崎', '南京禄口', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('72', 'XMN', 'TSN', '厦门高崎', '天津滨海', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('73', 'XMN', 'CAN', '厦门高崎', '广州白云', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('74', 'XMN', 'CTU', '厦门高崎', '成都双流', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('75', 'XMN', 'KMG', '厦门高崎', '昆明长水', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('76', 'XMN', 'HGH', '厦门高崎', '杭州萧山', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('77', 'XMN', 'XIY', '厦门高崎', '西安咸阳', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('78', 'XMN', 'CKG', '厦门高崎', '重庆江北', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('79', 'XMN', 'CSX', '厦门高崎', '长沙黄花', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('80', 'XMN', 'TAO', '厦门高崎', '青岛流亭', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('81', 'TSN', 'PVG', '天津滨海', '上海浦东', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('82', 'TSN', 'SHA', '天津滨海', '上海虹桥', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('83', 'TSN', 'XMN', '天津滨海', '厦门高崎', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('84', 'TSN', 'CAN', '天津滨海', '广州白云', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('85', 'TSN', 'CTU', '天津滨海', '成都双流', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('86', 'TSN', 'KMG', '天津滨海', '昆明长水', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('87', 'TSN', 'HGH', '天津滨海', '杭州萧山', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('88', 'TSN', 'SZX', '天津滨海', '深圳宝安', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('89', 'TSN', 'FOC', '天津滨海', '福州长乐', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('90', 'TSN', 'XIY', '天津滨海', '西安咸阳', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('91', 'TSN', 'CKG', '天津滨海', '重庆江北', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('92', 'TSN', 'CSX', '天津滨海', '长沙黄花', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('93', 'TSN', 'TAO', '天津滨海', '青岛流亭', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('94', 'CAN', 'PVG', '广州白云', '上海浦东', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('95', 'CAN', 'SHA', '广州白云', '上海虹桥', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('96', 'CAN', 'PKX', '广州白云', '北京大兴', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('97', 'CAN', 'PEK', '广州白云', '北京首都', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('98', 'CAN', 'NKG', '广州白云', '南京禄口', null, null, null, '0', '2020-08-28 22:58:33');
INSERT INTO `airway` VALUES ('99', 'CAN', 'XMN', '广州白云', '厦门高崎', null, null, null, '0', '2020-08-28 22:58:34');
INSERT INTO `airway` VALUES ('100', 'CAN', 'TSN', '广州白云', '天津滨海', null, null, null, '0', '2020-08-28 22:58:34');
INSERT INTO `airway` VALUES ('101', 'CAN', 'CTU', '广州白云', '成都双流', null, null, null, '0', '2020-08-28 22:58:34');
INSERT INTO `airway` VALUES ('102', 'CAN', 'KMG', '广州白云', '昆明长水', null, null, null, '0', '2020-08-28 22:58:34');
INSERT INTO `airway` VALUES ('103', 'CAN', 'HGH', '广州白云', '杭州萧山', null, null, null, '0', '2020-08-28 22:58:34');
INSERT INTO `airway` VALUES ('104', 'CAN', 'FOC', '广州白云', '福州长乐', null, null, null, '0', '2020-08-28 22:58:34');
INSERT INTO `airway` VALUES ('105', 'CAN', 'XIY', '广州白云', '西安咸阳', null, null, null, '0', '2020-08-28 22:58:34');
INSERT INTO `airway` VALUES ('106', 'CAN', 'CKG', '广州白云', '重庆江北', null, null, null, '0', '2020-08-28 22:58:34');
INSERT INTO `airway` VALUES ('107', 'CAN', 'CSX', '广州白云', '长沙黄花', null, null, null, '0', '2020-08-28 22:58:34');
INSERT INTO `airway` VALUES ('108', 'CAN', 'TAO', '广州白云', '青岛流亭', null, null, null, '0', '2020-08-28 22:58:34');
INSERT INTO `airway` VALUES ('109', 'CTU', 'PVG', '成都双流', '上海浦东', null, null, null, '0', '2020-08-28 22:58:34');
INSERT INTO `airway` VALUES ('110', 'CTU', 'SHA', '成都双流', '上海虹桥', null, null, null, '0', '2020-08-28 22:58:34');
INSERT INTO `airway` VALUES ('111', 'CTU', 'PKX', '成都双流', '北京大兴', null, null, null, '0', '2020-08-28 22:58:34');
INSERT INTO `airway` VALUES ('112', 'CTU', 'PEK', '成都双流', '北京首都', null, null, null, '0', '2020-08-28 22:58:34');
INSERT INTO `airway` VALUES ('113', 'CTU', 'NKG', '成都双流', '南京禄口', null, null, null, '0', '2020-08-28 22:58:34');
INSERT INTO `airway` VALUES ('114', 'CTU', 'XMN', '成都双流', '厦门高崎', null, null, null, '0', '2020-08-28 22:58:34');
INSERT INTO `airway` VALUES ('115', 'CTU', 'TSN', '成都双流', '天津滨海', null, null, null, '0', '2020-08-28 22:58:34');
INSERT INTO `airway` VALUES ('116', 'CTU', 'CAN', '成都双流', '广州白云', null, null, null, '0', '2020-08-28 22:58:34');
INSERT INTO `airway` VALUES ('117', 'CTU', 'KMG', '成都双流', '昆明长水', null, null, null, '0', '2020-08-28 22:58:34');
INSERT INTO `airway` VALUES ('118', 'CTU', 'HGH', '成都双流', '杭州萧山', null, null, null, '0', '2020-08-28 22:58:34');
INSERT INTO `airway` VALUES ('119', 'CTU', 'SZX', '成都双流', '深圳宝安', null, null, null, '0', '2020-08-28 22:58:34');
INSERT INTO `airway` VALUES ('120', 'CTU', 'FOC', '成都双流', '福州长乐', null, null, null, '0', '2020-08-28 22:58:34');
INSERT INTO `airway` VALUES ('121', 'CTU', 'XIY', '成都双流', '西安咸阳', null, null, null, '0', '2020-08-28 22:58:34');
INSERT INTO `airway` VALUES ('122', 'CTU', 'CSX', '成都双流', '长沙黄花', null, null, null, '0', '2020-08-28 22:58:34');
INSERT INTO `airway` VALUES ('123', 'CTU', 'TAO', '成都双流', '青岛流亭', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('124', 'KMG', 'PVG', '昆明长水', '上海浦东', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('125', 'KMG', 'SHA', '昆明长水', '上海虹桥', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('126', 'KMG', 'PKX', '昆明长水', '北京大兴', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('127', 'KMG', 'PEK', '昆明长水', '北京首都', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('128', 'KMG', 'NKG', '昆明长水', '南京禄口', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('129', 'KMG', 'XMN', '昆明长水', '厦门高崎', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('130', 'KMG', 'TSN', '昆明长水', '天津滨海', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('131', 'KMG', 'CAN', '昆明长水', '广州白云', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('132', 'KMG', 'CTU', '昆明长水', '成都双流', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('133', 'KMG', 'HGH', '昆明长水', '杭州萧山', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('134', 'KMG', 'SZX', '昆明长水', '深圳宝安', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('135', 'KMG', 'FOC', '昆明长水', '福州长乐', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('136', 'KMG', 'XIY', '昆明长水', '西安咸阳', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('137', 'KMG', 'CKG', '昆明长水', '重庆江北', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('138', 'KMG', 'CSX', '昆明长水', '长沙黄花', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('139', 'KMG', 'TAO', '昆明长水', '青岛流亭', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('140', 'HGH', 'PKX', '杭州萧山', '北京大兴', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('141', 'HGH', 'PEK', '杭州萧山', '北京首都', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('142', 'HGH', 'XMN', '杭州萧山', '厦门高崎', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('143', 'HGH', 'TSN', '杭州萧山', '天津滨海', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('144', 'HGH', 'CAN', '杭州萧山', '广州白云', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('145', 'HGH', 'CTU', '杭州萧山', '成都双流', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('146', 'HGH', 'KMG', '杭州萧山', '昆明长水', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('147', 'HGH', 'SZX', '杭州萧山', '深圳宝安', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('148', 'HGH', 'XIY', '杭州萧山', '西安咸阳', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('149', 'HGH', 'CKG', '杭州萧山', '重庆江北', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('150', 'HGH', 'CSX', '杭州萧山', '长沙黄花', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('151', 'HGH', 'TAO', '杭州萧山', '青岛流亭', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('152', 'SZX', 'PVG', '深圳宝安', '上海浦东', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('153', 'SZX', 'SHA', '深圳宝安', '上海虹桥', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('154', 'SZX', 'PKX', '深圳宝安', '北京大兴', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('155', 'SZX', 'PEK', '深圳宝安', '北京首都', null, null, null, '0', '2020-08-28 22:58:35');
INSERT INTO `airway` VALUES ('156', 'SZX', 'NKG', '深圳宝安', '南京禄口', null, null, null, '0', '2020-08-28 22:58:36');
INSERT INTO `airway` VALUES ('157', 'SZX', 'TSN', '深圳宝安', '天津滨海', null, null, null, '0', '2020-08-28 22:58:36');
INSERT INTO `airway` VALUES ('158', 'SZX', 'CTU', '深圳宝安', '成都双流', null, null, null, '0', '2020-08-28 22:58:36');
INSERT INTO `airway` VALUES ('159', 'SZX', 'KMG', '深圳宝安', '昆明长水', null, null, null, '0', '2020-08-28 22:58:36');
INSERT INTO `airway` VALUES ('160', 'SZX', 'HGH', '深圳宝安', '杭州萧山', null, null, null, '0', '2020-08-28 22:58:36');
INSERT INTO `airway` VALUES ('161', 'SZX', 'FOC', '深圳宝安', '福州长乐', null, null, null, '0', '2020-08-28 22:58:36');
INSERT INTO `airway` VALUES ('162', 'SZX', 'XIY', '深圳宝安', '西安咸阳', null, null, null, '0', '2020-08-28 22:58:36');
INSERT INTO `airway` VALUES ('163', 'SZX', 'CKG', '深圳宝安', '重庆江北', null, null, null, '0', '2020-08-28 22:58:36');
INSERT INTO `airway` VALUES ('164', 'SZX', 'CSX', '深圳宝安', '长沙黄花', null, null, null, '0', '2020-08-28 22:58:36');
INSERT INTO `airway` VALUES ('165', 'SZX', 'TAO', '深圳宝安', '青岛流亭', null, null, null, '0', '2020-08-28 22:58:36');
INSERT INTO `airway` VALUES ('166', 'FOC', 'PVG', '福州长乐', '上海浦东', null, null, null, '0', '2020-08-28 22:58:36');
INSERT INTO `airway` VALUES ('167', 'FOC', 'SHA', '福州长乐', '上海虹桥', null, null, null, '0', '2020-08-28 22:58:36');
INSERT INTO `airway` VALUES ('168', 'FOC', 'PKX', '福州长乐', '北京大兴', null, null, null, '0', '2020-08-28 22:58:36');
INSERT INTO `airway` VALUES ('169', 'FOC', 'PEK', '福州长乐', '北京首都', null, null, null, '0', '2020-08-28 22:58:36');
INSERT INTO `airway` VALUES ('170', 'FOC', 'NKG', '福州长乐', '南京禄口', null, null, null, '0', '2020-08-28 22:58:36');
INSERT INTO `airway` VALUES ('171', 'FOC', 'TSN', '福州长乐', '天津滨海', null, null, null, '0', '2020-08-28 22:58:36');
INSERT INTO `airway` VALUES ('172', 'FOC', 'CAN', '福州长乐', '广州白云', null, null, null, '0', '2020-08-28 22:58:36');
INSERT INTO `airway` VALUES ('173', 'FOC', 'CTU', '福州长乐', '成都双流', null, null, null, '0', '2020-08-28 22:58:36');
INSERT INTO `airway` VALUES ('174', 'FOC', 'KMG', '福州长乐', '昆明长水', null, null, null, '0', '2020-08-28 22:58:36');
INSERT INTO `airway` VALUES ('175', 'FOC', 'SZX', '福州长乐', '深圳宝安', null, null, null, '0', '2020-08-28 22:58:36');
INSERT INTO `airway` VALUES ('176', 'FOC', 'XIY', '福州长乐', '西安咸阳', null, null, null, '0', '2020-08-28 22:58:36');
INSERT INTO `airway` VALUES ('177', 'FOC', 'CKG', '福州长乐', '重庆江北', null, null, null, '0', '2020-08-28 22:58:36');
INSERT INTO `airway` VALUES ('178', 'FOC', 'CSX', '福州长乐', '长沙黄花', null, null, null, '0', '2020-08-28 22:58:36');
INSERT INTO `airway` VALUES ('179', 'FOC', 'TAO', '福州长乐', '青岛流亭', null, null, null, '0', '2020-08-28 22:58:36');
INSERT INTO `airway` VALUES ('180', 'XIY', 'PVG', '西安咸阳', '上海浦东', null, null, null, '0', '2020-08-28 22:58:36');
INSERT INTO `airway` VALUES ('181', 'XIY', 'SHA', '西安咸阳', '上海虹桥', null, null, null, '0', '2020-08-28 22:58:36');
INSERT INTO `airway` VALUES ('182', 'XIY', 'PKX', '西安咸阳', '北京大兴', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('183', 'XIY', 'PEK', '西安咸阳', '北京首都', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('184', 'XIY', 'NKG', '西安咸阳', '南京禄口', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('185', 'XIY', 'XMN', '西安咸阳', '厦门高崎', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('186', 'XIY', 'TSN', '西安咸阳', '天津滨海', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('187', 'XIY', 'CAN', '西安咸阳', '广州白云', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('188', 'XIY', 'CTU', '西安咸阳', '成都双流', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('189', 'XIY', 'KMG', '西安咸阳', '昆明长水', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('190', 'XIY', 'HGH', '西安咸阳', '杭州萧山', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('191', 'XIY', 'SZX', '西安咸阳', '深圳宝安', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('192', 'XIY', 'FOC', '西安咸阳', '福州长乐', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('193', 'XIY', 'CKG', '西安咸阳', '重庆江北', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('194', 'XIY', 'CSX', '西安咸阳', '长沙黄花', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('195', 'XIY', 'TAO', '西安咸阳', '青岛流亭', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('196', 'CKG', 'PVG', '重庆江北', '上海浦东', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('197', 'CKG', 'SHA', '重庆江北', '上海虹桥', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('198', 'CKG', 'PKX', '重庆江北', '北京大兴', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('199', 'CKG', 'PEK', '重庆江北', '北京首都', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('200', 'CKG', 'NKG', '重庆江北', '南京禄口', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('201', 'CKG', 'XMN', '重庆江北', '厦门高崎', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('202', 'CKG', 'TSN', '重庆江北', '天津滨海', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('203', 'CKG', 'CAN', '重庆江北', '广州白云', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('204', 'CKG', 'KMG', '重庆江北', '昆明长水', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('205', 'CKG', 'HGH', '重庆江北', '杭州萧山', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('206', 'CKG', 'SZX', '重庆江北', '深圳宝安', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('207', 'CKG', 'FOC', '重庆江北', '福州长乐', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('208', 'CKG', 'XIY', '重庆江北', '西安咸阳', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('209', 'CKG', 'CSX', '重庆江北', '长沙黄花', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('210', 'CKG', 'TAO', '重庆江北', '青岛流亭', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('211', 'CSX', 'PVG', '长沙黄花', '上海浦东', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('212', 'CSX', 'SHA', '长沙黄花', '上海虹桥', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('213', 'CSX', 'PKX', '长沙黄花', '北京大兴', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('214', 'CSX', 'PEK', '长沙黄花', '北京首都', null, null, null, '0', '2020-08-28 22:58:37');
INSERT INTO `airway` VALUES ('215', 'CSX', 'NKG', '长沙黄花', '南京禄口', null, null, null, '0', '2020-08-28 22:58:38');
INSERT INTO `airway` VALUES ('216', 'CSX', 'XMN', '长沙黄花', '厦门高崎', null, null, null, '0', '2020-08-28 22:58:38');
INSERT INTO `airway` VALUES ('217', 'CSX', 'TSN', '长沙黄花', '天津滨海', null, null, null, '0', '2020-08-28 22:58:38');
INSERT INTO `airway` VALUES ('218', 'CSX', 'CAN', '长沙黄花', '广州白云', null, null, null, '0', '2020-08-28 22:58:38');
INSERT INTO `airway` VALUES ('219', 'CSX', 'CTU', '长沙黄花', '成都双流', null, null, null, '0', '2020-08-28 22:58:38');
INSERT INTO `airway` VALUES ('220', 'CSX', 'KMG', '长沙黄花', '昆明长水', null, null, null, '0', '2020-08-28 22:58:38');
INSERT INTO `airway` VALUES ('221', 'CSX', 'HGH', '长沙黄花', '杭州萧山', null, null, null, '0', '2020-08-28 22:58:38');
INSERT INTO `airway` VALUES ('222', 'CSX', 'SZX', '长沙黄花', '深圳宝安', null, null, null, '0', '2020-08-28 22:58:38');
INSERT INTO `airway` VALUES ('223', 'CSX', 'FOC', '长沙黄花', '福州长乐', null, null, null, '0', '2020-08-28 22:58:38');
INSERT INTO `airway` VALUES ('224', 'CSX', 'XIY', '长沙黄花', '西安咸阳', null, null, null, '0', '2020-08-28 22:58:38');
INSERT INTO `airway` VALUES ('225', 'CSX', 'CKG', '长沙黄花', '重庆江北', null, null, null, '0', '2020-08-28 22:58:38');
INSERT INTO `airway` VALUES ('226', 'CSX', 'TAO', '长沙黄花', '青岛流亭', null, null, null, '0', '2020-08-28 22:58:38');
INSERT INTO `airway` VALUES ('227', 'TAO', 'PVG', '青岛流亭', '上海浦东', null, null, null, '0', '2020-08-28 22:58:38');
INSERT INTO `airway` VALUES ('228', 'TAO', 'SHA', '青岛流亭', '上海虹桥', null, null, null, '0', '2020-08-28 22:58:38');
INSERT INTO `airway` VALUES ('229', 'TAO', 'PKX', '青岛流亭', '北京大兴', null, null, null, '0', '2020-08-28 22:58:38');
INSERT INTO `airway` VALUES ('230', 'TAO', 'PEK', '青岛流亭', '北京首都', null, null, null, '0', '2020-08-28 22:58:38');
INSERT INTO `airway` VALUES ('231', 'TAO', 'NKG', '青岛流亭', '南京禄口', null, null, null, '0', '2020-08-28 22:58:38');
INSERT INTO `airway` VALUES ('232', 'TAO', 'XMN', '青岛流亭', '厦门高崎', null, null, null, '0', '2020-08-28 22:58:38');
INSERT INTO `airway` VALUES ('233', 'TAO', 'TSN', '青岛流亭', '天津滨海', null, null, null, '0', '2020-08-28 22:58:38');
INSERT INTO `airway` VALUES ('234', 'TAO', 'CAN', '青岛流亭', '广州白云', null, null, null, '0', '2020-08-28 22:58:38');
INSERT INTO `airway` VALUES ('235', 'TAO', 'CTU', '青岛流亭', '成都双流', null, null, null, '0', '2020-08-28 22:58:38');
INSERT INTO `airway` VALUES ('236', 'TAO', 'KMG', '青岛流亭', '昆明长水', null, null, null, '0', '2020-08-28 22:58:38');
INSERT INTO `airway` VALUES ('237', 'TAO', 'HGH', '青岛流亭', '杭州萧山', null, null, null, '0', '2020-08-28 22:58:38');
INSERT INTO `airway` VALUES ('238', 'TAO', 'SZX', '青岛流亭', '深圳宝安', null, null, null, '0', '2020-08-28 22:58:38');
INSERT INTO `airway` VALUES ('239', 'TAO', 'FOC', '青岛流亭', '福州长乐', null, null, null, '0', '2020-08-28 22:58:38');
INSERT INTO `airway` VALUES ('240', 'TAO', 'XIY', '青岛流亭', '西安咸阳', null, null, null, '0', '2020-08-28 22:58:38');
INSERT INTO `airway` VALUES ('241', 'TAO', 'CKG', '青岛流亭', '重庆江北', null, null, null, '0', '2020-08-28 22:58:38');
INSERT INTO `airway` VALUES ('242', 'TAO', 'CSX', '青岛流亭', '长沙黄花', null, null, null, '0', '2020-08-28 22:58:38');
