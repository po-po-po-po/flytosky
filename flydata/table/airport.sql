/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50719
Source Host           : 127.0.0.1:3306
Source Database       : fly

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2020-08-27 21:57:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for airport
-- ----------------------------
DROP TABLE IF EXISTS `airport`;
CREATE TABLE `airport` (
  `id` int(11) NOT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of airport
-- ----------------------------
INSERT INTO `airport` VALUES ('1', '北京首都国际机场', 'PEK', '北京首都', '北京首都', '北京', '000000000000', 'https://www.potucs.com/wechat/airport/pek.png', null, null, null, null, '2020-08-27 14:11:25');
INSERT INTO `airport` VALUES ('2', '北京大兴国际机场', 'PKX', '北京大兴', '北京大兴', '北京', '000000000000', 'https://www.potucs.com/wechat/airport/pkx.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('3', '上海浦东国际机场', 'PVG', '上海浦东', '上海浦东', '上海', '000000000000', 'https://www.potucs.com/wechat/airport/pvg.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('4', '上海虹桥国际机场', 'SHA', '上海虹桥', '上海虹桥', '上海', '000000000000', 'https://www.potucs.com/wechat/airport/sha.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('5', '广州白云国际机场', 'CAN', '广州白云', '广州', '广东', '000000000000', 'https://www.potucs.com/wechat/airport/can.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('6', '深圳宝安国际机场', 'SZX', '深圳宝安', '深圳', '广东', '000000000000', 'https://www.potucs.com/wechat/airport/szx.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('7', '成都双流国际机场', 'CTU', '成都双流', '成都', '四川', '000000000000', 'https://www.potucs.com/wechat/airport/ctu.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('8', '昆明长水国际机场', 'KMG', '昆明长水', '昆明', '云南', '000000000000', 'https://www.potucs.com/wechat/airport/kmg.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('9', '重庆江北国际机场', 'CKG', '重庆江北', '重庆', '重庆', '000000000000', 'https://www.potucs.com/wechat/airport/ckg.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('10', '西安咸阳国际机场', 'XIY', '西安咸阳', '西安', '陕西', '000000000000', 'https://www.potucs.com/wechat/airport/xiy.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('11', '杭州萧山国际机场', 'HGH', '杭州萧山', '杭州', '浙江', '000000000000', 'https://www.potucs.com/wechat/airport/hgh.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('13', '长沙黄花国际机场', 'CSX', '长沙黄花', '长沙', '湖南', '000000000001', 'https://www.potucs.com/wechat/airport/csx.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('14', '南昌昌北国际机场', 'KHN', '南昌昌北', '南昌', '江西', '000000000001', 'https://www.potucs.com/wechat/airport/khn.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('15', '福州长乐国际机场', 'FOC', '福州长乐', '福州', '福建', '000000000001', 'https://www.potucs.com/wechat/airport/foc.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('16', '太原武宿国际机场', 'TYN', '太原武宿', '太原', '山西', '000000000001', 'https://www.potucs.com/wechat/airport/tyn.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('300', '十堰武当山机场', 'WDS', '十堰武当山', '十堰', '湖北', '000000000001', 'https://www.potucs.com/wechat/airport/wds.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('301', '洛阳北郊机场', 'LYA', '洛阳北郊', '洛阳', '河南', '000000000001', 'https://www.potucs.com/wechat/airport/lya.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('302', '鄂尔多斯伊金霍洛国际机场', 'DSN', '鄂尔多斯', '鄂尔多斯', '内蒙古', '000000000001', 'https://www.potucs.com/wechat/airport/dsn.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('303', '巴中恩阳机场', 'BZX', '巴中恩阳', '巴中', '四川', '000000000001', 'https://www.potucs.com/wechat/airport/bzx.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('304', '岳阳三荷机场', 'YYA', '岳阳三荷', '岳阳', '湖南', '000000000001', 'https://www.potucs.com/wechat/airport/yya.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('305', '池州九华山机场', 'JUH', '池州九华山', '池州', '安徽', '000000000001', 'https://www.potucs.com/wechat/airport/juh.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('306', '常德桃花源机场', 'CGD', '常德桃花源', '常德', '湖南', '000000000001', 'https://www.potucs.com/wechat/airport/juh.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('307', '宜春明月山机场', 'YIC', '宜春明月山', '宜春', '江西', '000000000001', 'https://www.potucs.com/wechat/airport/yic.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('308', '长治王村机场', 'CIH', '长治王村', '长治', '山西', '000000000001', 'https://www.potucs.com/wechat/airport/cih.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('309', '赣州黄金机场', 'KOW', '赣州黄金', '赣州', '江西', '000000000001', 'https://www.potucs.com/wechat/airport/kow.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('310', '日照山字河机场', 'RIZ', '日照山字河', '日照', '山东', '000000000001', 'https://www.potucs.com/wechat/airport/riz.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('311', '三明沙县机场', 'SQJ', '三明沙县', '三明', '福建', '000000000001', 'https://www.potucs.com/wechat/airport/sqj.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('312', '景德镇罗家机', 'JDZ', '景德镇罗家', '景德镇', '江西', '000000000001', 'https://www.potucs.com/wechat/airport/jdz.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('313', '兴义万峰林机场', 'ACX', '兴义万峰林', '兴义', '贵州', '000000000001', 'https://www.potucs.com/wechat/airport/acx.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('314', '万州五桥机场', 'WXN', '万州五桥', '万州', '重庆', '000000000001', 'https://www.potucs.com/wechat/airport/wxn.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('315', '泸州云龙机场', 'LZO', '泸州云龙', '泸州', '四川', '000000000001', 'https://www.potucs.com/wechat/airport/lzo.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('316', '昭通机场', 'ZAT', '昭通', '昭通', '云南', '000000000001', 'https://www.potucs.com/wechat/airport/zat.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('317', '济宁曲阜机场', 'JNG', '济宁曲阜', '济宁', '山东', '000000000001', 'https://www.potucs.com/wechat/airport/lzo.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('318', '达州河市机场', 'DAX', '达州河市', '达州', '四川', '000000000001', 'https://www.potucs.com/wechat/airport/dax.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('319', '毕节飞雄机场', 'BFJ', '毕节飞雄', '毕节', '贵州', '000000000001', 'https://www.potucs.com/wechat/airport/bfj.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('320', '邵阳武冈机场', 'WGN', '邵阳武冈', '邵阳', '湖南', '000000000001', 'https://www.potucs.com/wechat/airport/wgn.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('321', '保山云瑞机场', 'BSD', '保山云瑞', '保山', '云南', '000000000001', 'https://www.potucs.com/wechat/airport/bsd.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('322', '衡阳南岳机场', 'HNY', '衡阳南岳', '衡阳', '湖南', '000000000001', 'https://www.potucs.com/wechat/airport/hny.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('323', '井冈山机场', 'JGS', '井冈山', '井冈山', '江西', '000000000001', 'https://www.potucs.com/wechat/airport/jgs.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('326', '南充高坪机场', 'NAO', '南充高坪', '南充', '四川', '000000000001', 'https://www.potucs.com/wechat/airport/nao.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('327', '湛江机场', 'ZHA', '湛江', '湛江', '广东', '000000000001', 'https://www.potucs.com/wechat/airport/zha.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('328', '恩施许家坪机场', 'ENH', '恩施许家坪', '恩施', '湖北', '000000000001', 'https://www.potucs.com/wechat/airport/enh.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('329', '信阳明港机场', 'XAI', '信阳明港', '信阳', '河南', '000000000001', 'https://www.potucs.com/wechat/airport/xai.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('330', '天水麦积山机场', 'THQ', '天水麦积山', '天水', '甘肃', '000000000001', 'https://www.potucs.com/wechat/airport/thq.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('331', '襄阳刘集机场', 'XFN', '襄阳刘集', '襄阳', '湖北', '000000000001', 'https://www.potucs.com/wechat/airport/xfn.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('332', '黔江武陵山机场', 'JIQ', '黔江武陵山机场', '黔江', '重庆', '000000000001', 'https://www.potucs.com/wechat/airport/jiq.png', null, null, null, null, null);
