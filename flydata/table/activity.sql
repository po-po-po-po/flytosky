/*
Navicat MySQL Data Transfer

Source Server         : po
Source Server Version : 50649
Source Host           : 49.232.228.221:3306
Source Database       : fly

Target Server Type    : MYSQL
Target Server Version : 50649
File Encoding         : 65001

Date: 2020-09-17 15:06:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `airlines_code` varchar(4) DEFAULT NULL,
  `banner_img_url` varchar(100) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `status` int(255) DEFAULT NULL,
  `brief` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('1', 'MU', 'https://www.potucs.com/wechat/activity/mu/zaowanfei.png', '周一到五早晚飞', '<p style=\"text-align:center;\">\r\n	<img src=\"https://www.potucs.com/wechat/activity/mu/zaowanfei/1.jpeg\" alt=\"\" /> \r\n</p>\r\n<h2 style=\"text-align:center;\">\r\n	“早晚随心飞”产品规则\r\n</h2>\r\n<blockquote>\r\n</blockquote>\r\n<blockquote>\r\n	<span style=\"font-family:&quot;font-size:10px;\"><span style=\"font-size:10px;\">一、产</span><span style=\"font-size:10px;\">品概况<br />\r\n</span></span><span style=\"font-family:&quot;font-size:10px;\"><span style=\"font-size:10px;\">1.“早晚随心飞”是中国东方航空为降低旅客出行成本，促进社会经济循环的一款航空旅行套票产品，适用于周一至周五早晚出行的旅客，用户购买后可在指定时间段内不限次数乘坐东航、上航国内航班经济舱旅行；<br />\r\n</span></span><span style=\"font-family:&quot;font-size:10px;\"><span style=\"font-size:10px;\">2.销售日期：2020年8月10日起，限量销售，售完为止；<br />\r\n</span></span><span style=\"font-family:&quot;font-size:10px;\"><span style=\"font-size:10px;\">3.适用航线：东航、上航国内航线（除港澳台）；<br />\r\n</span></span><span style=\"font-family:&quot;font-size:10px;\"><span style=\"font-size:10px;\">4.适用航班：每周一至周五计划起飞时间早08:00及以前和晚20:00及以后的东航、上航实际承运航班，有经济舱座位销售即可订票；<br />\r\n</span></span><span style=\"font-family:&quot;font-size:10px;\"><span style=\"font-size:10px;\">5.适用舱位：经济舱；<br />\r\n</span></span><span style=\"font-family:&quot;font-size:10px;\"><span style=\"font-size:10px;\">6.航班日期：2020年8月13日至2021年6月30日（春运期间2021年1月27日-2021年2月28日除外）；<br />\r\n</span></span><span style=\"font-family:&quot;font-size:10px;\"><span style=\"font-size:10px;\">7.适用期限：自乘机人首次完成机票兑换之日起180天内有效，如所购产品涉及春运日期，可兑航班日期顺延，但不得迟于2021年6月30日；<br />\r\n</span></span><span style=\"font-family:&quot;font-size:10px;\"><span style=\"font-size:10px;\">8.适用客群：技术原因，暂仅支持中国居民身份证持有者。</span></span> \r\n</blockquote>\r\n<blockquote>\r\n	<span style=\"font-family:&quot;font-size:10px;\"><span style=\"font-size:10px;\">二、产品购买规则</span><br />\r\n</span><span style=\"font-family:&quot;font-size:10px;\"><span style=\"font-size:10px;\">1.购买限额：16周岁以上自然人旅客限购10套，企事业法人客户单次限购100套。前述法人客户是指在东航的企业客户系统中通过验证的法人单位和其名下员工；			大额支付请通过网银或银行柜面进行，并须在汇款时注明系统发送的“线下付款识别码”。</span><br />\r\n</span><span style=\"font-family:&quot;font-size:10px;\"><span style=\"font-size:10px;\">2.绑定时限：购买人可在购买后15天内绑定乘机人（2周岁以上），企事业团体及其采购人员绑定的乘机人须为对应企业员工，一经绑定不得变更；</span><br />\r\n</span><span style=\"font-family:&quot;font-size:10px;\"><span style=\"font-size:10px;\">3.退款规则：产品有效期内如未订座兑换机票可全额退款，逾期未绑定或到期未使用自动退款，一经订座兑换机票不可退款，退款仅限退还购买人。</span><br />\r\n</span><span style=\"font-family:&quot;font-size:10px;\"><span style=\"font-size:10px;\">三、使用规则</span><br />\r\n</span><span style=\"font-family:&quot;font-size:10px;\"><span style=\"font-size:10px;\">1.订座兑票时限：使用本产品须提前订座兑换所需航班机票，最迟不得晚于起飞前3天（含），如无法成行须及时退票，最迟不得晚于起飞前2天（含）退票；</span><br />\r\n</span><span style=\"font-family:&quot;font-size:10px;\"><span style=\"font-size:10px;\">2.订座兑票渠道：东方航空APP；</span><br />\r\n</span><span style=\"font-family:&quot;font-size:10px;\"><span style=\"font-size:10px;\">3.乘机人：须为已通过实名验证（开通东航钱包账户）的东方万里行会员，不满18周岁的乘机人无需开通钱包，2-12周岁儿童乘机人需与已绑定“早晚随心飞”成人同时订座；</span><br />\r\n</span><span style=\"font-family:&quot;font-size:10px;\"><span style=\"font-size:10px;\">4.订票数量：产品不限订座兑换机票次数，但同时仅可存在3段未使用的行程，同一日期同一始发地仅可存在1段未使用的行程；</span><br />\r\n</span><span style=\"font-family:&quot;font-size:10px;\"><span style=\"font-size:10px;\">5.旅行税费：乘机人订票时另行支付；</span><br />\r\n</span><span style=\"font-family:&quot;font-size:10px;\"><span style=\"font-size:10px;\">6.签转退票：不得签转、不得改期、不得退票，退票仅退还未使用航段税费；</span><br />\r\n</span><span style=\"font-family:&quot;font-size:10px;\"><span style=\"font-size:10px;\">7.会员礼遇：可享受常规会员礼遇，无定级次数, 无定级里程，无白金卡免费升舱。已使用的“早晚随心飞”产品计定级消费金额，享受新会员体系积分，2021年6月30日产品结束及新会员系统上线后统一记入被绑定人（使用人）会员账户；</span><br />\r\n</span><span style=\"font-family:&quot;font-size:10px;\"><span style=\"font-size:10px;\">8.服务标准：同常规，但航班发生取消延误时，享受普通旅客服务和相应的航班保护安排，不得自行指定航班和日期，无现金赔偿或补偿。</span><br />\r\n</span><span style=\"font-family:&quot;font-size:10px;\"><span style=\"font-size:10px;\">四、特别限制</span><br />\r\n</span><span style=\"font-family:&quot;font-size:10px;\"><span style=\"font-size:10px;\">弃乘限制：旅客订座兑换机票后应该按所订航班成行，如果计划有变无法成行应至少提前2天退票；如发生3个航班订座兑票后未乘坐且未在规定时间前办理退票，所购“早晚随心飞”产品将自动失效。</span><br />\r\n</span><span style=\"font-family:&quot;font-size:10px;\"><span style=\"font-size:10px;\">非因旅客原因造成的“弃乘”不计“弃乘”次数。</span><br />\r\n</span><span style=\"font-family:&quot;font-size:10px;\"><span style=\"font-size:10px;\">五、报销凭证</span><br />\r\n</span><span style=\"font-family:&quot;font-size:10px;\"><span style=\"font-size:10px;\">企事业单位和个人使用产品订座换票后可通过东方航空APP开具电子发票，企事业单位可开具企业发票，个人发票抬头为被绑定人（使用人）个人抬头。</span><br />\r\n</span><span style=\"font-family:&quot;font-size:10px;\">六、客服热线</span> \r\n	<p>\r\n		<span style=\"font-family:&quot;font-size:10px;\"><span style=\"font-size:10px;\">如有疑问详询东航24小时客服热线：95</span><span><span style=\"font-size:10px;\">530。</span><span style=\"font-size:10px;\">&nbsp;</span></span></span> \r\n	</p>\r\n</blockquote>', '0', null, '3');
INSERT INTO `activity` VALUES ('2', 'MU', 'https://www.potucs.com/wechat/activity/mu/suixinfei.png', '周末随心飞', '<p style=\"text-align:center;font-size:24px;font-family:&quot;font-weight:500;color:#31587D;text-indent:30px;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;font-size:24px;font-family:&quot;font-weight:500;color:#31587D;text-indent:30px;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;font-size:24px;font-family:&quot;font-weight:500;color:#31587D;text-indent:30px;\">\r\n	<img src=\"https://www.potucs.com/wechat/activity/over.jpg\" alt=\"\" />\r\n</p>', '1', null, '4');
INSERT INTO `activity` VALUES ('3', 'CZ', 'https://www.potucs.com/wechat/activity/cz/kuailefei.png', '快乐飞', null, '3', null, '1');
INSERT INTO `activity` VALUES ('4', 'MU', 'https://www.potucs.com/wechat/activity/mu/wanqufei.png', '湾区随心飞', '<h2 style=\"text-align:center;\">\r\n	<img src=\"https://www.potucs.com/wechat/activity/mu/wanqufei/1.png\" alt=\"\" /> \r\n</h2>\r\n<h2 style=\"text-align:center;\">\r\n	“湾区随心飞”产品规则\r\n</h2>\r\n<blockquote>\r\n	<p>\r\n		<span style=\"font-size:10px;\">一、产品概况</span>\r\n	</p>\r\n	<div class=\"popup\">\r\n		<div class=\"content\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">1.“湾区随心飞”是中国东方航空为降低旅客出行成本，服务粤港澳大湾区建设和经济发展，服务全面开放新格局的一款航空旅行套票产品，用户购买后可在有效期内不限次数乘坐周一至周五始发或到达站涉及广东省、香港特别行政区和澳门特别行政区的东航、上航实际承运的国内及地区航班经济舱旅行；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup\">\r\n		<div class=\"content\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">2.销售日期：2020年9月10日起，限量销售，售完为止；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup\">\r\n		<div class=\"content\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">3.适用航班：东航、上航航班始发或到达站涉及广东省、香港特别行政区和澳门特别行政区的国内及地区直达航班（含同航班号的经停航班）；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup\">\r\n		<div class=\"content\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">4.适用舱位：周一至周五东航、上航实际承运航班经济舱，有经济舱座位销售即可订票（预计10月初支持付费升舱）；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup\">\r\n		<div class=\"content\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">5.航班日期：2020年9月14日至2021年6月30日（国庆期间2020年9月30日、10月1日、2日、7日、8日，春运期间2021年1月27日-2021年2月28日除外）；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup\">\r\n		<div class=\"content\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">6.适用期限：自乘机人首次完成机票兑换之日起180天内有效，如所购产品涉及国庆、春运日期，可兑航班日期顺延，但不得迟于2021年6月30日；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup\">\r\n		<div class=\"content\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">7.适用群体：中国居民身份证持有者、港澳台同胞。</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup\">\r\n		<div class=\"content\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">二、产品购买规则</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup\">\r\n		<div class=\"content\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">1.购买限额：16周岁以上自然人旅客限购10套；企事业法人客户单次限购100套。前述法人客户是指在东航的企业客户系统中通过验证的法人单位和其名下员工；			大额支付请通过网银或银行柜面进行，并须在汇款时注明系统发送的“线下付款识别码”；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup\">\r\n		<div class=\"content\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">2.绑定限制：购买人可在购买后15天内绑定乘机人（2周岁以上），企事业单位及其采购人员绑定的乘机人需为对应企业员工，一经绑定不得变更，港澳台同胞需在绑定前完成东方万里行会员注册；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup\">\r\n		<div class=\"content\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">3.退款规则：产品有效期内如未订座兑换机票可全额退款，一经订座兑换机票不可退款，退款仅限退还购买人。</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup\">\r\n		<div class=\"content\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">三、使用规则</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup\">\r\n		<div class=\"content\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">1.订座兑票时限：使用本产品须提前订座兑换所需航班机票，最迟不得晚于起飞前3天（含），如无法成行须至少提前2天（含）退票；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup\">\r\n		<div class=\"content\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">2.订座兑票渠道：东方航空APP；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup\">\r\n		<div class=\"content\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">3.订座兑票航程类型：支持单程、往返程预订；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup\">\r\n		<div class=\"content\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">4.乘机人：须通过开通东航钱包实名认证（港澳台同胞、不满18周岁的乘机人可通过注册东方万里行会员认证）。乘机人会员账户内的身份证件信息需满足所乘航班要求。2-12周岁儿童需与已绑定“湾区随心飞”成人同时订座；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup\">\r\n		<div class=\"content\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">5.订票数量：产品不限订座兑换机票次数，但同时仅可存在3段未使用的行程，同一日期同一始发地仅可存在1段未使用的行程；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup\">\r\n		<div class=\"content\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">6.旅行税费：乘机人订票时另行支付；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup\">\r\n		<div class=\"content\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">7.签转退票：不得签转、不得改期，退票仅退还未使用航段税费，燃油附加费不予退还；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup\">\r\n		<div class=\"content\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">8.会员礼遇：可享受常规会员礼遇，无定级次数, 无定级里程，无白金卡免费升舱。已使用的“湾区随心飞”产品计定级消费金额，享受新会员体系积分，2021年6月30日产品结束及新会员系统上线后统一记入乘机人会员账户；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup\">\r\n		<div class=\"content\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">9.服务标准：航班发生取消延误时，享受普通旅客服务和相应的航班保护安排，但不得自行指定航班和日期，无现金赔偿或补偿。</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup\">\r\n		<div class=\"content\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">四、特别限制</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup\">\r\n		<div class=\"content\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">弃乘限制：旅客订票兑换机票后应该按所订航班成行，如果计划有变无法成行应至少提前2天退票；如发生3次订座兑换后未乘坐且未在规定时间前办理退票，所购“湾区随心飞”产品将自动失效。</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup\">\r\n		<div class=\"content\">\r\n			<p>\r\n				<span style=\"font-size:10px;\"> 非因旅客原因造成的“弃乘”不计“弃乘”次数。</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup\">\r\n		<div class=\"content\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">五、报销凭证</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup\">\r\n		<div class=\"content\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">企事业单位和个人使用产品订座换票后可通过东方航空APP开具电子发票，企事业单位可开具企业发票，个人发票抬头为乘机人本人。</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup\">\r\n		<div class=\"content\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">六、客服热线</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup\">\r\n		<div class=\"content\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">如有疑问详询东航24小时客服热线：95530。</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<div class=\"title\">\r\n				<span style=\"font-size:10px;\">“西域随心飞”产品规则</span>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">一、产品概况</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">1.“西域随心飞”是中国东方航空为了响应国家区域协调发展的新要求，服务西部大开发形成新格局，助力丝绸之路经济带高质量发展的一款航空旅行套票产品，用户购买后可在有效期内不限次数乘坐周一至周五始发或到达站涉及陕西省、甘肃省、青海省、新疆维吾尔自治区和宁夏回族自治区的东航、上航国内航班经济舱旅行；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">2.销售日期：2020年9月10日起，限量销售，售完为止；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">3.适用航班：东航、上航航班始发或到达站涉及陕西省、甘肃省、青海省、新疆维吾尔自治区和宁夏回族自治区的国内直达航班（含同航班号的经停航班）；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">4.适用舱位：每周一至周五东航、上航实际承运航班经济舱，有经济舱座位销售即可订票（预计10月初支持付费升舱）；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">5.航班日期：2020年9月14日至2021年6月30日（国庆期间2020年9月30日、10月1日、2日、7日、8日，春运期间2021年1月27日-2021年2月28日除外）；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">6.适用期限：自乘机人首次完成机票兑换之日起180天内有效，如所购产品涉及国庆、春运日期，可兑航班日期顺延，但不得迟于2021年6月30日；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">7.适用群体：中国居民身份证持有者。</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">二、产品购买规则</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">1.购买限额：16周岁以上自然人旅客限购10套；企事业法人客户单次限购100套。前述法人客户是指在东航的企业客户系统中通过验证的法人单位和其名下员工；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\"> 大额支付请通过网银或银行柜面进行，并须在汇款时注明系统发送的“线下付款识别码”；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">2.绑定限制：购买人可在购买后15天内绑定乘机人（2周岁以上），企事业单位及其采购人员绑定的乘机人需为对应企业员工，一经绑定不得变更；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">3.退款规则：产品有效期内如未订座兑换机票可全额退款，一经订座兑换机票不可退款，退款仅限退还购买人。</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">三、使用规则</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">1.订座兑票时限：使用本产品须提前订座兑换所需航班机票，最迟不得晚于起飞前3天（含），如无法成行须至少提前2天（含）退票；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">2.订座兑票渠道：东方航空APP；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">3.订座兑票航程类型：支持单程、往返程预订；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">4.乘机人：须通过开通东航钱包实名认证， 乘机人会员账户内的身份证件信息需满足所乘航班要求，不满18周岁的乘机人可通过注册东方万里行会员认证。2-12周岁儿童需与已绑定“西域随心飞”成人同时订座；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">5.订票数量：产品不限订座兑换机票次数，但同时仅可存在3段未使用的行程，同一日期同一始发地仅可存在1段未使用的行程；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">6.旅行税费：乘机人订票时另行支付；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">7.签转退票：不得签转、不得改期、退票仅退还未使用航段税费，燃油附加费不予退还；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">8.会员礼遇：可享受常规会员礼遇，无定级次数,无定级里程，无白金卡免费升舱。已使用的“西域随心飞”产品计定级消费金额，享受新会员体系积分，2021年6月30日产品结束及新会员系统上线后统一记入乘机人会员账户；</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">9.服务标准：航班发生取消延误时，享受普通旅客服务和相应的航班保护安排，但不得自行指定航班和日期，无现金赔偿或补偿。</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">四、特别限制</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">弃乘限制：旅客订座兑换机票后应该按所订航班成行，如果计划有变无法成行应至少提前2天退票；如发生3个航班订座兑票后未乘坐且未在规定时间前办理退票，所购“西域随心飞”产品将自动失效。</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\"> 非因旅客原因造成的“弃乘”不计“弃乘”次数。</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">五、报销凭证</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">企事业单位和个人使用产品订座换票后可通过东方航空APP开具电子发票，企事业单位可开具企业发票，个人发票抬头为乘机人本人。</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">六、客服热线</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"popup1\">\r\n		<div class=\"content1\">\r\n			<p>\r\n				<span style=\"font-size:10px;\">如有疑问详询东航24小时客服热线：95530。</span>\r\n			</p>\r\n		</div>\r\n	</div>\r\n</blockquote>\r\n<div class=\"popup1\">\r\n	<div class=\"content1\">\r\n		<div class=\"close1\">\r\n		</div>\r\n	</div>\r\n</div>\r\n<!--\r\n<div class=\"bg2\">\r\n</div>\r\n<div class=\"bg3\">\r\n</div>\r\n<div class=\"bg4\">\r\n</div>\r\n<div class=\"bg5\">\r\n</div>\r\n-->\r\n<p>\r\n	<br />\r\n</p>', '0', null, '1');
INSERT INTO `activity` VALUES ('5', 'MU', 'https://www.potucs.com/wechat/activity/mu/xiyufei.png', '西域随心飞', '<h1 style=\"text-align:center;\">\r\n	<img src=\"https://www.potucs.com/wechat/activity/mu/xiyufei/1.png\" alt=\"\" /> \r\n</h1>\r\n<h2 style=\"text-align:center;\">\r\n	<span style=\"font-family:KaiTi_GB2312;\">“西域随心飞”产品规则</span> \r\n</h2>\r\n<blockquote>\r\n	<p>\r\n		<span style=\"color:#000000;font-family:KaiTi_GB2312;font-size:10px;\">一、产品概况</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-family:KaiTi_GB2312;font-size:10px;color:#000000;\">1.“西域随心飞”是中国东方航空为了响应国家区域协调发展的新要求，服务西部大开发形成新格局，助力丝绸之路经济带高质量发展的一款航空旅行套票产品，用户购买后可在有效期内不限次数乘坐周一至周五始发或到达站涉及陕西省、甘肃省、青海省、新疆维吾尔自治区和宁夏回族自治区的东航、上航国内航班经济舱旅行；</span>\r\n	</p>\r\n<span style=\"font-family:KaiTi_GB2312;font-size:10px;color:#000000;\">2.销售日期：2020年9月10日起，限量销售，售完为止；<br />\r\n</span><span style=\"font-family:KaiTi_GB2312;font-size:10px;color:#000000;\"> 3.适用航班：东航、上航航班始发或到达站涉及陕西省、甘肃省、青海省、新疆维吾尔自治区和宁夏回族自治区的国内直达航班（含同航班号的经停航班）；<br />\r\n</span><span style=\"font-family:KaiTi_GB2312;font-size:10px;color:#000000;\"> 4.适用舱位：每周一至周五东航、上航实际承运航班经济舱，有经济舱座位销售即可订票（预计10月初支持付费升舱）；</span>\r\n	<p>\r\n		<span style=\"font-family:KaiTi_GB2312;font-size:10px;color:#000000;\"> 5.航班日期：2020年9月14日至2021年6月30日（国庆期间2020年9月30日、10月1日、2日、7日、8日，春运期间2021年1月27日-2021年2月28日除外）；</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-family:KaiTi_GB2312;font-size:10px;color:#000000;\">6.适用期</span><span style=\"font-family:KaiTi_GB2312;font-size:10px;color:#000000;\">限：自乘机人首次完成机票兑换之日起180天内有效，如所购产品涉及国庆、春运日期，可兑航班日期顺延，但不得迟于2021年6月30日；</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-family:KaiTi_GB2312;font-size:10px;color:#000000;\"> 7.适用群体：中国居民身份证持有者。</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"color:#000000;font-family:KaiTi_GB2312;font-size:10px;\">二、产品购买规则</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-family:KaiTi_GB2312;font-size:10px;color:#000000;\">1.购买限额：16周岁以上自然人旅客限购10套；企事业法人客户单次限购100套。前述法人客户是指在东航的企业客户系统中通过验证的法人单位和其名下员工；</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-family:KaiTi_GB2312;font-size:10px;color:#000000;\"> 大额支付请通过网银或银行柜面进行，并须在汇款时注明系统发送的“线下付款识别码”；</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-family:KaiTi_GB2312;font-size:10px;color:#000000;\"> 2.绑定限制：购买人可在购买后15天内绑定乘机人（2周岁以上），企事业单位及其采购人员绑定的乘机人需为对应企业员工，一经绑定不得变更；</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-family:KaiTi_GB2312;font-size:10px;color:#000000;\">3.退款规则：产品有效期内如未订座兑换机票可全额退款，一经订座兑换机票不可退款，退款仅限退还购买人。</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"color:#000000;font-family:KaiTi_GB2312;font-size:10px;\">三、使用规则</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-family:KaiTi_GB2312;font-size:10px;color:#000000;\">1.订座兑票时限：使用本产品须提前订座兑换所需航班机票，最迟不得晚于起飞前3天（含），如无法成行须至少提前2天（含）退票；</span>\r\n	</p>\r\n<span style=\"font-family:KaiTi_GB2312;font-size:10px;color:#000000;\">2.订座兑票渠道：东方航空APP；<br />\r\n</span><span style=\"font-family:KaiTi_GB2312;font-size:10px;color:#000000;\"> 3.订座兑票航程类型：支持单程、往返程预订；<br />\r\n</span><span style=\"font-family:KaiTi_GB2312;font-size:10px;color:#000000;\"> 4.乘机人：须通过开通东航钱包实名认证， 乘机人会员账户内的身份证件信息需满足所乘航班要求，不满18周岁的乘机人可通过注册东方万里行会员认证。2-12周岁儿童需与已绑定“西域随心飞”成人同时订座；<br />\r\n</span><span style=\"font-family:KaiTi_GB2312;font-size:10px;color:#000000;\"> 5.订票数量：产品不限订座兑换机票次数，但同时仅可存在3段未使用的行程，同一日期同一始发地仅可存在1段未使用的行程；<br />\r\n</span><span style=\"font-family:KaiTi_GB2312;font-size:10px;color:#000000;\"> 6.旅行税费：乘机人订票时另行支付；<br />\r\n</span><span style=\"font-family:KaiTi_GB2312;font-size:10px;color:#000000;\"> 7.签转退票：不得签转、不得改期、退票仅退还未使用航段税费，燃油附加费不予退还；<br />\r\n</span><span style=\"font-family:KaiTi_GB2312;font-size:10px;color:#000000;\"> 8.会员礼遇：可享受常规会员礼遇，无定级次数,无定级里程，无白金卡免费升舱。已使用的“西域随心飞”产品计定级消费金额，享受新会员体系积分，2021年6月30日产品结束及新会员系统上线后统一记入乘机人会员账户；<br />\r\n</span><span style=\"font-family:KaiTi_GB2312;font-size:10px;color:#000000;\"> 9.服务标准：航班发生取消延误时，享受普通旅客服务和相应的航班保护安排，但不得自行指定航班和日期，无现金赔偿或补偿。</span>\r\n	<p>\r\n		<span style=\"color:#000000;font-family:KaiTi_GB2312;font-size:10px;\">四、特别限制</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-family:KaiTi_GB2312;font-size:10px;color:#000000;\">弃乘限制：旅客订座兑换机票后应该按所订航班成行，如果计划有变无法成行应至少提前2天退票；如发生3个航班订座兑票后未乘坐且未在规定时间前办理退票，所购“西域随心飞”产品将自动失效。</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-family:KaiTi_GB2312;font-size:10px;color:#000000;\"> 非因旅客原因造成的“弃乘”不计“弃乘”次数。</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"color:#000000;font-family:KaiTi_GB2312;font-size:10px;\">五、报销凭证</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-family:KaiTi_GB2312;font-size:10px;color:#000000;\">企事业单位和个人使用产品订座换票后可通过东方航空APP开具电子发票，企事业单位可开具企业发票，个人发票抬头为乘机人本人。</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"color:#000000;font-family:KaiTi_GB2312;font-size:10px;\">六、客服热线</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-family:KaiTi_GB2312;font-size:10px;color:#000000;\">如有疑问详询东航24小时客服热线：95530。</span>\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n</blockquote>\r\n<p>\r\n	<br />\r\n</p>', '0', null, '2');
INSERT INTO `activity` VALUES ('6', 'SC', 'https://www.potucs.com/wechat/activity/sc/modeng.png', '山航魔灯', '<p style=\"text-align:center;font-size:24px;font-family:&quot;font-weight:500;color:#31587D;text-indent:30px;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;font-size:24px;font-family:&quot;font-weight:500;color:#31587D;text-indent:30px;\">\r\n	山航魔灯 即将开售 敬请期待\r\n</p>\r\n<p style=\"text-align:center;font-size:24px;font-family:&quot;font-weight:500;color:#31587D;text-indent:30px;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;font-size:24px;font-family:&quot;font-weight:500;color:#31587D;text-indent:30px;\">\r\n	<img src=\"https://www.potucs.com/wechat/activity/sc/modeng/1.png\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;font-size:24px;font-family:&quot;font-weight:500;color:#31587D;text-indent:30px;\">\r\n	<img src=\"https://www.potucs.com/wechat/activity/sc/modeng/2.png\" alt=\"\" /> \r\n</p>', '2', null, '1');
INSERT INTO `activity` VALUES ('7', 'SC', 'https://www.potucs.com/wechat/activity/sc/motan.png', '山航魔毯', '<p style=\"text-align:center;font-size:24px;font-family:&quot;font-weight:500;color:#31587D;text-indent:30px;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;font-size:24px;font-family:&quot;font-weight:500;color:#31587D;text-indent:30px;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;font-size:24px;font-family:&quot;font-weight:500;color:#31587D;text-indent:30px;\">\r\n	<img src=\"https://www.potucs.com/wechat/activity/over.jpg\" alt=\"\" />\r\n</p>', '1', null, '2');
INSERT INTO `activity` VALUES ('8', 'KN', 'https://www.potucs.com/wechat/activity/kn/manghe.png', '盲盒飞行家', '<h1 style=\"text-align:center;\">\r\n	盲盒飞行家\r\n</h1>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"https://www.potucs.com/wechat/activity/kn/manghe/1.png\" alt=\"\" />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"https://www.potucs.com/wechat/activity/kn/manghe/2.png\" alt=\"\" />\r\n</p>', '2', null, null);
INSERT INTO `activity` VALUES ('9', '3U', 'https://www.potucs.com/wechat/activity/3u/haoyouzhuli.png', '好友助力', '<p style=\"text-align:center;font-size:24px;font-family:&quot;font-weight:500;color:#31587D;text-indent:30px;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;font-size:24px;font-family:&quot;font-weight:500;color:#31587D;text-indent:30px;\">\r\n	小程序(金熊猫福利官)\r\n</p>\r\n\r\n\r\n<p style=\"text-align:center;font-size:24px;font-family:&quot;font-weight:500;color:#31587D;text-indent:30px;\">\r\n	<img src=\"https://www.potucs.com/wechat/activity/3u/haoyouzhuli/1.png\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;font-size:24px;font-family:&quot;font-weight:500;color:#31587D;text-indent:30px;\">\r\n	<img src=\"https://www.potucs.com/wechat/activity/3u/haoyouzhuli/2.png\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;font-size:24px;font-family:&quot;font-weight:500;color:#31587D;text-indent:30px;\">\r\n	<img src=\"https://www.potucs.com/wechat/activity/3u/haoyouzhuli/3.png\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;font-size:24px;font-family:&quot;font-weight:500;color:#31587D;text-indent:30px;\">\r\n	<img src=\"https://www.potucs.com/wechat/activity/3u/haoyouzhuli/4.png\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;font-size:24px;font-family:&quot;font-weight:500;color:#31587D;text-indent:30px;\">\r\n	<img src=\"https://www.potucs.com/wechat/activity/3u/haoyouzhuli/5.png\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;font-size:24px;font-family:&quot;font-weight:500;color:#31587D;text-indent:30px;\">\r\n	<span style=\"color:#E53333;\">小程序（四川航空）可以免费领取专享券</span> \r\n</p>\r\n<p style=\"text-align:center;font-size:24px;font-family:&quot;font-weight:500;color:#31587D;text-indent:30px;\">\r\n	<img src=\"https://www.potucs.com/wechat/activity/3u/haoyouzhuli/6.png\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;font-size:24px;font-family:&quot;font-weight:500;color:#31587D;text-indent:30px;\">\r\n	<span style=\"color:#E53333;\">小程序(金熊猫福利官)助力活动的券满足条件后 秒到账</span> \r\n</p>\r\n<p style=\"text-align:center;font-size:24px;font-family:&quot;font-weight:500;color:#31587D;text-indent:30px;\">\r\n	<img src=\"https://www.potucs.com/wechat/activity/3u/haoyouzhuli/7.png\" alt=\"\" /> \r\n</p>', '0', null, null);
