/*
Navicat MySQL Data Transfer

Source Server         : po
Source Server Version : 50649
Source Host           : 49.232.228.221:3306
Source Database       : fly

Target Server Type    : MYSQL
Target Server Version : 50649
File Encoding         : 65001

Date: 2020-08-27 18:54:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar_url` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `open_id` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIUL09akUEgCic0M8neA41OgSI5ZCLbSHxvdmxlMf8Bia5SibvIDGlbxZTA4WmzUNDgt67CJsvnWQnqA/132', 'Chengdu', 'China', '男', '破', 'Sichuan', 'oH6xL5PGwB2M09On_i_cf6685yB0', '2020-08-27 11:44:41', null);
INSERT INTO `users` VALUES ('2', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI3xwhjZ9ck38cwmicJ1KWibxKqwwKgj4KsL9eibSR1wkbQpNolY6PRUCWw0wS5blwaBpoiaNdKfwjCdw/132', 'Urumqi', 'China', '男', '夏正君', 'Xinjiang', 'oH6xL5C1wzNHrKqZZ8CnL2MLccJI', '2020-08-27 13:06:19', null);
INSERT INTO `users` VALUES ('3', 'https://thirdwx.qlogo.cn/mmopen/vi_32/19N5pR9KIlPcefUkGT73RCTCSo5Dc3RoEISiaLfIz165tuMicFSfGTaHBPiadTSD2cHNOc5ltmicZommHqI9M6bIug/132', 'Nanchong', 'China', '女', '很不安怎去优雅', 'Sichuan', 'oH6xL5EHQrlQtU7UW7lOyKG4ybI0', '2020-08-27 13:45:49', null);
INSERT INTO `users` VALUES ('4', 'https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqG9qeVe6Ld2ngfczqd191f9gDMNE4WmaKvZHspfNIGeYu1YjJzpFDP2ewfB1cx0easddBexxzibfA/132', 'Zhengzhou', 'China', '男', '格子衫', 'Henan', 'oH6xL5CQS-3LsPixjGv1Dg8YNZaw', '2020-08-27 18:12:59', null);
