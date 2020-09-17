/*
Navicat MySQL Data Transfer

Source Server         : po
Source Server Version : 50649
Source Host           : 49.232.228.221:3306
Source Database       : fly

Target Server Type    : MYSQL
Target Server Version : 50649
File Encoding         : 65001

Date: 2020-09-17 15:04:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for airport
-- ----------------------------
DROP TABLE IF EXISTS `airport`;
CREATE TABLE `airport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `airport_name` varchar(255) DEFAULT NULL,
  `airport_code` varchar(255) DEFAULT NULL,
  `airport_abbreviate` varchar(255) DEFAULT NULL,
  `airport_location` varchar(255) DEFAULT NULL,
  `airport_area` varchar(255) DEFAULT NULL,
  `status` int(12) unsigned zerofill DEFAULT NULL,
  `city_url` varchar(255) DEFAULT NULL,
  `is_hot` varchar(255) DEFAULT NULL,
  `airport_url` varchar(255) DEFAULT NULL,
  `airport_rank` int(11) DEFAULT NULL,
  `airport_description` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `airport_code` (`airport_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=319 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of airport
-- ----------------------------
INSERT INTO `airport` VALUES ('1', '北京首都国际机场', 'PEK', '北京首都', '北京首都', '北京', '000000000000', 'https://www.potucs.com/wechat/airport/pek.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('2', '北京大兴国际机场', 'PKX', '北京大兴', '北京大兴', '北京', '000000000000', 'https://www.potucs.com/wechat/airport/pkx.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('3', '上海浦东国际机场', 'PVG', '上海浦东', '上海浦东', '上海', '000000000000', 'https://www.potucs.com/wechat/airport/pvg.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('4', '上海虹桥国际机场', 'SHA', '上海虹桥', '上海虹桥', '上海', '000000000000', 'https://www.potucs.com/wechat/airport/sha.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('5', '广州白云国际机场', 'CAN', '广州白云', '广州', '广东', '000000000000', 'https://www.potucs.com/wechat/airport/can.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('6', '深圳宝安国际机场', 'SZX', '深圳宝安', '深圳', '广东', '000000000000', 'https://www.potucs.com/wechat/airport/szx.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('7', '成都双流国际机场', 'CTU', '成都双流', '成都', '四川', '000000000000', 'https://www.potucs.com/wechat/airport/ctu.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('8', '昆明长水国际机场', 'KMG', '昆明长水', '昆明', '云南', '000000000000', 'https://www.potucs.com/wechat/airport/kmg.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('9', '重庆江北国际机场', 'CKG', '重庆江北', '重庆', '重庆', '000000000000', 'https://www.potucs.com/wechat/airport/ckg.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('10', '西安咸阳国际机场', 'XIY', '西安咸阳', '西安', '陕西', '000000000000', 'https://www.potucs.com/wechat/airport/xiy.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('11', '杭州萧山国际机场', 'HGH', '杭州萧山', '杭州', '浙江', '000000000000', 'https://www.potucs.com/wechat/airport/hgh.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('12', '青岛流亭国际机场', 'TAO', '青岛流亭', '青岛', '山东', '000000000000', 'https://www.potucs.com/wechat/airport/tao.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('13', '南京禄口国际机场', 'NKG', '南京禄口', '南京', '江苏', '000000000000', 'https://www.potucs.com/wechat/airport/nkg.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('14', '长沙黄花国际机场', 'CSX', '长沙黄花', '长沙', '湖南', '000000000000', 'https://www.potucs.com/wechat/airport/csx.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('15', '福州长乐国际机场', 'FOC', '福州长乐', '福州', '福建', '000000000000', 'https://www.potucs.com/wechat/airport/foc.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('16', '天津滨海国际机场', 'TSN', '天津滨海', '天津', '天津', '000000000000', 'https://www.potucs.com/wechat/airport/tsn.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('17', '厦门高崎国际机场', 'XMN', '厦门高崎', '厦门', '福建', '000000000000', 'https://www.potucs.com/wechat/airport/xmn.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('18', '郑州新郑国际机场', 'CGO', '郑州新郑', '郑州', '河南', '000000000000', 'https://www.potucs.com/wechat/airport/cgo.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('19', '拉萨贡嘎国际机场', 'LXA', '拉萨贡嘎', '拉萨', '西藏', '000000000000', 'https://www.potucs.com/wechat/airport/lxa.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('20', '大理机场', 'DLU', '大理', '大理', '云南', '000000000000', 'https://www.potucs.com/wechat/airport/dlu.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('21', '丽江三义国际机场', 'LJG', '丽江三义', '丽江', '云南', '000000000000', 'https://www.potucs.com/wechat/airport/ljg.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('22', '南宁吴圩国际机场', 'NNG', '南宁吴圩', '南宁', '广西', '000000000000', 'https://www.potucs.com/wechat/airport/nng.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('23', '哈尔滨太平国际机场', 'HRB', '哈尔滨太平', '哈尔滨', '黑龙江', '000000000000', 'https://www.potucs.com/wechat/airport/hrb.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('24', '宁波栎社国际机场', 'NGB', '宁波栎社', '宁波', '浙江', '000000000000', 'https://www.potucs.com/wechat/airport/ngb.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('25', '合肥新桥国际机场', 'HFE', '合肥新桥', '合肥', '安徽', '000000000000', 'https://www.potucs.com/wechat/airport/hfe.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('26', '贵阳龙洞堡国际机场', 'KWE', '贵阳龙洞堡', '贵阳', '贵州', '000000000000', 'https://www.potucs.com/wechat/airport/kwe.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('27', '武汉天河国际机场', 'WUH', '武汉天河', '武汉', '湖北', '000000000000', 'https://www.potucs.com/wechat/airport/wuh.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('28', '西宁曹家堡国际机场', 'XNN', '西宁曹家堡', '西宁', '青海', '000000000000', 'https://www.potucs.com/wechat/airport/xnn.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('29', '海口美兰国际机场', 'HAK', '海口美兰', '海口', '海南', '000000000000', 'https://www.potucs.com/wechat/airport/hak.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('30', '乌鲁木齐地窝堡国际机场', 'URC', '乌鲁木齐地窝堡', '乌鲁木齐', '新建', '000000000000', 'https://www.potucs.com/wechat/airport/urc.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('31', '黄山屯溪国际机场', 'TXN', '黄山屯溪', '黄山', '安徽', '000000000000', 'https://www.potucs.com/wechat/airport/txn.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('32', '恩施许家坪机场', 'ENH', '恩施许家坪', '恩施', '湖北', '000000000000', 'https://www.potucs.com/wechat/airport/enh.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('33', '沈阳桃仙国际机场', 'SHE', '沈阳桃仙', '沈阳', '辽宁', '000000000000', 'https://www.potucs.com/wechat/airport/she.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('34', '大连周水子国际机场', 'DLC', '大连周水子', '大连', '辽宁', '000000000000', 'https://www.potucs.com/wechat/airport/dlc.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('35', '西双版纳嘎洒国际机场', 'JHG', '西双版纳嘎洒', '西双版纳', '云南', '000000000000', 'https://www.potucs.com/wechat/airport/jhg.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('36', '太原武宿国际机场', 'TYN', '太原武宿', '太原', '山西', '000000000000', 'https://www.potucs.com/wechat/airport/tyn.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('37', '银川河东国际机场', 'INC', '银川河东', '银川', '宁夏', '000000000000', 'https://www.potucs.com/wechat/airport/inc.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('38', '兰州中川国际机场', 'LHW', '兰州中川', '兰州', '甘肃', '000000000000', 'https://www.potucs.com/wechat/airport/lhw.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('39', '呼和浩特白塔国际机场', 'HET', '呼和浩特白塔', '呼和浩特', '内蒙古', '000000000000', 'https://www.potucs.com/wechat/airport/het.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('40', '桂林两江国际机场', 'KWL', '桂林两江', '桂林', '广西', '000000000000', 'https://www.potucs.com/wechat/airport/kwl.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('41', '南昌昌北国际机场', 'KHN', '南昌昌北', '南昌', '江西', '000000000000', 'https://www.potucs.com/wechat/airport/khn.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('42', '三亚凤凰国际机场', 'SYX', '三亚凤凰', '三亚', '海南', '000000000000', 'https://www.potucs.com/wechat/airport/syx.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('43', '济南遥墙国际机场', 'TNA', '济南遥墙', '济南', '山东', '000000000000', 'https://www.potucs.com/wechat/airport/tna.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('44', '珠海金湾机场', 'ZUH', '珠海金湾', '珠海', '广东', '000000000000', 'https://www.potucs.com/wechat/airport/zuh.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('45', '揭阳潮汕国际机场', 'SWA', '揭阳潮汕', '揭阳', '广东', '000000000000', 'https://www.potucs.com/wechat/airport/swa.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('46', '长春龙嘉国际机场', 'CGQ', '长春龙嘉', '长春', '吉林', '000000000000', 'https://www.potucs.com/wechat/airport/cgq.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('47', '温州龙湾国际机场', 'WNZ', '温州龙湾', '温州', '浙江', '000000000000', 'https://www.potucs.com/wechat/airport/wnz.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('48', '石家庄正定国际机场', 'SJW', '石家庄正定', '石家庄', '河北', '000000000000', 'https://www.potucs.com/wechat/airport/sjw.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('49', '烟台蓬莱国际机场', 'YNT', '烟台蓬莱', '烟台', '山东', '000000000000', 'https://www.potucs.com/wechat/airport/ynt.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('50', '泉州晋江国际机场', 'JJN', '泉州晋江', '泉州', '福建', '000000000000', 'https://www.potucs.com/wechat/airport/jjn.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('51', '苏南硕放国际机场', 'WUX', '苏南硕放', '无锡', '江苏', '000000000000', 'https://www.potucs.com/wechat/airport/wux.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('52', '鄂尔多斯伊金霍洛国际机场', 'DSN', '鄂尔多斯', '鄂尔多斯', '内蒙古', '000000000000', 'https://www.potucs.com/wechat/airport/dsn.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('53', '常州奔牛国际机场', 'CZX', '常州奔牛', '常州', '江苏', '000000000000', 'https://www.potucs.com/wechat/airport/czx.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('54', '遵义茅台机场', 'WMT', '遵义茅台', '遵义', '贵州', '000000000000', 'https://www.potucs.com/wechat/airport/wmt.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('55', '张家界荷花国际机场', 'DYG', '张家界荷花', '张家界', '湖南', '000000000000', 'https://www.potucs.com/wechat/airport/dyg.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('56', '盐城南洋国际机场', 'YNZ', '盐城南洋', '盐城', '江苏', '000000000000', 'https://www.potucs.com/wechat/airport/ynz.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('57', '迪庆香格里拉机场', 'DIG', '迪庆香格里拉', '迪庆', '云南', '000000000000', 'https://www.potucs.com/wechat/airport/dig.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('58', '遵义新舟机场', 'ZYI', '遵义新舟', '遵义新舟', '贵州', '000000000000', 'https://www.potucs.com/wechat/airport/zyi.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('59', '威海大水泊机场', 'WEH', '威海大水泊', '威海', '山东', '000000000000', 'https://www.potucs.com/wechat/airport/weh.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('60', '南通兴东国际机场', 'NTG', '南通兴东', '南通', '江苏', '000000000000', 'https://www.potucs.com/wechat/airport/ntg.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('61', '徐州观音国际机场', 'XUZ', '徐州观音', '徐州', '江苏', '000000000000', 'https://www.potucs.com/wechat/airport/xuz.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('62', '淮安涟水国际机场', 'HIA', '淮安涟水', '淮安', '江苏', '000000000000', 'https://www.potucs.com/wechat/airport/hia.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('63', '扬州泰州国际机场', 'YTY', '扬州泰州', '扬州', '江苏', '000000000000', 'https://www.potucs.com/wechat/airport/yty.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('64', '绵阳南郊机场', 'MIG', '绵阳南郊', '绵阳', '四川', '000000000000', 'https://www.potucs.com/wechat/airport/mig.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('65', '稻城亚丁机场', 'DCY', '稻城亚丁', '稻城', '四川', '000000000000', 'https://www.potucs.com/wechat/airport/dcy.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('66', '天水麦积山机场', 'THQ', '天水麦积山', '天水', '甘肃', '000000000000', 'https://www.potucs.com/wechat/airport/thq.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('67', '信阳明港机场', 'XAI', '信阳明港', '信阳', '河南', '000000000000', 'https://www.potucs.com/wechat/airport/xai.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('68', '昭通机场', 'ZAT', '昭通', '昭通', '云南', '000000000000', 'https://www.potucs.com/wechat/airport/zat.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('69', '泸州云龙机场', 'LZO', '泸州云龙', '泸州', '四川', '000000000000', 'https://www.potucs.com/wechat/airport/lzo.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('70', '十堰武当山机场', 'WDS', '十堰武当山', '十堰', '湖北', '000000000000', 'https://www.potucs.com/wechat/airport/wds.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('71', '洛阳北郊机场', 'LYA', '洛阳北郊', '洛阳', '河南', '000000000000', 'https://www.potucs.com/wechat/airport/lya.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('72', '巴中恩阳机场', 'BZX', '巴中恩阳', '巴中', '四川', '000000000000', 'https://www.potucs.com/wechat/airport/bzx.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('73', '岳阳三荷机场', 'YYA', '岳阳三荷', '岳阳', '湖南', '000000000000', 'https://www.potucs.com/wechat/airport/yya.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('74', '池州九华山机场', 'JUH', '池州九华山', '池州', '安徽', '000000000000', 'https://www.potucs.com/wechat/airport/juh.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('75', '常德桃花源机场', 'CGD', '常德桃花源', '常德', '湖南', '000000000000', 'https://www.potucs.com/wechat/airport/juh.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('76', '宜春明月山机场', 'YIC', '宜春明月山', '宜春', '江西', '000000000000', 'https://www.potucs.com/wechat/airport/yic.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('77', '长治王村机场', 'CIH', '长治王村', '长治', '山西', '000000000000', 'https://www.potucs.com/wechat/airport/cih.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('78', '赣州黄金机场', 'KOW', '赣州黄金', '赣州', '江西', '000000000000', 'https://www.potucs.com/wechat/airport/kow.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('79', '日照山字河机场', 'RIZ', '日照山字河', '日照', '山东', '000000000000', 'https://www.potucs.com/wechat/airport/riz.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('80', '三明沙县机场', 'SQJ', '三明沙县', '三明', '福建', '000000000000', 'https://www.potucs.com/wechat/airport/sqj.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('81', '景德镇罗家机', 'JDZ', '景德镇罗家', '景德镇', '江西', '000000000000', 'https://www.potucs.com/wechat/airport/jdz.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('82', '兴义万峰林机场', 'ACX', '兴义万峰林', '兴义', '贵州', '000000000000', 'https://www.potucs.com/wechat/airport/acx.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('83', '万州五桥机场', 'WXN', '万州五桥', '万州', '重庆', '000000000000', 'https://www.potucs.com/wechat/airport/wxn.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('84', '济宁曲阜机场', 'JNG', '济宁曲阜', '济宁', '山东', '000000000000', 'https://www.potucs.com/wechat/airport/lzo.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('85', '达州河市机场', 'DAX', '达州河市', '达州', '四川', '000000000000', 'https://www.potucs.com/wechat/airport/dax.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('86', '毕节飞雄机场', 'BFJ', '毕节飞雄', '毕节', '贵州', '000000000000', 'https://www.potucs.com/wechat/airport/bfj.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('87', '邵阳武冈机场', 'WGN', '邵阳武冈', '邵阳', '湖南', '000000000000', 'https://www.potucs.com/wechat/airport/wgn.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('88', '保山云瑞机场', 'BSD', '保山云瑞', '保山', '云南', '000000000000', 'https://www.potucs.com/wechat/airport/bsd.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('89', '井冈山机场', 'JGS', '井冈山', '井冈山', '江西', '000000000000', 'https://www.potucs.com/wechat/airport/jgs.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('90', '南充高坪机场', 'NAO', '南充高坪', '南充', '四川', '000000000000', 'https://www.potucs.com/wechat/airport/nao.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('91', '衡阳南岳机场', 'HNY', '衡阳南岳', '衡阳', '湖南', '000000000000', 'https://www.potucs.com/wechat/airport/hny.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('92', '湛江机场', 'ZHA', '湛江', '湛江', '广东', '000000000000', 'https://www.potucs.com/wechat/airport/zha.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('93', '襄阳刘集机场', 'XFN', '襄阳刘集', '襄阳', '湖北', '000000000000', 'https://www.potucs.com/wechat/airport/xfn.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('94', '黔江武陵山机场', 'JIQ', '黔江武陵山', '黔江', '重庆', '000000000000', 'https://www.potucs.com/wechat/airport/jiq.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('95', '武夷山机场', 'WUS', '武夷山', '武夷山', '福建', '000000000000', 'https://www.potucs.com/wechat/airport/wus.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('96', '上饶三清山机场', 'SQD', '上饶三清山', '上饶', '江西', '000000000000', 'https://www.potucs.com/wechat/airport/sqd.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('97', '柳州白莲机场', 'LZH', '柳州白莲', '柳州', '广西', '000000000000', 'https://www.potucs.com/wechat/airport/lzh.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('98', '龙岩冠豸山机场', 'LCX', '龙岩冠豸山', '龙岩', '福建', '000000000000', 'https://www.potucs.com/wechat/airport/lcx.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('99', '安庆天柱山机场', 'AQG', '安庆天柱山', '安庆', '安徽', '000000000000', 'https://www.potucs.com/wechat/airport/aqg.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('100', '梧州西江机场', 'WUZ', '梧州西江', '梧州', '广西', '000000000000', 'https://www.potucs.com/wechat/airport/wuz.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('101', '临沂启阳机场', 'LYI', '临沂启阳', '临沂', '山东', '000000000000', 'https://www.potucs.com/wechat/airport/lyi.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('102', '舟山普陀山机场', 'HSN', '舟山普陀山', '舟山', '浙江', '000000000000', 'https://www.potucs.com/wechat/airport/hsn.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('103', '南阳姜营机场', 'NNY', '南阳姜营', '南阳', '河南', '000000000000', 'https://www.potucs.com/wechat/airport/nny.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('104', '宜宾五粮液机场', 'YBP', '宜宾五粮液', '宜宾', '四川', '000000000000', 'https://www.potucs.com/wechat/airport/ybp.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('105', '格尔木机场', 'GOQ', '格尔木', '格尔木', '青海', '000000000000', 'https://www.potucs.com/wechat/airport/goq.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('106', '甘孜格萨尔机场', 'GZG', '甘孜格萨尔', '甘孜格萨尔', '四川', '000000000000', 'https://www.potucs.com/wechat/airport/gzg.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('107', '甘孜康定机场', 'KGT', '甘孜康定', '甘孜康定', '四川', '000000000000', 'https://www.potucs.com/wechat/airport/kgt.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('108', '甘南夏河机场', 'GXH', '甘南夏河', '夏河', '甘肃', '000000000000', 'https://www.potucs.com/wechat/airport/gxh.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('109', '张家口宁远机场', 'ZQZ', '张家口宁远', '张家口', '河北', '000000000000', 'https://www.potucs.com/wechat/airport/zqz.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('110', '怀化芷江机场', 'HJJ', '怀化芷江', '怀化', '湖南', '000000000000', 'https://www.potucs.com/wechat/airport/hjj.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('111', '通辽机场', 'TGO', '通辽', '通辽', '内蒙古', '000000000000', 'https://www.potucs.com/wechat/airport/tgo.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('112', '赤峰玉龙机场', 'CIF', '赤峰玉龙', '赤峰', '内蒙古', '000000000000', 'https://www.potucs.com/wechat/airport/cif.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('113', '宜昌三峡机场', 'YIH', '宜昌三峡', '宜昌', '湖北', '000000000000', 'https://www.potucs.com/wechat/airport/yih.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('114', '临汾尧都机场', 'LFQ', '临汾尧都', '临汾', '山西', '000000000000', 'https://www.potucs.com/wechat/airport/lfq.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('115', '乌兰浩特机场', 'HLH', '乌兰浩特', '乌兰浩特', '内蒙古', '000000000000', 'https://www.potucs.com/wechat/airport/hlh.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('116', '铜仁凤凰机场', 'TEN', '铜仁凤凰', '铜仁', '贵州', '000000000000', 'https://www.potucs.com/wechat/airport/ten.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('117', '潍坊南苑机场', 'WEF', '潍坊南苑', '潍坊', '山东', '000000000000', 'https://www.potucs.com/wechat/airport/wef.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('118', '秦皇岛北戴河机场', 'BPE', '秦皇岛北戴河', '秦皇岛', '河北', '000000000000', 'https://www.potucs.com/wechat/airport/bpe.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('119', '唐山三女河机场', 'TVS', '唐山三女河', '唐山', '河北', '000000000000', 'https://www.potucs.com/wechat/airport/tvs.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('120', '榆林榆阳机场', 'UYN', '榆林榆阳', '榆林', '陕西', '000000000000', 'https://www.potucs.com/wechat/airport/uyn.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('121', '包头东河机场', 'BAV', '包头东河', '包头', '内蒙古', '000000000000', 'https://www.potucs.com/wechat/airport/bav.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('122', '锦州锦州湾机场', 'JNZ', '锦州锦州湾', '锦州', '辽宁', '000000000000', 'https://www.potucs.com/wechat/airport/jnz.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('123', '连云港白塔埠机场', 'LYG', '连云港白塔埠', '连云港', '江苏', '000000000000', 'https://www.potucs.com/wechat/airport/lyg.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('124', '忻州五台山机场', 'WUT', '忻州五台山', '忻州', '山西', '000000000000', 'https://www.potucs.com/wechat/airport/wut.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('125', '大同云冈机场', 'DAT', '大同云冈', '大同', '山西', '000000000000', 'https://www.potucs.com/wechat/airport/dat.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('126', '邯郸机场', 'HDG', '邯郸', '邯郸', '河北', '000000000000', 'https://www.potucs.com/wechat/airport/hdg.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('127', '玉树巴塘机场', 'YUS', '玉树巴塘', '玉树', '青海', '000000000000', 'https://www.potucs.com/wechat/airport/yus.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('128', '运城关公机场', 'YCU', '运城关公', '运城', '山西', '000000000000', 'https://www.potucs.com/wechat/airport/ycu.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('129', '百色巴马机场', 'AEB', '百色巴马', '百色', '广西', '000000000000', 'https://www.potucs.com/wechat/airport/aeb.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('130', '梅州梅县机场', 'MXZ', '梅州梅县', '梅州', '广东', '000000000000', 'https://www.potucs.com/wechat/airport/mxz.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('131', '北海福成机场', 'BHY', '北海福成', '北海', '广西', '000000000000', 'https://www.potucs.com/wechat/airport/bhy.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('132', '吕梁大武机场', 'LLV', '吕梁大武', '吕梁', '山西', '000000000000', 'https://www.potucs.com/wechat/airport/jiq.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('133', '佛山沙堤机场', 'FUO', '佛山沙堤', '佛山', '广东', '000000000000', 'https://www.potucs.com/wechat/airport/fuo.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('134', '惠州平潭机场', 'HUZ', '惠州平潭', '惠州', '广东', '000000000000', 'https://www.potucs.com/wechat/airport/huz.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('135', '承德普宁机场', 'CDE', '承德普宁', '承德', '河北', '000000000000', 'https://www.potucs.com/wechat/airport/cde.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('136', '九寨沟黄龙机场', 'JZH', '九寨沟', '九寨沟', '四川', '000000000000', 'https://www.potucs.com/wechat/airport/jzh.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('137', '阿坝红原机场', 'AHJ', '阿坝红原', '阿坝', '四川', '000000000000', 'https://www.potucs.com/wechat/airport/ahj.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('138', '库尔勒机场', 'KRL', '库尔勒', '库尔勒', '新疆', '000000000000', 'https://www.potucs.com/wechat/airport/krl.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('139', '呼伦贝尔东山国际机场', 'HLD', '呼伦贝尔东山', '呼伦贝尔', '内蒙古', '000000000000', 'https://www.potucs.com/wechat/airport/hld.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('140', '喀什国际机场', 'KHG', '喀什', '喀什', '新疆', '000000000000', 'https://www.potucs.com/wechat/airport/khg.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('141', '德宏芒市机场', 'LUM', '德宏芒市', '德宏', '云南', '000000000000', 'https://www.potucs.com/wechat/airport/lum.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('142', '延吉朝阳川国际机场', 'YNJ', '延吉朝阳川', '延吉', '吉林', '000000000000', 'https://www.potucs.com/wechat/airport/ynj.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('143', '义乌机场', 'YIW', '义乌', '义乌', '浙江', '000000000000', 'https://www.potucs.com/wechat/airport/yiw.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('144', '伊宁机场', 'YIN', '伊宁', '伊宁', '新疆', '000000000000', 'https://www.potucs.com/wechat/airport/yin.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('145', '和田机场', 'HTN', '和田', '和田', '新疆', '000000000000', 'https://www.potucs.com/wechat/airport/htn.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('146', '林芝米林机场', 'LZY', '林芝米林', '林芝', '西藏', '000000000000', 'https://www.potucs.com/wechat/airport/lzy.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('147', '阿里昆莎机场', 'NGQ', '阿里昆莎', '阿里', '西藏', '000000000000', 'https://www.potucs.com/wechat/airport/ngq.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('148', '阿尔山伊尔施机场', 'YIE', '阿尔山伊尔施', '阿尔山', '内蒙古', '000000000000', 'https://www.potucs.com/wechat/airport/yie.png', null, null, null, null, '2020-09-13 00:00:00');
INSERT INTO `airport` VALUES ('149', '阿克苏温宿机场', 'AKU', '阿克苏温宿', '阿克苏', '新疆', '000000000000', 'https://www.potucs.com/wechat/airport/aku.png', null, null, null, null, '2020-09-13 00:00:00');
INSERT INTO `airport` VALUES ('150', '阿勒泰机场', 'AAT', '阿勒泰', '阿勒泰', '新疆', '000000000000', 'https://www.potucs.com/wechat/airport/aat.png', null, null, null, null, '2020-09-13 00:00:00');
INSERT INTO `airport` VALUES ('151', '鞍山腾鳌机场', 'AOG', '鞍山腾鳌', '鞍山', '辽宁', '000000000000', 'https://www.potucs.com/wechat/airport/aog.png', null, null, null, null, '2020-09-13 00:00:00');
INSERT INTO `airport` VALUES ('152', '安顺黄果树机场', 'AVA', '安顺黄果树', '安顺', '贵州', '000000000000', 'https://www.potucs.com/wechat/airport/ava.png', null, null, null, null, '2020-09-13 00:00:00');
INSERT INTO `airport` VALUES ('153', '巴彦淖尔机场', 'RLK', '巴彦淖尔', '巴彦淖尔', '内蒙古', '000000000000', 'https://www.potucs.com/wechat/airport/rlk.png', null, null, null, null, '2020-09-13 00:00:00');
INSERT INTO `airport` VALUES ('154', '博乐阿拉山口机场', 'BPL', '博乐阿拉山口', '博乐', '新疆', '000000000000', 'https://www.potucs.com/wechat/airport/bpl.png', null, null, null, null, '2020-09-13 00:00:00');
INSERT INTO `airport` VALUES ('155', '沧源佤山机场', 'CWJ', '沧源佤山', '沧源', '云南', '000000000000', 'https://www.potucs.com/wechat/airport/cwj.png', null, null, null, null, '2020-09-13 00:00:00');
INSERT INTO `airport` VALUES ('156', '长白山机场', 'NBS', '长白山', '长白山', '吉林', '000000000000', 'https://www.potucs.com/wechat/airport/nbs.png', null, null, null, null, '2020-09-13 00:00:00');
INSERT INTO `airport` VALUES ('157', '朝阳机场', 'CHG', '朝阳', '朝阳', '辽宁', '000000000000', 'https://www.potucs.com/wechat/airport/chg.png', null, null, null, null, '2020-09-13 00:00:00');
INSERT INTO `airport` VALUES ('158', '丹东浪头机场', 'DDG', '丹东浪头', '丹东', '辽宁', '000000000000', 'https://www.potucs.com/wechat/airport/ddg.png', null, null, null, null, '2020-09-13 00:00:00');
INSERT INTO `airport` VALUES ('159', '德令哈机场', 'HXD', '德令哈', '德令哈', '青海', '000000000000', 'https://www.potucs.com/wechat/airport/hxd.png', null, null, null, null, '2020-09-13 00:00:00');
INSERT INTO `airport` VALUES ('160', '东营胜利机场', 'DOY', '东营胜利', '东营', '辽宁', '000000000000', 'https://www.potucs.com/wechat/airport/doy.png', null, null, null, null, '2020-09-13 00:00:00');
INSERT INTO `airport` VALUES ('161', '敦煌莫高国际机场', 'DNH', '敦煌莫高', '敦煌', '甘肃', '000000000000', 'https://www.potucs.com/wechat/airport/dnh.png', null, null, null, null, '2020-09-13 00:00:00');
INSERT INTO `airport` VALUES ('162', '二连浩特赛乌苏国际机场', 'ERL', '二连浩特赛乌苏', '二连浩特', '内蒙古', '000000000000', 'https://www.potucs.com/wechat/airport/erl.png', null, null, null, null, '2020-09-13 00:00:00');
INSERT INTO `airport` VALUES ('163', '腾冲驼峰机场', 'TCZ', '腾冲驼峰', '腾冲', '云南', '000000000000', 'https://www.potucs.com/wechat/airport/tcz.png', null, null, null, null, '2020-09-13 00:00:00');
INSERT INTO `airport` VALUES ('164', '阜阳西关机场', 'FUG', '阜阳西关', '阜阳', '安徽', '000000000000', 'https://www.potucs.com/wechat/airport/fug.png', null, null, null, null, '2020-09-13 00:00:00');
INSERT INTO `airport` VALUES ('165', '固原六盘山机场', 'GYU', '固原六盘山', '固原', '宁夏', '000000000000', 'https://www.potucs.com/wechat/airport/gyu.png', null, null, null, null, '2020-09-13 00:00:00');
INSERT INTO `airport` VALUES ('166', '广元盘龙机场', 'GYS', '广元盘龙', '广元', '四川', '000000000000', 'https://www.potucs.com/wechat/airport/gys.png', null, null, null, null, '2020-09-13 00:00:00');
INSERT INTO `airport` VALUES ('167', '果洛玛沁机场', 'GMQ', '果洛玛沁', '果洛', '青海', '000000000000', 'https://www.potucs.com/wechat/airport/gmq.png', null, null, null, null, '2020-09-13 00:00:00');
INSERT INTO `airport` VALUES ('168', '哈密机场', 'HMI', '哈密机场', '哈密', '青海', '000000000000', 'https://www.potucs.com/wechat/airport/hmi.png', null, null, null, null, '2020-09-13 00:00:00');
INSERT INTO `airport` VALUES ('169', '汉中城固机场', 'HZG', '汉中城固', '汉中', '陕西', '000000000000', 'https://www.potucs.com/wechat/airport/hzg.png', null, null, null, null, '2020-09-13 00:00:00');
INSERT INTO `airport` VALUES ('170', '黑河机场', 'HEK', '黑河', '黑河', '黑龙江', '000000000000', 'https://www.potucs.com/wechat/airport/hek.png', null, null, null, null, '2020-09-13 00:00:00');
INSERT INTO `airport` VALUES ('171', '花土沟机场', 'HTT', '花土沟', '花土沟', '青海', '000000000000', 'https://www.potucs.com/wechat/airport/htt.png', null, null, null, null, '2020-09-13 00:00:00');
INSERT INTO `airport` VALUES ('172', '鸡西兴凯湖机场', 'JXA', '鸡西兴凯湖', '鸡西', '黑龙江', '000000000000', 'https://www.potucs.com/wechat/airport/jxa.png', null, null, null, null, '2020-09-13 00:00:00');
INSERT INTO `airport` VALUES ('173', '加格达奇机场', 'JGD', '加格达奇', '加格达奇', '黑龙江', '000000000000', 'https://www.potucs.com/wechat/airport/jgd.png', null, null, null, null, '2020-09-13 00:00:00');
INSERT INTO `airport` VALUES ('174', '佳木斯东郊机场', 'JMU', '佳木斯东郊', '佳木斯', '黑龙江', '000000000000', 'https://www.potucs.com/wechat/airport/jmu.png', null, null, null, null, '2020-09-13 00:00:00');
INSERT INTO `airport` VALUES ('175', '嘉峪关机场', 'JGN', '嘉峪关', '嘉峪关', '甘肃', '000000000000', 'https://www.potucs.com/wechat/airport/jgn.png', null, null, null, null, '2020-09-13 00:00:00');
INSERT INTO `airport` VALUES ('176', '普洱思茅机场', 'SYM', '普洱思茅', '普洱', '云南', '000000000000', 'https://www.potucs.com/wechat/airport/sym.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('177', '克拉玛依机场', 'KRY', '克拉玛依', '克拉玛依', '新疆', '000000000000', 'https://www.potucs.com/wechat/airport/kry.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('178', '金昌金川机场', 'JIC', '金昌金川', '金昌', '甘肃', '000000000000', 'https://www.potucs.com/wechat/airport/jic.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('179', '九江庐山机场', 'JIU', '九江庐山', '九江', '江西', '000000000001', 'https://www.potucs.com/wechat/airport/jiu.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('180', '凯里黄平机场', 'KJH', '凯里黄平', '凯里', '贵州', '000000000000', 'https://www.potucs.com/wechat/airport/kjh.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('181', '宁蒗泸沽湖机场', 'NLH', '宁蒗泸沽湖', '宁蒗', '四川', '000000000000', 'https://www.potucs.com/wechat/airport/nlh.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('182', '库车龟兹机场', 'KCA', '库车龟兹', '库车', '新疆', '000000000000', 'https://www.potucs.com/wechat/airport/kca.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('183', '澜沧景迈机场', 'JMJ', '澜沧景迈', '澜沧', '云南', '000000000000', 'https://www.potucs.com/wechat/airport/jmj.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('184', '黎平机场', 'HZH', '黎平', '黎平', '贵州', '000000000000', 'https://www.potucs.com/wechat/airport/hzh.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('185', '临沧博尚机场', 'LNJ', '临沧博尚', '临沧', '云南', '000000000000', 'https://www.potucs.com/wechat/airport/lnj.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('186', '六盘水月照机场', 'LPF', '六盘水月照', '六盘水', '贵州', '000000000000', 'https://www.potucs.com/wechat/airport/lpf.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('187', '陇南成县机场', 'LNL', '陇南成县', '陇南', '甘肃', '000000000000', 'https://www.potucs.com/wechat/airport/lnl.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('188', '满洲里西郊国际机场', 'NZH', '满洲里西郊', '满洲里', '内蒙古', '000000000000', 'https://www.potucs.com/wechat/airport/nzh.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('189', '漠河古莲机场', 'OHE', '漠河古莲', '漠河', '黑龙江', '000000000000', 'https://www.potucs.com/wechat/airport/ohe.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('190', '牡丹江海浪国际机场', 'MDG', '牡丹江海浪', '牡丹江', '黑龙江', '000000000000', 'https://www.potucs.com/wechat/airport/mdg.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('191', '台州路桥机场', 'HYN', '台州路桥机场', '台州', '浙江', '000000000000', 'https://www.potucs.com/wechat/airport/hyn.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('192', '攀枝花保安营机场', 'PZI', '攀枝花保安营', '攀枝花', '四川', '000000000000', 'https://www.potucs.com/wechat/airport/pzi.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('193', '海北祁连机场', 'HBQ', '海北祁连', '祁连', '青海', '000000000000', 'https://www.potucs.com/wechat/airport/hbq.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('194', '齐齐哈尔三家子机场', 'NDG', '齐齐哈尔三家子', '齐齐哈尔', '黑龙江', '000000000000', 'https://www.potucs.com/wechat/airport/ndg.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('195', '庆阳西峰机场', 'IQN', '庆阳西峰', '庆阳', '甘肃', '000000000000', 'https://www.potucs.com/wechat/airport/iqn.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('196', '琼海博鳌机场', 'BAR', '琼海博鳌', '琼海', '海南', '000000000000', 'https://www.potucs.com/wechat/airport/bar.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('197', '衢州衢州机场', 'JUZ', '衢州', '衢州', '浙江', '000000000000', 'https://www.potucs.com/wechat/airport/juz.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('198', '日喀则和平机场', 'RKZ', '日喀则和平', '日喀则', '西藏', '000000000000', 'https://www.potucs.com/wechat/airport/rkz.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('199', '莎车叶尔羌机场', 'QSZ', '莎车叶尔羌', '莎车', '新疆', '000000000000', 'https://www.potucs.com/wechat/airport/qsz.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('200', '松原查干湖机场', 'YSQ', '松原查干湖', '松原', '吉林', '000000000000', 'https://www.potucs.com/wechat/airport/ysq.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('201', '神农架红坪机场', 'HPG', '神农架红坪', '神农架', '湖北', '000000000000', 'https://www.potucs.com/wechat/airport/hpg.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('202', '石河子花园机场', 'SHF', '石河子花园', '石河子', '新疆', '000000000000', 'https://www.potucs.com/wechat/airport/shf.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('203', '通化三源浦机场', 'TNH', '通化三源浦', '通化', '吉林', '000000000000', 'https://www.potucs.com/wechat/airport/tnh.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('205', '吐鲁番交河机场', 'TLQ', '吐鲁番交河', '吐鲁番', '新疆', '000000000000', 'https://www.potucs.com/wechat/airport/tlq.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('206', '乌兰察布集宁机场', 'UCB', '乌兰察布集宁', '乌兰察布', '内蒙古', '000000000000', 'https://www.potucs.com/wechat/airport/ucb.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('207', '文山砚山机场', 'WNH', '文山砚山', '文山', '云南', '000000000000', 'https://www.potucs.com/wechat/airport/wnh.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('208', '乌海机场', 'WUA', '乌海', '乌海', '内蒙古', '000000000000', 'https://www.potucs.com/wechat/airport/wua.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('209', '重庆巫山机场', 'WSK', '重庆巫山', '巫山', '重庆', '000000000000', 'https://www.potucs.com/wechat/airport/wsk.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('210', '西昌青山机场', 'XIC', '西昌青山', '西昌', '四川', '000000000000', 'https://www.potucs.com/wechat/airport/xic.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('211', '锡林浩特机场', 'XIL', '锡林浩特', '锡林浩特', '内蒙古', '000000000000', 'https://www.potucs.com/wechat/airport/xil.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('212', '伊春林都机场', 'LDS', '伊春林都', '伊春', '黑龙江', '000000000000', 'https://www.potucs.com/wechat/airport/lds.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('213', '延安南泥湾机场', 'ENY', '延安南泥湾', '延安', '陕西', '000000000000', 'https://www.potucs.com/wechat/airport/eny.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('214', '营口兰旗机场', 'YKH', '营口兰旗', '营口', '辽宁', '000000000000', 'https://www.potucs.com/wechat/airport/ykh.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('215', '永州零陵机场', 'LLF', '永州零陵', '永州', '湖南', '000000000001', 'https://www.potucs.com/wechat/airport/llf.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('216', '张掖甘州机场', 'YZY', '张掖甘州', '张掖', '甘肃', '000000000000', 'https://www.potucs.com/wechat/airport/yzy.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('218', '中卫沙坡头机场', 'ZHY', '中卫沙坡头', '中卫', '宁夏', '000000000000', 'https://www.potucs.com/wechat/airport/zhy.png', null, null, null, null, '2020-09-17 00:00:00');
INSERT INTO `airport` VALUES ('219', '大庆萨尔图机场', 'DQA', '大庆萨尔图', '大庆', '黑龙江', '000000000000', 'https://www.potucs.com/wechat/airport/dqa.png', null, null, null, null, '2020-09-17 00:00:00');
