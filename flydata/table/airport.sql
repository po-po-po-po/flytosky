/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50719
Source Host           : 127.0.0.1:3306
Source Database       : fly

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2020-08-30 21:49:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for airport
-- ----------------------------
DROP TABLE IF EXISTS `airport`;
CREATE TABLE `airport` (
  `id` int(11) DEFAULT NULL,
  `airport_name` varchar(255) DEFAULT NULL,
  `airport_code` varchar(255) NOT NULL,
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
  PRIMARY KEY (`airport_code`),
  KEY `airport_code` (`airport_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of airport
-- ----------------------------
INSERT INTO `airport` VALUES ('313', '兴义万峰林机场', 'ACX', '兴义万峰林', '兴义', '贵州', '000000000001', 'https://www.potucs.com/wechat/airport/acx.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('389', '百色巴马机场', 'AEB', '百色巴马', '百色', '广西', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('346', '安庆天柱山机场', 'AQG', '安庆天柱山', '安庆', '安徽', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('376', '包头东河机场', 'BAV', '包头东河', '包头', '内蒙古', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('319', '毕节飞雄机场', 'BFJ', '毕节飞雄', '毕节', '贵州', '000000000001', 'https://www.potucs.com/wechat/airport/bfj.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('391', '北海福成机场', 'BHY', '北海福成', '北海', '广西', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('370', '秦皇岛北戴河机场', 'BPE', '秦皇岛北戴河', '秦皇岛', '河北', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('321', '保山云瑞机场', 'BSD', '保山云瑞', '保山', '云南', '000000000001', 'https://www.potucs.com/wechat/airport/bsd.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('303', '巴中恩阳机场', 'BZX', '巴中恩阳', '巴中', '四川', '000000000001', 'https://www.potucs.com/wechat/airport/bzx.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('5', '广州白云国际机场', 'CAN', '广州白云', '广州', '广东', '000000000000', 'https://www.potucs.com/wechat/airport/can.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('306', '常德桃花源机场', 'CGD', '常德桃花源', '常德', '湖南', '000000000001', 'https://www.potucs.com/wechat/airport/juh.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('18', '郑州新郑国际机场', 'CGO', '郑州新郑', '郑州', '河南', '000000000000', 'https://www.potucs.com/wechat/airport/cgo.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('363', '赤峰玉龙机场', 'CIF', '赤峰玉龙', '赤峰', '内蒙古', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('308', '长治王村机场', 'CIH', '长治王村', '长治', '山西', '000000000001', 'https://www.potucs.com/wechat/airport/cih.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('9', '重庆江北国际机场', 'CKG', '重庆江北', '重庆', '重庆', '000000000000', 'https://www.potucs.com/wechat/airport/ckg.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('14', '长沙黄花国际机场', 'CSX', '长沙黄花', '长沙', '湖南', '000000000000', 'https://www.potucs.com/wechat/airport/csx.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('7', '成都双流国际机场', 'CTU', '成都双流', '成都', '四川', '000000000000', 'https://www.potucs.com/wechat/airport/ctu.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('337', '常州奔牛国际机场', 'CZX', '常州奔牛', '常州', '江苏', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('382', '大同云冈机场', 'DAT', '大同云冈', '大同', '山西', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('318', '达州河市机场', 'DAX', '达州河市', '达州', '四川', '000000000001', 'https://www.potucs.com/wechat/airport/dax.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('351', '稻城亚丁机场', 'DCY', '稻城亚丁', '稻城', '四川', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('356', '迪庆香格里拉机场', 'DIG', '迪庆香格里拉', '迪庆', '云南', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('368', '大连周水子国际机场', 'DLC', '大连周水子', '大连', '辽宁', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('20', '大理机场', 'DLU', '大理', '大理', '云南', '000000000000', 'https://www.potucs.com/wechat/airport/dlu.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('302', '鄂尔多斯伊金霍洛国际机场', 'DSN', '鄂尔多斯', '鄂尔多斯', '内蒙古', '000000000001', 'https://www.potucs.com/wechat/airport/dsn.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('341', '张家界荷花国际机场', 'DYG', '张家界荷花', '张家界', '湖南', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('328', '恩施许家坪机场', 'ENH', '恩施许家坪', '恩施', '湖北', '000000000001', 'https://www.potucs.com/wechat/airport/enh.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('15', '福州长乐国际机场', 'FOC', '福州长乐', '福州', '福建', '000000000000', 'https://www.potucs.com/wechat/airport/foc.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('355', '格尔木机场', 'GOQ', '格尔木', '格尔木', '青海', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('359', '甘南夏河机场', 'GXH', '甘南夏河', '夏河', '甘肃', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('357', '甘孜格萨尔机场', 'GZG', '甘孜格萨尔', '甘孜格萨尔', '四川', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('29', '海口美兰国际机场', 'HAK', '海口美兰', '海口', '海南', '000000000000', 'https://www.potucs.com/wechat/airport/hak.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('385', '邯郸机场', 'HDG', '邯郸', '邯郸', '河北', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('378', '呼和浩特白塔国际机场', 'HET', '呼和浩特白塔', '呼和浩特', '内蒙古', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('25', '合肥新桥国际机场', 'HFE', '合肥新桥', '合肥', '安徽', '000000000000', 'https://www.potucs.com/wechat/airport/hfe.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('11', '杭州萧山国际机场', 'HGH', '杭州萧山', '杭州', '浙江', '000000000000', 'https://www.potucs.com/wechat/airport/hgh.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('375', '淮安涟水国际机场', 'HIA', '淮安涟水', '淮安', '江苏', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('361', '怀化芷江机场', 'HJJ', '怀化芷江', '怀化', '湖南', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('367', '乌兰浩特机场', 'HLH', '乌兰浩特', '乌兰浩特', '内蒙古', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('322', '衡阳南岳机场', 'HNY', '衡阳南岳', '衡阳', '湖南', '000000000001', 'https://www.potucs.com/wechat/airport/hny.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('23', '哈尔滨太平国际机场', 'HRB', '哈尔滨太平', '哈尔滨', '黑龙江', '000000000000', 'https://www.potucs.com/wechat/airport/hrb.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('349', '舟山普陀山机场', 'HSN', '舟山普陀山', '舟山', '浙江', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('380', '银川河东国际机场', 'INC', '银川河东', '银川', '宁夏', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('312', '景德镇罗家机', 'JDZ', '景德镇罗家', '景德镇', '江西', '000000000001', 'https://www.potucs.com/wechat/airport/jdz.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('323', '井冈山机场', 'JGS', '井冈山', '井冈山', '江西', '000000000001', 'https://www.potucs.com/wechat/airport/jgs.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('344', '西双版纳嘎洒国际机场', 'JHG', '西双版纳嘎洒', '西双版纳', '云南', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('332', '黔江武陵山机场', 'JIQ', '黔江武陵山', '黔江', '重庆', '000000000001', 'https://www.potucs.com/wechat/airport/jiq.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('390', '泉州晋江国际机场', 'JJN', '泉州晋江', '泉州', '福建', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('317', '济宁曲阜机场', 'JNG', '济宁曲阜', '济宁', '山东', '000000000001', 'https://www.potucs.com/wechat/airport/lzo.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('379', '锦州锦州湾机场', 'JNZ', '锦州锦州湾', '锦州', '辽宁', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('305', '池州九华山机场', 'JUH', '池州九华山', '池州', '安徽', '000000000001', 'https://www.potucs.com/wechat/airport/juh.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('358', '甘孜康定机场', 'KGT', '甘孜康定', '甘孜康定', '四川', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('159', '南昌昌北国际机场', 'KHN', '南昌昌北', '南昌', '江西', '000000000001', 'https://www.potucs.com/wechat/airport/khn.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('8', '昆明长水国际机场', 'KMG', '昆明长水', '昆明', '云南', '000000000000', 'https://www.potucs.com/wechat/airport/kmg.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('309', '赣州黄金机场', 'KOW', '赣州黄金', '赣州', '江西', '000000000001', 'https://www.potucs.com/wechat/airport/kow.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('26', '贵阳龙洞堡国际机场', 'KWE', '贵阳龙洞堡', '贵阳', '贵州', '000000000000', 'https://www.potucs.com/wechat/airport/kwe.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('350', '桂林两江国际机场', 'KWL', '桂林两江', '桂林', '广西', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('343', '龙岩冠豸山机场', 'LCX', '龙岩冠豸山', '龙岩', '福建', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('366', '临汾尧都机场', 'LFQ', '临汾尧都', '临汾', '山西', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('394', '兰州中川国际机场', 'LHW', '兰州中川', '兰州', '甘肃', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('21', '丽江三义国际机场', 'LJG', '丽江三义', '丽江', '云南', '000000000000', 'https://www.potucs.com/wechat/airport/ljg.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('19', '拉萨贡嘎国际机场', 'LXA', '拉萨贡嘎', '拉萨', '西藏', '000000000000', 'https://www.potucs.com/wechat/airport/lxa.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('301', '洛阳北郊机场', 'LYA', '洛阳北郊', '洛阳', '河南', '000000000001', 'https://www.potucs.com/wechat/airport/lya.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('381', '连云港白塔埠机场', 'LYG', '连云港白塔埠', '连云港', '江苏', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('348', '临沂启阳机场', 'LYI', '临沂启阳', '临沂', '山东', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('342', '柳州白莲机场', 'LZH', '柳州白莲', '柳州', '广西', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('315', '泸州云龙机场', 'LZO', '泸州云龙', '泸州', '四川', '000000000001', 'https://www.potucs.com/wechat/airport/lzo.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('393', '绵阳南郊机场', 'MIG', '绵阳南郊', '绵阳', '四川', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('388', '梅州梅县机场', 'MXZ', '梅州梅县', '梅州', '广东', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('326', '南充高坪机场', 'NAO', '南充高坪', '南充', '四川', '000000000001', 'https://www.potucs.com/wechat/airport/nao.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('24', '宁波栎社国际机场', 'NGB', '宁波栎社', '宁波', '浙江', '000000000000', 'https://www.potucs.com/wechat/airport/ngb.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('13', '南京禄口国际机场', 'NKG', '南京禄口', '南京', '江苏', '000000000000', 'https://www.potucs.com/wechat/airport/nkg.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('22', '南宁吴圩国际机场', 'NNG', '南宁吴圩', '南宁', '广西', '000000000000', 'https://www.potucs.com/wechat/airport/nng.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('353', '南阳姜营机场', 'NNY', '南阳姜营', '南阳', '河南', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('372', '南通兴东国际机场', 'NTG', '南通兴东', '南通', '江苏', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('1', '北京首都国际机场', 'PEK', '北京首都', '北京首都', '北京', '000000000000', 'https://www.potucs.com/wechat/airport/pek.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('2', '北京大兴国际机场', 'PKX', '北京大兴', '北京大兴', '北京', '000000000000', 'https://www.potucs.com/wechat/airport/pkx.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('3', '上海浦东国际机场', 'PVG', '上海浦东', '上海浦东', '上海', '000000000000', 'https://www.potucs.com/wechat/airport/pvg.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('310', '日照山字河机场', 'RIZ', '日照山字河', '日照', '山东', '000000000001', 'https://www.potucs.com/wechat/airport/riz.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('4', '上海虹桥国际机场', 'SHA', '上海虹桥', '上海虹桥', '上海', '000000000000', 'https://www.potucs.com/wechat/airport/sha.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('392', '石家庄正定国际机场', 'SJW', '石家庄正定', '石家庄', '河北', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('334', '上饶三清山机场', 'SQD', '上饶三清山', '上饶', '江西', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('311', '三明沙县机场', 'SQJ', '三明沙县', '三明', '福建', '000000000001', 'https://www.potucs.com/wechat/airport/sqj.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('361', '揭阳潮汕国际机场', 'SWA', '揭阳潮汕', '揭阳', '广东', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('6', '深圳宝安国际机场', 'SZX', '深圳宝安', '深圳', '广东', '000000000000', 'https://www.potucs.com/wechat/airport/szx.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('12', '青岛流亭国际机场', 'TAO', '青岛流亭', '青岛', '山东', '000000000000', 'https://www.potucs.com/wechat/airport/tao.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('363', '铜仁凤凰机场', 'TEN', '铜仁凤凰', '铜仁', '贵州', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('362', '通辽机场', 'TGO', '通辽', '通辽', '内蒙古', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('330', '天水麦积山机场', 'THQ', '天水麦积山', '天水', '甘肃', '000000000001', 'https://www.potucs.com/wechat/airport/thq.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('371', '济南遥墙国际机场', 'TNA', '济南遥墙', '济南', '山东', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('16', '天津滨海国际机场', 'TSN', '天津滨海', '天津', '天津', '000000000000', 'https://www.potucs.com/wechat/airport/tsn.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('373', '唐山三女河机场', 'TVS', '唐山三女河', '唐山', '河北', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('364', '黄山屯溪国际机场', 'TXN', '黄山屯溪', '黄山', '安徽', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('161', '太原武宿国际机场', 'TYN', '太原武宿', '太原', '山西', '000000000001', 'https://www.potucs.com/wechat/airport/tyn.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('30', '乌鲁木齐地窝堡国际机场', 'URC', '乌鲁木齐地窝堡', '乌鲁木齐', '新建', '000000000000', 'https://www.potucs.com/wechat/airport/urc.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('377', '榆林榆阳机场', 'UYN', '榆林榆阳', '榆林', '陕西', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('300', '十堰武当山机场', 'WDS', '十堰武当山', '十堰', '湖北', '000000000001', 'https://www.potucs.com/wechat/airport/wds.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('364', '威海大水泊机场', 'WEH', '威海大水泊', '威海', '山东', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('320', '邵阳武冈机场', 'WGN', '邵阳武冈', '邵阳', '湖南', '000000000001', 'https://www.potucs.com/wechat/airport/wgn.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('340', '遵义茅台机场', 'WMT', '遵义茅台', '遵义', '贵州', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('27', '武汉天河国际机场', 'WUH', '武汉天河', '武汉', '湖北', '000000000000', 'https://www.potucs.com/wechat/airport/wuh.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('333', '武夷山机场', 'WUS', '武夷山机场', '武夷山', '福建', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('384', '忻州五台山机场', 'WUT', '忻州五台山', '忻州', '山西', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('345', '梧州西江机场', 'WUZ', '梧州西江', '梧州', '广西', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('314', '万州五桥机场', 'WXN', '万州五桥', '万州', '重庆', '000000000001', 'https://www.potucs.com/wechat/airport/wxn.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('329', '信阳明港机场', 'XAI', '信阳明港', '信阳', '河南', '000000000001', 'https://www.potucs.com/wechat/airport/xai.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('331', '襄阳刘集机场', 'XFN', '襄阳刘集', '襄阳', '湖北', '000000000001', 'https://www.potucs.com/wechat/airport/xfn.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('10', '西安咸阳国际机场', 'XIY', '西安咸阳', '西安', '陕西', '000000000000', 'https://www.potucs.com/wechat/airport/xiy.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('17', '厦门高崎国际机场', 'XMN', '厦门高崎', '厦门', '福建', '000000000000', 'https://www.potucs.com/wechat/airport/xmn.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('28', '西宁曹家堡国际机场', 'XNN', '西宁曹家堡', '西宁', '青海', '000000000000', 'https://www.potucs.com/wechat/airport/xnn.png', null, null, null, null, null);
INSERT INTO `airport` VALUES ('374', '徐州观音国际机场', 'XUZ', '徐州观音', '徐州', '江苏', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('352', '宜宾五粮液机场', 'YBP', '宜宾五粮液', '宜宾', '四川', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('387', '运城关公机场', 'YCU', '运城关公', '运城', '山西', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('307', '宜春明月山机场', 'YIC', '宜春明月山', '宜春', '江西', '000000000001', 'https://www.potucs.com/wechat/airport/yic.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('365', '宜昌三峡机场', 'YIH', '宜昌三峡', '宜昌', '湖北', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('369', '烟台蓬莱国际机场', 'YNT', '烟台蓬莱', '烟台', '山东', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('347', '盐城南洋国际机场', 'YNZ', '盐城南洋', '盐城', '江苏', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('383', '扬州泰州国际机场', 'YTY', '扬州泰州', '扬州', '江苏', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('386', '玉树巴塘机场', 'YUS', '玉树巴塘', '玉树', '青海', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('304', '岳阳三荷机场', 'YYA', '岳阳三荷', '岳阳', '湖南', '000000000001', 'https://www.potucs.com/wechat/airport/yya.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('316', '昭通机场', 'ZAT', '昭通', '昭通', '云南', '000000000001', 'https://www.potucs.com/wechat/airport/zat.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('327', '湛江机场', 'ZHA', '湛江', '湛江', '广东', '000000000001', 'https://www.potucs.com/wechat/airport/zha.png', null, null, null, null, '2020-08-28 11:05:36');
INSERT INTO `airport` VALUES ('361', '张家口宁远机场', 'ZQZ', '张家口宁远', '张家口', '河北', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('362', '珠海金湾机场', 'ZUH', '珠海金湾', '珠海', '广东', '000000000001', null, null, null, null, null, null);
INSERT INTO `airport` VALUES ('360', '遵义新舟机场', 'ZYI', '遵义新舟', '遵义新舟', '贵州', '000000000001', null, null, null, null, null, null);
