/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : fly

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-08-28 17:46:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for airport_code
-- ----------------------------
DROP TABLE IF EXISTS `airport_code`;
CREATE TABLE `airport_code` (
  `id` int(11) DEFAULT NULL,
  `dept_code` varchar(255) DEFAULT NULL,
  `arr_code` varchar(255) DEFAULT NULL,
  `dept_name` varchar(255) DEFAULT NULL,
  `arr_name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `describle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of airport_code
-- ----------------------------
INSERT INTO `airport_code` VALUES ('1', 'bjs', 'can', '北京', '广州', '1', '2020-08-27 14:22:12', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('2', 'can', 'bjs', '广州', '北京', '1', '2020-08-27 14:39:15', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('3', 'can', 'hgh', '广州', '杭州', '1', '2020-08-27 14:47:39', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('4', 'hgh', 'can', '杭州', '广州', '1', '2020-08-27 14:49:23', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('5', 'bjs', 'hgh', '北京', '杭州', '1', '2020-08-27 14:51:09', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('6', 'hgh', 'bjs', '杭州', '北京', '1', '2020-08-27 14:51:55', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('7', 'sha', 'bjs', '上海', '北京', '1', '2020-08-27 15:17:13', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('8', 'bjs', 'sha', '北京', '上海', '1', '2020-08-27 15:20:13', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('9', 'can', 'sha', '广州', '上海', '1', '2020-08-27 15:23:42', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('10', 'sha', 'can', '上海', '广州', '1', '2020-08-27 15:25:11', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('11', 'bjs', 'ctu', '北京', '成都', '1', '2020-08-27 15:31:41', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('12', 'ctu', 'bjs', '成都', '北京', '1', '2020-08-27 15:33:28', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('13', 'ctu', 'can', '成都', '广州', '1', '2020-08-27 15:36:12', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('14', 'can', 'ctu', '广州', '成都', '1', '2020-08-27 15:37:10', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('15', 'ctu', 'sha', '成都', '上海', '1', '2020-08-27 15:50:31', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('16', 'sha', 'ctu', '上海', '成都', '1', '2020-08-27 15:53:26', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('17', 'hgh', 'ctu', '杭州', '成都', '1', '2020-08-27 15:56:53', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('18', 'ctu', 'hgh', '成都', '杭州', '1', '2020-08-27 15:58:23', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('19', 'bjs', 'szx', '北京', '深圳', '1', '2020-08-27 16:10:59', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('20', 'szx', 'bjs', '深圳', '北京', '1', '2020-08-27 16:12:15', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('21', 'sha', 'szx', '上海', '深圳', '1', '2020-08-27 16:18:35', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('22', 'szx', 'sha', '深圳', '上海', '1', '2020-08-27 16:20:11', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('23', 'hgh', 'szx', '杭州', '深圳', '1', '2020-08-27 16:22:41', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('24', 'szx', 'hgh', '深圳', '杭州', '1', '2020-08-27 16:24:39', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('25', 'szx', 'ctu', '深圳', '成都', '1', '2020-08-27 16:29:10', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('26', 'ctu', 'szx', '成都', '深圳', '1', '2020-08-27 16:30:10', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('27', 'bjs', 'kmg', '北京', '昆明', '1', '2020-08-27 16:44:24', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('28', 'kmg', 'bjs', '昆明', '北京', '1', '2020-08-27 16:45:24', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('29', 'sha', 'kmg', '上海', '昆明', '1', '2020-08-27 17:26:26', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('30', 'kmg', 'sha', '昆明', '上海', '1', '2020-08-27 17:28:10', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('31', 'can', 'kmg', '广州', '昆明', '1', '2020-08-27 17:29:38', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('32', 'kmg', 'can', '昆明', '广州', '1', '2020-08-27 17:30:53', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('33', 'kmg', 'szx', '昆明', '深圳', '1', '2020-08-27 17:32:53', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('34', 'szx', 'kmg', '深圳', '昆明', '1', '2020-08-27 17:34:08', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('35', 'kmg', 'ctu', '昆明', '成都', '1', '2020-08-27 17:35:38', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('36', 'ctu', 'kmg', '成都', '昆明', '1', '2020-08-27 17:36:23', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('37', 'kmg', 'hgh', '昆明', '杭州', '1', '2020-08-27 17:39:07', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('38', 'hgh', 'kmg', '杭州', '昆明', '1', '2020-08-27 17:37:53', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('39', 'bjs', 'sia', '北京', '西安', '1', '2020-08-27 17:41:44', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('40', 'sia', 'bjs', '西安', '北京', '1', '2020-08-27 17:42:53', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('41', 'sha', 'sia', '上海', '西安', '1', '2020-08-27 17:45:23', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('42', 'sia', 'sha', '西安', '上海', '1', '2020-08-27 17:44:23', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('43', 'can', 'sia', '广州', '西安', '1', '2020-08-27 17:46:53', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('44', 'sia', 'can', '西安', '广州', '1', '2020-08-27 17:48:08', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('45', 'sia', 'szx', '西安', '深圳', '1', '2020-08-27 17:50:23', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('46', 'szx', 'sia', '深圳', '西安', '1', '2020-08-27 17:51:23', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('47', 'ctu', 'sia', '成都', '西安', '1', '2020-08-27 17:53:26', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('48', 'sia', 'ctu', '西安', '成都', '1', '2020-08-27 17:54:21', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('49', 'sia', 'kmg', '西安', '昆明', '1', '2020-08-27 17:55:52', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('50', 'kmg', 'sia', '昆明', '西安', '1', '2020-08-27 17:56:37', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('51', 'sia', 'hgh', '西安', '杭州', '1', '2020-08-27 18:02:07', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('52', 'hgh', 'sia', '杭州', '西安', '1', '2020-08-27 18:00:38', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('53', 'sia', 'ckg', '西安', '重庆', '1', '2020-08-27 18:06:36', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('54', 'ckg', 'sia', '重庆', '西安', '1', '2020-08-27 18:07:37', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('55', 'ckg', 'hgh', '重庆', '杭州', '1', '2020-08-27 18:14:12', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('56', 'hgh', 'ckg', '杭州', '重庆', '1', '2020-08-27 18:15:24', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('57', 'ckg', 'kmg', '重庆', '昆明', '1', '2020-08-27 18:17:22', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('58', 'kmg', 'ckg', '昆明', '重庆', '1', '2020-08-27 18:18:22', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('59', 'ckg', 'bjs', '重庆', '北京', '1', '2020-08-27 18:20:40', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('60', 'bjs', 'ckg', '北京', '重庆', '1', '2020-08-27 18:20:10', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('61', 'ckg', 'sha', '重庆', '上海', '1', '2020-08-27 18:23:40', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('62', 'sha', 'ckg', '上海', '重庆', '1', '2020-08-27 18:22:25', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('63', 'ckg', 'szx', '重庆', '深圳', '1', '2020-08-27 18:25:25', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('64', 'szx', 'ckg', '深圳', '重庆', '1', '2020-08-27 18:25:55', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('65', 'ckg', 'can', '重庆', '广州', '1', '2020-08-27 18:27:09', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('66', 'can', 'ckg', '广州', '重庆', '1', '2020-08-27 18:28:08', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('67', 'tao', 'bjs', '青岛', '北京', '1', '2020-08-28 11:11:24', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('68', 'bjs', 'tao', '北京', '青岛', '1', '2020-08-28 11:12:53', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('69', 'sha', 'tao', '上海', '青岛', '1', '2020-08-28 11:14:09', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('70', 'tao', 'sha', '青岛', '上海', '1', '2020-08-28 11:15:25', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('71', 'tao', 'can', '青岛', '广州', '1', '2020-08-28 11:17:38', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('72', 'can', 'tao', '广州', '青岛', '1', '2020-08-28 11:19:22', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('73', 'szx', 'tao', '深圳', '青岛', '1', '2020-08-28 11:27:53', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('74', 'tao', 'szx', '青岛', '深圳', '1', '2020-08-28 11:29:08', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('75', 'ctu', 'tao', '成都', '青岛', '1', '2020-08-28 11:34:23', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('76', 'tao', 'ctu', '青岛', '成都', '1', '2020-08-28 11:32:21', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('77', 'ckg', 'tao', '重庆', '青岛', '1', '2020-08-28 11:35:27', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('78', 'tao', 'ckg', '青岛', '重庆', '1', '2020-08-28 11:36:22', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('79', 'tao', 'kmg', '青岛', '昆明', '1', '2020-08-28 11:41:22', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('80', 'kmg', 'tao', '昆明', '青岛', '1', '2020-08-28 11:43:51', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('81', 'tao', 'sia', '青岛', '西安', '1', '2020-08-28 11:46:52', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('82', 'sia', 'tao', '西安', '青岛', '1', '2020-08-28 11:46:07', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('83', 'tao', 'hgh', '青岛', '杭州', '1', '2020-08-28 11:47:52', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('84', 'hgh', 'tao', '杭州', '青岛', '1', '2020-08-28 11:48:52', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('85', 'nkg', 'bjs', '南京', '北京', '1', '2020-08-28 13:34:22', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('86', 'bjs', 'nkg', '北京', '南京', '1', '2020-08-28 13:35:22', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('87', 'nkg', 'can', '南京', '广州', '1', '2020-08-28 13:36:54', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('88', 'can', 'nkg', '广州', '南京', '1', '2020-08-28 13:37:54', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('89', 'szx', 'nkg', '深圳', '南京', '1', '2020-08-28 13:39:10', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('90', 'nkg', 'szx', '南京', '深圳', '1', '2020-08-28 13:39:53', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('91', 'nkg', 'kmg', '南京', '昆明', '1', '2020-08-28 14:14:37', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('92', 'kmg', 'nkg', '昆明', '南京', '1', '2020-08-28 14:12:54', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('93', 'nkg', 'ctu', '南京', '成都', '1', '2020-08-28 14:16:23', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('94', 'ctu', 'nkg', '成都', '南京', '1', '2020-08-28 14:17:07', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('95', 'ckg', 'nkg', '重庆', '南京', '1', '2020-08-28 14:18:38', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('96', 'nkg', 'ckg', '南京', '重庆', '1', '2020-08-28 14:19:23', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('97', 'nkg', 'sia', '南京', '西安', '1', '2020-08-28 14:21:14', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('98', 'sia', 'nkg', '西安', '南京', '1', '2020-08-28 14:21:53', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('99', 'nkg', 'tao', '南京', '青岛', '1', '2020-08-28 14:24:07', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('100', 'tao', 'nkg', '青岛', '南京', '1', '2020-08-28 14:22:36', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('101', 'csx', 'bjs', '长沙', '北京', '1', '2020-08-28 14:39:23', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('102', 'bjs', 'csx', '北京', '长沙', '1', '2020-08-28 14:40:23', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('103', 'sha', 'csx', '上海', '长沙', '1', '2020-08-28 14:41:39', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('104', 'csx', 'sha', '长沙', '上海', '1', '2020-08-28 14:43:10', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('105', 'csx', 'can', '长沙', '广州', '1', '2020-08-28 14:43:51', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('106', 'can', 'csx', '广州', '长沙', '1', '2020-08-28 14:45:21', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('107', 'szx', 'csx', '深圳', '长沙', '1', '2020-08-28 14:47:21', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('108', 'csx', 'szx', '长沙', '深圳', '1', '2020-08-28 14:46:50', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('109', 'kmg', 'csx', '昆明', '长沙', '1', '2020-08-28 14:49:22', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('110', 'csx', 'kmg', '长沙', '昆明', '1', '2020-08-28 14:51:07', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('111', 'csx', 'ctu', '长沙', '成都', '1', '2020-08-28 14:53:07', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('112', 'ctu', 'csx', '成都', '长沙', '1', '2020-08-28 14:53:52', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('113', 'ckg', 'csx', '重庆', '长沙', '1', '2020-08-28 14:55:12', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('114', 'csx', 'ckg', '长沙', '重庆', '1', '2020-08-28 14:56:37', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('115', 'csx', 'sia', '长沙', '西安', '1', '2020-08-28 14:57:37', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('116', 'sia', 'csx', '西安', '长沙', '1', '2020-08-28 15:00:37', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('117', 'hgh', 'csx', '杭州', '长沙', '1', '2020-08-28 14:59:35', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('118', 'csx', 'hgh', '长沙', '杭州', '1', '2020-08-28 15:02:06', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('119', 'csx', 'tao', '长沙', '青岛', '1', '2020-08-28 15:03:22', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('120', 'tao', 'csx', '青岛', '长沙', '1', '2020-08-28 15:04:07', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('121', 'nkg', 'csx', '南京', '长沙', '1', '2020-08-28 15:07:06', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('122', 'csx', 'nkg', '长沙', '南京', '1', '2020-08-28 15:05:37', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('123', 'bjs', 'foc', '北京', '福州', '1', '2020-08-28 16:59:55', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('124', 'foc', 'bjs', '福州', '北京', '1', '2020-08-28 17:01:52', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('125', 'sha', 'foc', '上海', '福州', '1', '2020-08-28 17:05:38', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('126', 'foc', 'sha', '福州', '上海', '1', '2020-08-28 17:06:37', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('127', 'foc', 'szx', '福州', '深圳', '1', '2020-08-28 17:08:21', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('128', 'szx', 'foc', '深圳', '福州', '1', '2020-08-28 17:10:37', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('129', 'can', 'foc', '广州', '福州', '1', '2020-08-28 17:15:06', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('130', 'foc', 'can', '福州', '广州', '1', '2020-08-28 17:13:36', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('131', 'kmg', 'foc', '昆明', '福州', '1', '2020-08-28 17:16:21', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('132', 'foc', 'kmg', '福州', '昆明', '1', '2020-08-28 17:17:22', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('133', 'foc', 'ctu', '福州', '成都', '1', '2020-08-28 17:20:52', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('134', 'ctu', 'foc', '成都', '福州', '1', '2020-08-28 17:22:57', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('135', 'ckg', 'foc', '重庆', '福州', '1', '2020-08-28 17:24:07', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('136', 'foc', 'ckg', '福州', '重庆', '1', '2020-08-28 17:25:07', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('137', 'foc', 'sia', '福州', '西安', '1', '2020-08-28 17:29:07', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('138', 'sia', 'foc', '西安', '福州', '1', '2020-08-28 17:31:22', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('139', 'tao', 'foc', '青岛', '福州', '1', '2020-08-28 17:34:36', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('140', 'foc', 'tao', '福州', '青岛', '1', '2020-08-28 17:35:51', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('141', 'foc', 'nkg', '福州', '南京', '1', '2020-08-28 17:37:21', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('142', 'nkg', 'foc', '南京', '福州', '1', '2020-08-28 17:38:06', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('143', 'csx', 'foc', '长沙', '福州', '1', '2020-08-28 17:45:36', '成功爬取到数据');
INSERT INTO `airport_code` VALUES ('144', 'foc', 'csx', '福州', '长沙', '1', '2020-08-28 17:43:52', '成功爬取到数据');
