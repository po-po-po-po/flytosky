/*
Navicat MySQL Data Transfer

Source Server         : 49.232.228.221
Source Server Version : 50724
Source Host           : 49.232.228.221:3306
Source Database       : po_flysky

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2020-08-22 17:41:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for flight_kn
-- ----------------------------
DROP TABLE IF EXISTS `flight_kn`;
CREATE TABLE `flight_kn` (
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
) ENGINE=InnoDB AUTO_INCREMENT=8457 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flight_kn
-- ----------------------------
INSERT INTO `flight_kn` VALUES ('4409', 'KN2317', '乌兰浩特依勒力特', '上海虹桥T2', 'KN', '13:00-18:10', null, null, '', '2020-08-21 13:44:58', '0', '乌兰浩特依勒力特', '上海虹桥', null, 'HLH', 'SHA');
INSERT INTO `flight_kn` VALUES ('4434', 'KN5256', '昆明长水', '北京大兴', 'KN', '11:45-17:00', null, null, '', '2020-08-21 13:48:22', '0', '昆明长水', '北京大兴', null, 'KMG', 'PKX');
INSERT INTO `flight_kn` VALUES ('4501', 'KN5215', '北京大兴', '成都双流T2', 'KN', '07:20-10:20', null, null, '', '2020-08-21 13:52:19', '0', '北京大兴', '成都双流', null, 'PKX', 'CTU');
INSERT INTO `flight_kn` VALUES ('4503', 'KN5227', '北京大兴', '成都双流T2', 'KN', '15:30-18:45', null, null, '', '2020-08-21 13:52:20', '0', '北京大兴', '成都双流', null, 'PKX', 'CTU');
INSERT INTO `flight_kn` VALUES ('4504', 'KN5217', '北京大兴', '成都双流T2', 'KN', '16:30-21:10', null, null, '', '2020-08-21 13:52:20', '0', '北京大兴', '成都双流', null, 'PKX', 'CTU');
INSERT INTO `flight_kn` VALUES ('4506', 'KN5737', '北京大兴', '上海虹桥T2', 'KN', '08:05-10:10', null, null, '', '2020-08-21 13:52:30', '0', '北京大兴', '上海虹桥', null, 'PKX', 'SHA');
INSERT INTO `flight_kn` VALUES ('4508', 'KN5955', '北京大兴', '上海虹桥T2', 'KN', '14:55-17:20', null, null, '', '2020-08-21 13:52:30', '0', '北京大兴', '上海虹桥', null, 'PKX', 'SHA');
INSERT INTO `flight_kn` VALUES ('4510', 'KN5978', '上海浦东T1', '北京大兴', 'KN', '12:15-14:35', null, null, '', '2020-08-21 13:52:46', '0', '上海浦东', '北京大兴', null, 'PVG', 'PKX');
INSERT INTO `flight_kn` VALUES ('4512', 'KN5218', '成都双流T2', '北京大兴', 'KN', '11:35-16:25', null, null, '', '2020-08-21 13:55:06', '0', '成都双流', '北京大兴', null, 'CTU', 'PKX');
INSERT INTO `flight_kn` VALUES ('4514', 'KN5228', '成都双流T2', '北京大兴', 'KN', '19:55-22:25', null, null, '', '2020-08-21 13:55:07', '0', '成都双流', '北京大兴', null, 'CTU', 'PKX');
INSERT INTO `flight_kn` VALUES ('4515', 'KN5216', '成都双流T2', '北京大兴', 'KN', '22:15-00:50', null, null, '', '2020-08-21 13:55:07', '0', '成都双流', '北京大兴', null, 'CTU', 'PKX');
INSERT INTO `flight_kn` VALUES ('4525', 'KN5977', '北京大兴', '上海浦东T1', 'KN', '20:20-22:45', null, null, '', '2020-08-21 13:56:20', '0', '北京大兴', '上海浦东', null, 'PKX', 'PVG');
INSERT INTO `flight_kn` VALUES ('4596', 'KN2318', '上海虹桥T2', '乌兰浩特依勒力特', 'KN', '10:50-16:15', null, null, '', '2020-08-21 14:01:42', '0', '上海虹桥', '乌兰浩特依勒力特', null, 'SHA', 'HLH');
INSERT INTO `flight_kn` VALUES ('4653', 'KN5738', '上海虹桥T2', '北京大兴', 'KN', '11:15-13:30', null, null, '', '2020-08-21 14:08:22', '0', '上海虹桥', '北京大兴', null, 'SHA', 'PKX');
INSERT INTO `flight_kn` VALUES ('4654', 'KN5956', '上海虹桥T2', '北京大兴', 'KN', '18:30-21:05', null, null, '', '2020-08-21 14:08:22', '0', '上海虹桥', '北京大兴', null, 'SHA', 'PKX');
INSERT INTO `flight_kn` VALUES ('4657', 'KN2318', '上海虹桥T2', '石家庄正定T2', 'KN', '10:50-13:10', null, null, '', '2020-08-21 14:09:14', '0', '上海虹桥', '石家庄正定', null, 'SHA', 'SJW');
INSERT INTO `flight_kn` VALUES ('4693', 'KN2218', '上海虹桥T2', '天津滨海T2', 'KN', '19:25-21:40', null, null, '', '2020-08-21 14:10:41', '0', '上海虹桥', '天津滨海', null, 'SHA', 'TSN');
INSERT INTO `flight_kn` VALUES ('4747', 'KN2317', '石家庄正定T2', '上海虹桥T2', 'KN', '16:15-18:10', null, null, '', '2020-08-21 14:15:18', '0', '石家庄正定', '上海虹桥', null, 'SJW', 'SHA');
INSERT INTO `flight_kn` VALUES ('4833', 'KN2312', '包头东河', '上海浦东T1', 'KN', '11:45-14:20', null, null, '', '2020-08-21 15:15:04', '0', '包头东河', '上海浦东', null, 'BAV', 'PVG');
INSERT INTO `flight_kn` VALUES ('4836', 'KN5210', '毕节飞雄', '北京大兴', 'KN', '12:05-15:15', null, null, '', '2020-08-21 15:15:55', '0', '毕节飞雄', '北京大兴', null, 'BFJ', 'PKX');
INSERT INTO `flight_kn` VALUES ('4838', 'KN5255', '巴中恩阳', '昆明长水', 'KN', '18:30-20:35', null, null, '', '2020-08-21 15:21:21', '0', '巴中恩阳', '昆明长水', null, 'BZX', 'KMG');
INSERT INTO `flight_kn` VALUES ('4839', 'KN5256', '巴中恩阳', '北京大兴', 'KN', '14:30-17:00', null, null, '', '2020-08-21 15:21:36', '0', '巴中恩阳', '北京大兴', null, 'BZX', 'PKX');
INSERT INTO `flight_kn` VALUES ('4898', 'KN5898', '广州白云T1', '北京大兴', 'KN', '14:10-17:15', null, null, '', '2020-08-21 15:51:34', '0', '广州白云', '北京大兴', null, 'CAN', 'PKX');
INSERT INTO `flight_kn` VALUES ('4899', 'KN5830', '广州白云T1', '北京大兴', 'KN', '16:45-23:00', null, null, '', '2020-08-21 15:51:34', '0', '广州白云', '北京大兴', null, 'CAN', 'PKX');
INSERT INTO `flight_kn` VALUES ('4900', 'KN5900', '广州白云T1', '北京大兴', 'KN', '21:50-00:50', null, null, '', '2020-08-21 15:51:34', '0', '广州白云', '北京大兴', null, 'CAN', 'PKX');
INSERT INTO `flight_kn` VALUES ('4903', 'KN5830', '广州白云T1', '十堰武当山', 'KN', '16:45-19:10', null, null, '', '2020-08-21 15:52:52', '0', '广州白云', '十堰武当山', null, 'CAN', 'WDS');
INSERT INTO `flight_kn` VALUES ('4927', 'KN5530', '长春龙嘉', '北京大兴', 'KN', '11:50-13:50', null, null, '', '2020-08-21 16:04:19', '0', '长春龙嘉', '北京大兴', null, 'CGQ', 'PKX');
INSERT INTO `flight_kn` VALUES ('4937', 'KN2922', '赤峰玉龙', '北京大兴', 'KN', '09:30-10:50', null, null, '', '2020-08-21 16:06:14', '0', '赤峰玉龙', '北京大兴', null, 'CIF', 'PKX');
INSERT INTO `flight_kn` VALUES ('4938', 'KN2932', '赤峰玉龙', '北京大兴', 'KN', '19:40-21:00', null, null, '', '2020-08-21 16:06:14', '0', '赤峰玉龙', '北京大兴', null, 'CIF', 'PKX');
INSERT INTO `flight_kn` VALUES ('4940', 'KN2928', '长治王村', '北京大兴', 'KN', '20:40-22:05', null, null, '', '2020-08-21 16:07:11', '0', '长治王村', '北京大兴', null, 'CIH', 'PKX');
INSERT INTO `flight_kn` VALUES ('4968', 'KN2912', '长沙黄花T2', '北京大兴', 'KN', '17:20-21:50', null, null, '', '2020-08-21 16:28:04', '0', '长沙黄花', '北京大兴', null, 'CSX', 'PKX');
INSERT INTO `flight_kn` VALUES ('4979', 'KN5218', '成都双流T2', '鄂尔多斯伊金霍洛', 'KN', '11:35-13:50', null, null, '', '2020-08-21 16:31:52', '0', '成都双流', '鄂尔多斯伊金霍洛', null, 'CTU', 'DSN');
INSERT INTO `flight_kn` VALUES ('5064', 'KN2819', '鄂尔多斯伊金霍洛', '南京禄口', 'KN', '07:30-09:40', null, null, '', '2020-08-21 16:59:14', '0', '鄂尔多斯伊金霍洛', '南京禄口', null, 'DSN', 'NKG');
INSERT INTO `flight_kn` VALUES ('5073', 'KN5776', '福州长乐', '北京大兴', 'KN', '08:00-10:45', null, null, '', '2020-08-21 17:04:17', '0', '福州长乐', '北京大兴', null, 'FOC', 'PKX');
INSERT INTO `flight_kn` VALUES ('5081', 'KN5952', '佛山沙堤', '北京大兴', 'KN', '07:00-11:35', null, null, '', '2020-08-21 17:06:15', '0', '佛山沙堤', '北京大兴', null, 'FUO', 'PKX');
INSERT INTO `flight_kn` VALUES ('5082', 'KN5812', '佛山沙堤', '北京大兴', 'KN', '18:10-23:20', null, null, '', '2020-08-21 17:06:15', '0', '佛山沙堤', '北京大兴', null, 'FUO', 'PKX');
INSERT INTO `flight_kn` VALUES ('5101', 'KN2216', '呼和浩特白塔', '上海浦东T1', 'KN', '15:50-18:20', null, null, '', '2020-08-21 17:17:51', '0', '呼和浩特白塔', '上海浦东', null, 'HET', 'PVG');
INSERT INTO `flight_kn` VALUES ('5152', 'KN5702', '衡阳南岳', '北京大兴', 'KN', '13:30-16:15', null, null, '', '2020-08-21 17:43:36', '0', '衡阳南岳', '北京大兴', null, 'HNY', 'PKX');
INSERT INTO `flight_kn` VALUES ('5160', 'KN5506', '哈尔滨太平', '北京大兴', 'KN', '21:00-23:20', null, null, '', '2020-08-21 17:45:42', '0', '哈尔滨太平', '北京大兴', null, 'HRB', 'PKX');
INSERT INTO `flight_kn` VALUES ('5165', 'KN5925', '惠州平潭', '重庆江北T3', 'KN', '08:35-10:35', null, null, '', '2020-08-21 17:49:14', '0', '惠州平潭', '重庆江北', null, 'HUZ', 'CKG');
INSERT INTO `flight_kn` VALUES ('5166', 'KN5616', '惠州平潭', '北京大兴', 'KN', '07:15-11:40', null, null, '', '2020-08-21 17:49:45', '0', '惠州平潭', '北京大兴', null, 'HUZ', 'PKX');
INSERT INTO `flight_kn` VALUES ('5167', 'KN5887', '惠州平潭', '北京大兴', 'KN', '17:05-20:15', null, null, '', '2020-08-21 17:49:45', '0', '惠州平潭', '北京大兴', null, 'HUZ', 'PKX');
INSERT INTO `flight_kn` VALUES ('5178', 'KN5606', '庆阳西峰', '北京大兴', 'KN', '19:20-21:20', null, null, '', '2020-08-21 17:56:24', '0', '庆阳西峰', '北京大兴', null, 'IQN', 'PKX');
INSERT INTO `flight_kn` VALUES ('5198', 'KN5652', '金昌金川', '北京大兴', 'KN', '14:45-18:30', null, null, '', '2020-08-21 18:01:21', '0', '金昌金川', '北京大兴', null, 'JIC', 'PKX');
INSERT INTO `flight_kn` VALUES ('5213', 'KN2928', '南昌昌北T2', '北京大兴', 'KN', '18:15-22:05', null, null, '', '2020-08-21 18:14:56', '0', '南昌昌北', '北京大兴', null, 'KHN', 'PKX');
INSERT INTO `flight_kn` VALUES ('5348', 'KN2902', '吕梁大武', '北京大兴', 'KN', '09:45-11:10', null, null, '', '2020-08-21 18:48:40', '0', '吕梁大武', '北京大兴', null, 'LLV', 'PKX');
INSERT INTO `flight_kn` VALUES ('5349', 'KN2912', '吕梁大武', '北京大兴', 'KN', '20:25-21:50', null, null, '', '2020-08-21 18:48:43', '0', '吕梁大武', '北京大兴', null, 'LLV', 'PKX');
INSERT INTO `flight_kn` VALUES ('5378', 'KN5906', '连云港白塔埠', '北京大兴', 'KN', '17:20-19:00', null, null, '', '2020-08-21 18:54:39', '0', '连云港白塔埠', '北京大兴', null, 'LYG', 'PKX');
INSERT INTO `flight_kn` VALUES ('5381', 'KN5922', '临沂启阳', '北京大兴', 'KN', '16:40-18:10', null, null, '', '2020-08-21 18:55:40', '0', '临沂启阳', '北京大兴', null, 'LYI', 'PKX');
INSERT INTO `flight_kn` VALUES ('5406', 'KN5516', '长白山', '北京大兴', 'KN', '10:50-12:55', null, null, '', '2020-08-21 19:03:23', '0', '长白山', '北京大兴', null, 'NBS', 'PKX');
INSERT INTO `flight_kn` VALUES ('5420', 'KN5992', '宁波栎社', '北京大兴', 'KN', '15:15-17:35', null, null, '', '2020-08-21 19:05:18', '0', '宁波栎社', '北京大兴', null, 'NGB', 'PKX');
INSERT INTO `flight_kn` VALUES ('5430', 'KN5832', '珠海金湾', '北京大兴', 'KN', '13:25-16:40', null, null, '', '2020-08-21 19:06:04', '0', '珠海金湾', '北京大兴', null, 'ZUH', 'PKX');
INSERT INTO `flight_kn` VALUES ('5450', 'KN2820', '南京禄口', '鄂尔多斯伊金霍洛', 'KN', '10:40-13:10', null, null, '', '2020-08-21 19:10:06', '0', '南京禄口', '鄂尔多斯伊金霍洛', null, 'NKG', 'DSN');
INSERT INTO `flight_kn` VALUES ('5455', 'KN5806', '岳阳三荷', '北京大兴', 'KN', '15:30-17:40', null, null, '', '2020-08-21 19:11:44', '0', '岳阳三荷', '北京大兴', null, 'YYA', 'PKX');
INSERT INTO `flight_kn` VALUES ('5470', 'KN5916', '盐城南洋T2', '北京大兴', 'KN', '21:50-23:35', null, null, '', '2020-08-21 22:11:03', '0', '盐城南洋', '北京大兴', null, 'YNZ', 'PKX');
INSERT INTO `flight_kn` VALUES ('5491', 'KN5908', '义乌', '北京大兴', 'KN', '13:15-15:40', null, null, '', '2020-08-22 01:01:36', '0', '义乌', '北京大兴', null, 'YIW', 'PKX');
INSERT INTO `flight_kn` VALUES ('5524', 'KN5926', '重庆江北T3', '惠州平潭', 'KN', '11:50-14:10', null, null, '', '2020-08-22 08:54:21', '0', '重庆江北', '惠州平潭', null, 'CKG', 'HUZ');
INSERT INTO `flight_kn` VALUES ('5537', 'KN5518', '白城长安', '北京大兴', 'KN', '15:55-18:00', null, null, '', '2020-08-22 09:06:24', '0', '白城长安', '北京大兴', null, 'DBC', 'PKX');
INSERT INTO `flight_kn` VALUES ('5543', 'KN5302', '鄂尔多斯伊金霍洛', '北京大兴', 'KN', '08:15-09:50', null, null, '', '2020-08-22 09:08:33', '0', '鄂尔多斯伊金霍洛', '北京大兴', null, 'DSN', 'PKX');
INSERT INTO `flight_kn` VALUES ('5544', 'KN5310', '鄂尔多斯伊金霍洛', '北京大兴', 'KN', '10:05-11:40', null, null, '', '2020-08-22 09:08:34', '0', '鄂尔多斯伊金霍洛', '北京大兴', null, 'DSN', 'PKX');
INSERT INTO `flight_kn` VALUES ('5545', 'KN5218', '鄂尔多斯伊金霍洛', '北京大兴', 'KN', '14:50-16:25', null, null, '', '2020-08-22 09:08:34', '0', '鄂尔多斯伊金霍洛', '北京大兴', null, 'DSN', 'PKX');
INSERT INTO `flight_kn` VALUES ('5564', 'KN2976', '呼伦贝尔东山', '北京大兴', 'KN', '20:15-00:30', null, null, '', '2020-08-22 09:39:19', '0', '呼伦贝尔东山', '北京大兴', null, 'HLD', 'PKX');
INSERT INTO `flight_kn` VALUES ('5565', 'KN2315', '呼伦贝尔东山', '上海浦东T1', 'KN', '15:20-21:00', null, null, '', '2020-08-22 09:39:24', '0', '呼伦贝尔东山', '上海浦东', null, 'HLD', 'PVG');
INSERT INTO `flight_kn` VALUES ('5566', 'KN2957', '乌兰浩特依勒力特', '北京大兴', 'KN', '17:00-19:15', null, null, '', '2020-08-22 09:40:19', '0', '乌兰浩特依勒力特', '北京大兴', null, 'HLH', 'PKX');
INSERT INTO `flight_kn` VALUES ('5567', 'KN2976', '乌兰浩特依勒力特', '北京大兴', 'KN', '22:10-00:30', null, null, '', '2020-08-22 09:40:19', '0', '乌兰浩特依勒力特', '北京大兴', null, 'HLH', 'PKX');
INSERT INTO `flight_kn` VALUES ('5578', 'KN5620', '汉中城固', '北京大兴', 'KN', '20:50-23:00', null, null, '', '2020-08-22 09:42:43', '0', '汉中城固', '北京大兴', null, 'HZG', 'PKX');
INSERT INTO `flight_kn` VALUES ('5581', 'KN5968', '泉州晋江', '北京大兴', 'KN', '12:05-14:35', null, null, '', '2020-08-22 09:44:26', '0', '泉州晋江', '北京大兴', null, 'JJN', 'PKX');
INSERT INTO `flight_kn` VALUES ('5596', 'KN5256', '昆明长水', '巴中恩阳', 'KN', '11:45-13:45', null, null, '', '2020-08-22 09:58:34', '0', '昆明长水', '巴中恩阳', null, 'KMG', 'BZX');
INSERT INTO `flight_kn` VALUES ('5621', 'KN2382', '昆明长水', '南宁吴圩', 'KN', '21:40-23:15', null, null, '', '2020-08-22 10:00:23', '0', '昆明长水', '南宁吴圩', null, 'KMG', 'NNG');
INSERT INTO `flight_kn` VALUES ('5634', 'KN5918', '龙岩冠豸山', '北京大兴', 'KN', '15:00-18:00', null, null, '', '2020-08-22 10:03:58', '0', '龙岩冠豸山', '北京大兴', null, 'LCX', 'PKX');
INSERT INTO `flight_kn` VALUES ('5635', 'KN5520', '伊春林都', '北京大兴', 'KN', '10:20-12:50', null, null, '', '2020-08-22 10:04:59', '0', '伊春林都', '北京大兴', null, 'LDS', 'PKX');
INSERT INTO `flight_kn` VALUES ('5651', 'KN5606', '兰州中川', '北京大兴', 'KN', '17:20-21:20', null, null, '', '2020-08-22 10:07:27', '0', '兰州中川', '北京大兴', null, 'LHW', 'PKX');
INSERT INTO `flight_kn` VALUES ('5719', 'KN2936', '满洲里西郊', '北京大兴', 'KN', '10:25-12:55', null, null, '', '2020-08-22 12:05:33', '0', '满洲里西郊', '北京大兴', null, 'NZH', 'PKX');
INSERT INTO `flight_kn` VALUES ('5735', 'KN2381', '南宁吴圩', '昆明长水', 'KN', '08:55-10:40', null, null, '', '2020-08-22 12:12:35', '0', '南宁吴圩', '昆明长水', null, 'NNG', 'KMG');
INSERT INTO `flight_kn` VALUES ('5743', 'KN5728', '南宁吴圩', '上海浦东T1', 'KN', '19:35-22:30', null, null, '', '2020-08-22 12:13:01', '0', '南宁吴圩', '上海浦东', null, 'NNG', 'PVG');
INSERT INTO `flight_kn` VALUES ('5746', 'KN5760', '南阳姜营', '北京大兴', 'KN', '10:15-12:15', null, null, '', '2020-08-22 12:13:57', '0', '南阳姜营', '北京大兴', null, 'NNY', 'PKX');
INSERT INTO `flight_kn` VALUES ('5747', 'KN5836', '南阳姜营', '北京大兴', 'KN', '20:55-23:00', null, null, '', '2020-08-22 12:13:58', '0', '南阳姜营', '北京大兴', null, 'NNY', 'PKX');
INSERT INTO `flight_kn` VALUES ('5769', 'KN5928', '厦门高崎', '北京大兴', 'KN', '16:15-19:15', null, null, '', '2020-08-22 12:37:53', '0', '厦门高崎', '北京大兴', null, 'XMN', 'PKX');
INSERT INTO `flight_kn` VALUES ('5818', 'KN5209', '北京大兴', '毕节飞雄', 'KN', '08:15-11:20', null, null, '', '2020-08-22 12:47:35', '0', '北京大兴', '毕节飞雄', null, 'PKX', 'BFJ');
INSERT INTO `flight_kn` VALUES ('5823', 'KN5255', '北京大兴', '巴中恩阳', 'KN', '14:50-17:40', null, null, '', '2020-08-22 12:48:09', '0', '北京大兴', '巴中恩阳', null, 'PKX', 'BZX');
INSERT INTO `flight_kn` VALUES ('5824', 'KN5829', '北京大兴', '广州白云T1', 'KN', '07:30-13:00', null, null, '', '2020-08-22 12:48:15', '0', '北京大兴', '广州白云', null, 'PKX', 'CAN');
INSERT INTO `flight_kn` VALUES ('5826', 'KN5897', '北京大兴', '广州白云T1', 'KN', '12:15-15:40', null, null, '', '2020-08-22 12:48:16', '0', '北京大兴', '广州白云', null, 'PKX', 'CAN');
INSERT INTO `flight_kn` VALUES ('5827', 'KN5899', '北京大兴', '广州白云T1', 'KN', '17:05-20:40', null, null, '', '2020-08-22 12:48:16', '0', '北京大兴', '广州白云', null, 'PKX', 'CAN');
INSERT INTO `flight_kn` VALUES ('5831', 'KN5529', '北京大兴', '长春龙嘉', 'KN', '08:40-10:50', null, null, '', '2020-08-22 12:48:39', '0', '北京大兴', '长春龙嘉', null, 'PKX', 'CGQ');
INSERT INTO `flight_kn` VALUES ('5837', 'KN2927', '北京大兴', '长治王村', 'KN', '12:45-14:15', null, null, '', '2020-08-22 12:48:56', '0', '北京大兴', '长治王村', null, 'PKX', 'CIH');
INSERT INTO `flight_kn` VALUES ('5849', 'KN2911', '北京大兴', '长沙黄花T2', 'KN', '11:40-16:20', null, null, '', '2020-08-22 12:49:14', '0', '北京大兴', '长沙黄花', null, 'PKX', 'CSX');
INSERT INTO `flight_kn` VALUES ('5851', 'KN5517', '北京大兴', '白城长安', 'KN', '13:15-15:10', null, null, '', '2020-08-22 12:49:37', '0', '北京大兴', '白城长安', null, 'PKX', 'DBC');
INSERT INTO `flight_kn` VALUES ('5858', 'KN5309', '北京大兴', '鄂尔多斯伊金霍洛', 'KN', '07:40-09:20', null, null, '', '2020-08-22 12:56:22', '0', '北京大兴', '鄂尔多斯伊金霍洛', null, 'PKX', 'DSN');
INSERT INTO `flight_kn` VALUES ('5860', 'KN5217', '北京大兴', '鄂尔多斯伊金霍洛', 'KN', '16:30-18:10', null, null, '', '2020-08-22 12:56:22', '0', '北京大兴', '鄂尔多斯伊金霍洛', null, 'PKX', 'DSN');
INSERT INTO `flight_kn` VALUES ('5862', 'KN5301', '北京大兴', '鄂尔多斯伊金霍洛', 'KN', '19:45-21:30', null, null, '', '2020-08-22 12:56:23', '0', '北京大兴', '鄂尔多斯伊金霍洛', null, 'PKX', 'DSN');
INSERT INTO `flight_kn` VALUES ('5865', 'KN5775', '北京大兴', '福州长乐', 'KN', '20:30-23:25', null, null, '', '2020-08-22 12:56:52', '0', '北京大兴', '福州长乐', null, 'PKX', 'FOC');
INSERT INTO `flight_kn` VALUES ('5866', 'KN5811', '北京大兴', '佛山沙堤', 'KN', '18:15-23:20', null, null, '', '2020-08-22 12:57:03', '0', '北京大兴', '佛山沙堤', null, 'PKX', 'FUO');
INSERT INTO `flight_kn` VALUES ('5867', 'KN5951', '北京大兴', '佛山沙堤', 'KN', '19:05-23:45', null, null, '', '2020-08-22 12:57:04', '0', '北京大兴', '佛山沙堤', null, 'PKX', 'FUO');
INSERT INTO `flight_kn` VALUES ('5879', 'KN2975', '北京大兴', '呼伦贝尔东山', 'KN', '13:55-18:40', null, null, '', '2020-08-22 12:58:44', '0', '北京大兴', '呼伦贝尔东山', null, 'PKX', 'HLD');
INSERT INTO `flight_kn` VALUES ('5880', 'KN2958', '北京大兴', '乌兰浩特依勒力特', 'KN', '10:00-12:10', null, null, '', '2020-08-22 12:58:55', '0', '北京大兴', '乌兰浩特依勒力特', null, 'PKX', 'HLH');
INSERT INTO `flight_kn` VALUES ('5882', 'KN2975', '北京大兴', '乌兰浩特依勒力特', 'KN', '13:55-16:15', null, null, '', '2020-08-22 12:59:00', '0', '北京大兴', '乌兰浩特依勒力特', null, 'PKX', 'HLH');
INSERT INTO `flight_kn` VALUES ('5884', 'KN5701', '北京大兴', '衡阳南岳', 'KN', '09:40-12:40', null, null, '', '2020-08-22 12:59:18', '0', '北京大兴', '衡阳南岳', null, 'PKX', 'HNY');
INSERT INTO `flight_kn` VALUES ('5886', 'KN5505', '北京大兴', '哈尔滨太平', 'KN', '18:00-20:00', null, null, '', '2020-08-22 12:59:30', '0', '北京大兴', '哈尔滨太平', null, 'PKX', 'HRB');
INSERT INTO `flight_kn` VALUES ('5889', 'KN5615', '北京大兴', '惠州平潭', 'KN', '10:35-15:50', null, null, '', '2020-08-22 12:59:52', '0', '北京大兴', '惠州平潭', null, 'PKX', 'HUZ');
INSERT INTO `flight_kn` VALUES ('5891', 'KN5888', '北京大兴', '惠州平潭', 'KN', '19:00-22:15', null, null, '', '2020-08-22 12:59:53', '0', '北京大兴', '惠州平潭', null, 'PKX', 'HUZ');
INSERT INTO `flight_kn` VALUES ('5894', 'KN5619', '北京大兴', '汉中城固', 'KN', '16:45-19:10', null, null, '', '2020-08-22 13:00:10', '0', '北京大兴', '汉中城固', null, 'PKX', 'HZG');
INSERT INTO `flight_kn` VALUES ('5898', 'KN5605', '北京大兴', '庆阳西峰', 'KN', '11:35-13:55', null, null, '', '2020-08-22 13:00:34', '0', '北京大兴', '庆阳西峰', null, 'PKX', 'IQN');
INSERT INTO `flight_kn` VALUES ('5901', 'KN5967', '北京大兴', '泉州晋江', 'KN', '08:20-11:20', null, null, '', '2020-08-22 13:01:18', '0', '北京大兴', '泉州晋江', null, 'PKX', 'JJN');
INSERT INTO `flight_kn` VALUES ('5908', 'KN2927', '北京大兴', '南昌昌北T2', 'KN', '12:45-17:25', null, null, '', '2020-08-22 13:02:25', '0', '北京大兴', '南昌昌北', null, 'PKX', 'KHN');
INSERT INTO `flight_kn` VALUES ('5914', 'KN5917', '北京大兴', '龙岩冠豸山', 'KN', '10:55-14:00', null, null, '', '2020-08-22 13:03:26', '0', '北京大兴', '龙岩冠豸山', null, 'PKX', 'LCX');
INSERT INTO `flight_kn` VALUES ('5915', 'KN5519', '北京大兴', '伊春林都', 'KN', '06:50-09:35', null, null, '', '2020-08-22 13:03:32', '0', '北京大兴', '伊春林都', null, 'PKX', 'LDS');
INSERT INTO `flight_kn` VALUES ('5921', 'KN5605', '北京大兴', '兰州中川', 'KN', '11:35-16:20', null, null, '', '2020-08-22 13:20:48', '0', '北京大兴', '兰州中川', null, 'PKX', 'LHW');
INSERT INTO `flight_kn` VALUES ('5929', 'KN2901', '北京大兴', '吕梁大武', 'KN', '07:25-09:00', null, null, '', '2020-08-22 13:21:12', '0', '北京大兴', '吕梁大武', null, 'PKX', 'LLV');
INSERT INTO `flight_kn` VALUES ('5930', 'KN2911', '北京大兴', '吕梁大武', 'KN', '11:40-13:25', null, null, '', '2020-08-22 13:21:12', '0', '北京大兴', '吕梁大武', null, 'PKX', 'LLV');
INSERT INTO `flight_kn` VALUES ('5934', 'KN5905', '北京大兴', '连云港白塔埠', 'KN', '14:40-16:30', null, null, '', '2020-08-22 13:21:48', '0', '北京大兴', '连云港白塔埠', null, 'PKX', 'LYG');
INSERT INTO `flight_kn` VALUES ('5935', 'KN5921', '北京大兴', '临沂启阳', 'KN', '14:15-15:50', null, null, '', '2020-08-22 13:21:54', '0', '北京大兴', '临沂启阳', null, 'PKX', 'LYI');
INSERT INTO `flight_kn` VALUES ('5942', 'KN5515', '北京大兴', '长白山', 'KN', '08:00-10:05', null, null, '', '2020-08-22 13:22:39', '0', '北京大兴', '长白山', null, 'PKX', 'NBS');
INSERT INTO `flight_kn` VALUES ('5945', 'KN5991', '北京大兴', '宁波栎社', 'KN', '11:55-14:25', null, null, '', '2020-08-22 13:22:51', '0', '北京大兴', '宁波栎社', null, 'PKX', 'NGB');
INSERT INTO `flight_kn` VALUES ('5958', 'KN5759', '北京大兴', '南阳姜营', 'KN', '06:40-09:00', null, null, '', '2020-08-22 13:23:22', '0', '北京大兴', '南阳姜营', null, 'PKX', 'NNY');
INSERT INTO `flight_kn` VALUES ('5959', 'KN5835', '北京大兴', '南阳姜营', 'KN', '18:00-20:00', null, null, '', '2020-08-22 13:23:23', '0', '北京大兴', '南阳姜营', null, 'PKX', 'NNY');
INSERT INTO `flight_kn` VALUES ('5961', 'KN2935', '北京大兴', '满洲里西郊', 'KN', '06:55-09:35', null, null, '', '2020-08-22 13:23:34', '0', '北京大兴', '满洲里西郊', null, 'PKX', 'NZH');
INSERT INTO `flight_kn` VALUES ('5964', 'KN2967', '北京大兴', '巴彦淖尔天吉泰', 'KN', '17:50-20:10', null, null, '', '2020-08-22 13:24:13', '0', '北京大兴', '巴彦淖尔天吉泰', null, 'PKX', 'RLK');
INSERT INTO `flight_kn` VALUES ('5980', 'KN5951', '北京大兴', '上饶三清山', 'KN', '19:05-21:25', null, null, '', '2020-08-22 13:28:19', '0', '北京大兴', '上饶三清山', null, 'PKX', 'SQD');
INSERT INTO `flight_kn` VALUES ('5981', 'KN5757', '北京大兴', '三明沙县', 'KN', '09:15-11:55', null, null, '', '2020-08-22 13:28:25', '0', '北京大兴', '三明沙县', null, 'PKX', 'SQJ');
INSERT INTO `flight_kn` VALUES ('5982', 'KN2966', '锡林浩特', '北京大兴', 'KN', '22:35-00:15', null, null, '', '2020-08-22 13:28:35', '0', '锡林浩特', '北京大兴', null, 'XIL', 'PKX');
INSERT INTO `flight_kn` VALUES ('5983', 'KN5855', '北京大兴', '深圳宝安T3', 'KN', '07:00-10:30', null, null, '', '2020-08-22 13:28:47', '0', '北京大兴', '深圳宝安', null, 'PKX', 'SZX');
INSERT INTO `flight_kn` VALUES ('5984', 'KN5911', '北京大兴', '深圳宝安T3', 'KN', '13:50-17:30', null, null, '', '2020-08-22 13:28:47', '0', '北京大兴', '深圳宝安', null, 'PKX', 'SZX');
INSERT INTO `flight_kn` VALUES ('5991', 'KN5817', '北京大兴', '铜仁凤凰', 'KN', '09:40-12:50', null, null, '', '2020-08-22 13:29:11', '0', '北京大兴', '铜仁凤凰', null, 'PKX', 'TEN');
INSERT INTO `flight_kn` VALUES ('5992', 'KN2917', '北京大兴', '通辽', 'KN', '08:30-10:10', null, null, '', '2020-08-22 13:29:17', '0', '北京大兴', '通辽', null, 'PKX', 'TGO');
INSERT INTO `flight_kn` VALUES ('5996', 'KN5651', '北京大兴', '榆林榆阳', 'KN', '10:10-11:50', null, null, '', '2020-08-22 13:30:17', '0', '北京大兴', '榆林榆阳', null, 'PKX', 'UYN');
INSERT INTO `flight_kn` VALUES ('5997', 'KN5667', '北京大兴', '榆林榆阳', 'KN', '16:50-18:40', null, null, '', '2020-08-22 13:30:17', '0', '北京大兴', '榆林榆阳', null, 'PKX', 'UYN');
INSERT INTO `flight_kn` VALUES ('5998', 'KN5665', '北京大兴', '榆林榆阳', 'KN', '21:20-23:00', null, null, '', '2020-08-22 13:30:17', '0', '北京大兴', '榆林榆阳', null, 'PKX', 'UYN');
INSERT INTO `flight_kn` VALUES ('5999', 'KN5829', '北京大兴', '十堰武当山', 'KN', '07:30-09:50', null, null, '', '2020-08-22 13:30:23', '0', '北京大兴', '十堰武当山', null, 'PKX', 'WDS');
INSERT INTO `flight_kn` VALUES ('6000', 'KN2225', '北京大兴', '威海大水泊', 'KN', '15:40-17:10', null, null, '', '2020-08-22 13:30:34', '0', '北京大兴', '威海大水泊', null, 'PKX', 'WEH');
INSERT INTO `flight_kn` VALUES ('6003', 'KN5957', '北京大兴', '温州龙湾', 'KN', '19:05-21:30', null, null, '', '2020-08-22 13:31:00', '0', '北京大兴', '温州龙湾', null, 'PKX', 'WNZ');
INSERT INTO `flight_kn` VALUES ('6011', 'KN5731', '北京大兴', '梧州西江', 'KN', '09:00-12:20', null, null, '', '2020-08-22 13:31:36', '0', '北京大兴', '梧州西江', null, 'PKX', 'WUZ');
INSERT INTO `flight_kn` VALUES ('6012', 'KN5615', '北京大兴', '信阳明港', 'KN', '10:35-12:50', null, null, '', '2020-08-22 13:31:47', '0', '北京大兴', '信阳明港', null, 'PKX', 'XAI');
INSERT INTO `flight_kn` VALUES ('6014', 'KN5811', '北京大兴', '襄阳刘集', 'KN', '18:15-20:20', null, null, '', '2020-08-22 13:31:52', '0', '北京大兴', '襄阳刘集', null, 'PKX', 'XFN');
INSERT INTO `flight_kn` VALUES ('6017', 'KN2965', '北京大兴', '锡林浩特', 'KN', '19:40-21:25', null, null, '', '2020-08-22 13:32:03', '0', '北京大兴', '锡林浩特', null, 'PKX', 'XIL');
INSERT INTO `flight_kn` VALUES ('6019', 'KN5927', '北京大兴', '厦门高崎', 'KN', '11:50-15:05', null, null, '', '2020-08-22 13:32:15', '0', '北京大兴', '厦门高崎', null, 'PKX', 'XMN');
INSERT INTO `flight_kn` VALUES ('6022', 'KN5907', '北京大兴', '义乌', 'KN', '10:15-12:30', null, null, '', '2020-08-22 13:33:10', '0', '北京大兴', '义乌', null, 'PKX', 'YIW');
INSERT INTO `flight_kn` VALUES ('6024', 'KN5969', '北京大兴', '烟台蓬莱', 'KN', '10:00-11:30', null, null, '', '2020-08-22 13:33:26', '0', '北京大兴', '烟台蓬莱', null, 'PKX', 'YNT');
INSERT INTO `flight_kn` VALUES ('6026', 'KN5915', '北京大兴', '盐城南洋T2', 'KN', '19:15-21:05', null, null, '', '2020-08-22 13:33:33', '0', '北京大兴', '盐城南洋', null, 'PKX', 'YNZ');
INSERT INTO `flight_kn` VALUES ('6027', 'KN5812', '襄阳刘集', '北京大兴', 'KN', '21:20-23:20', null, null, '', '2020-08-22 14:02:46', '0', '襄阳刘集', '北京大兴', null, 'XFN', 'PKX');
INSERT INTO `flight_kn` VALUES ('6043', 'KN5831', '北京大兴', '珠海金湾', 'KN', '08:50-12:25', null, null, '', '2020-08-22 14:04:44', '0', '北京大兴', '珠海金湾', null, 'PKX', 'ZUH');
INSERT INTO `flight_kn` VALUES ('6048', 'KN2311', '上海浦东T1', '包头东河', 'KN', '08:00-11:00', null, null, '', '2020-08-22 14:05:44', '0', '上海浦东', '包头东河', null, 'PVG', 'BAV');
INSERT INTO `flight_kn` VALUES ('6135', 'KN2215', '上海浦东T1', '呼和浩特白塔', 'KN', '11:45-14:50', null, null, '', '2020-08-22 14:12:44', '0', '上海浦东', '呼和浩特白塔', null, 'PVG', 'HET');
INSERT INTO `flight_kn` VALUES ('6139', 'KN2316', '上海浦东T1', '呼伦贝尔东山', 'KN', '09:00-14:30', null, null, '', '2020-08-22 14:13:13', '0', '上海浦东', '呼伦贝尔东山', null, 'PVG', 'HLD');
INSERT INTO `flight_kn` VALUES ('6157', 'KN2226', '威海大水泊', '北京大兴', 'KN', '18:10-20:00', null, null, '', '2020-08-22 14:15:08', '0', '威海大水泊', '北京大兴', null, 'WEH', 'PKX');
INSERT INTO `flight_kn` VALUES ('6181', 'KN5830', '十堰武当山', '北京大兴', 'KN', '20:40-23:00', null, null, '', '2020-08-22 14:17:09', '0', '十堰武当山', '北京大兴', null, 'WDS', 'PKX');
INSERT INTO `flight_kn` VALUES ('6187', 'KN5829', '十堰武当山', '广州白云T1', 'KN', '10:35-13:00', null, null, '', '2020-08-22 14:17:48', '0', '十堰武当山', '广州白云', null, 'WDS', 'CAN');
INSERT INTO `flight_kn` VALUES ('6199', 'KN5666', '榆林榆阳', '北京大兴', 'KN', '08:00-09:30', null, null, '', '2020-08-22 14:18:14', '0', '榆林榆阳', '北京大兴', null, 'UYN', 'PKX');
INSERT INTO `flight_kn` VALUES ('6200', 'KN5652', '榆林榆阳', '北京大兴', 'KN', '17:00-18:30', null, null, '', '2020-08-22 14:18:15', '0', '榆林榆阳', '北京大兴', null, 'UYN', 'PKX');
INSERT INTO `flight_kn` VALUES ('6201', 'KN5668', '榆林榆阳', '北京大兴', 'KN', '19:40-21:20', null, null, '', '2020-08-22 14:18:15', '0', '榆林榆阳', '北京大兴', null, 'UYN', 'PKX');
INSERT INTO `flight_kn` VALUES ('6231', 'KN5727', '上海浦东T1', '南宁吴圩', 'KN', '15:30-18:35', null, null, '', '2020-08-22 14:23:48', '0', '上海浦东', '南宁吴圩', null, 'PVG', 'NNG');
INSERT INTO `flight_kn` VALUES ('6258', 'KN2316', '上海浦东T1', '石家庄正定T2', 'KN', '09:00-11:10', null, null, '', '2020-08-22 14:25:07', '0', '上海浦东', '石家庄正定', null, 'PVG', 'SJW');
INSERT INTO `flight_kn` VALUES ('6260', 'KN2356', '上海浦东T1', '石家庄正定T2', 'KN', '19:40-21:45', null, null, '', '2020-08-22 14:25:07', '0', '上海浦东', '石家庄正定', null, 'PVG', 'SJW');
INSERT INTO `flight_kn` VALUES ('6342', 'KN2918', '通辽', '北京大兴', 'KN', '11:00-12:40', null, null, '', '2020-08-22 14:35:26', '0', '通辽', '北京大兴', null, 'TGO', 'PKX');
INSERT INTO `flight_kn` VALUES ('6345', 'KN5818', '铜仁凤凰', '北京大兴', 'KN', '13:50-16:30', null, null, '', '2020-08-22 14:36:25', '0', '铜仁凤凰', '北京大兴', null, 'TEN', 'PKX');
INSERT INTO `flight_kn` VALUES ('6391', 'KN2355', '石家庄正定T2', '上海浦东T1', 'KN', '09:00-10:55', null, null, '', '2020-08-22 14:44:49', '0', '石家庄正定', '上海浦东', null, 'SJW', 'PVG');
INSERT INTO `flight_kn` VALUES ('6394', 'KN2315', '石家庄正定T2', '上海浦东T1', 'KN', '19:05-21:00', null, null, '', '2020-08-22 14:44:50', '0', '石家庄正定', '上海浦东', null, 'SJW', 'PVG');
INSERT INTO `flight_kn` VALUES ('6398', 'KN5952', '上饶三清山', '北京大兴', 'KN', '09:15-11:35', null, null, '', '2020-08-22 14:45:46', '0', '上饶三清山', '北京大兴', null, 'SQD', 'PKX');
INSERT INTO `flight_kn` VALUES ('6416', 'KN5868', '深圳宝安T3', '北京大兴', 'KN', '11:40-14:55', null, null, '', '2020-08-22 14:56:22', '0', '深圳宝安', '北京大兴', null, 'SZX', 'PKX');
INSERT INTO `flight_kn` VALUES ('6417', 'KN5912', '深圳宝安T3', '北京大兴', 'KN', '18:35-22:00', null, null, '', '2020-08-22 14:56:22', '0', '深圳宝安', '北京大兴', null, 'SZX', 'PKX');
INSERT INTO `flight_kn` VALUES ('8449', 'KN5970', '烟台蓬莱', '北京大兴', 'KN', '12:30-13:55', null, null, '', '2020-08-22 15:59:47', '0', '烟台蓬莱', '北京大兴', null, 'YNT', 'PKX');
INSERT INTO `flight_kn` VALUES ('8450', 'KN5758', '三明沙县', '北京大兴', 'KN', '12:50-15:30', null, null, '', '2020-08-22 16:05:02', '0', '三明沙县', '北京大兴', null, 'SQJ', 'PKX');
INSERT INTO `flight_kn` VALUES ('8451', 'KN5732', '梧州西江', '北京大兴', 'KN', '13:05-15:55', null, null, '', '2020-08-22 16:01:40', '0', '梧州西江', '北京大兴', null, 'WUZ', 'PKX');
INSERT INTO `flight_kn` VALUES ('8452', 'KN2968', '巴彦淖尔天吉泰', '北京大兴', 'KN', '21:20-23:15', null, null, '', '2020-08-22 16:05:43', '0', '巴彦淖尔天吉泰', '北京大兴', null, 'RLK', 'PKX');
INSERT INTO `flight_kn` VALUES ('8453', 'KN2921', '北京大兴', '赤峰玉龙', 'KN', '07:20-08:45', null, null, '', '2020-08-22 16:35:38', '0', '北京大兴', '赤峰玉龙', null, 'PKX', 'CIF');
INSERT INTO `flight_kn` VALUES ('8454', 'KN5651', '北京大兴', '金昌金川', 'KN', '10:10-14:00', null, null, '', '2020-08-22 16:27:30', '0', '北京大兴', '金昌金川', null, 'PKX', 'JIC');
INSERT INTO `flight_kn` VALUES ('8455', 'KN5805', '北京大兴', '岳阳三荷', 'KN', '12:20-14:40', null, null, '', '2020-08-22 16:10:36', '0', '北京大兴', '岳阳三荷', null, 'PKX', 'YYA');
INSERT INTO `flight_kn` VALUES ('8456', 'KN2931', '北京大兴', '赤峰玉龙', 'KN', '17:30-18:50', null, null, '', '2020-08-22 16:35:39', '0', '北京大兴', '赤峰玉龙', null, 'PKX', 'CIF');
