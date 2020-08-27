/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : fly

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-08-27 18:31:29
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
