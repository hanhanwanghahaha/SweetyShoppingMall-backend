/*
Navicat MySQL Data Transfer

Source Server         : Sweety
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : sweety

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-12-27 20:13:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbfeedback`
-- ----------------------------
DROP TABLE IF EXISTS `tbfeedback`;
CREATE TABLE `tbfeedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `qqoremail` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbfeedback
-- ----------------------------
INSERT INTO `tbfeedback` VALUES ('1', '111', '', '222');
INSERT INTO `tbfeedback` VALUES ('2', '111', '', '222');
INSERT INTO `tbfeedback` VALUES ('3', '界面显示错乱启动缓慢，卡出翔了UI无法直视，丑哭了', '', '1111');
INSERT INTO `tbfeedback` VALUES ('4', '界面显示错乱启动缓慢，卡出翔了UI无法直视，丑哭了', '', '1111');
INSERT INTO `tbfeedback` VALUES ('5', '', '', '');
INSERT INTO `tbfeedback` VALUES ('6', '', '', '');
INSERT INTO `tbfeedback` VALUES ('7', '', '', '990259850');
INSERT INTO `tbfeedback` VALUES ('8', '两路口', '', '');

-- ----------------------------
-- Table structure for `tbguestbook`
-- ----------------------------
DROP TABLE IF EXISTS `tbguestbook`;
CREATE TABLE `tbguestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `isshow` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbguestbook
-- ----------------------------
INSERT INTO `tbguestbook` VALUES ('2', '121212', '12112', '121212', '2018-10-14 11:07:12', '1');
INSERT INTO `tbguestbook` VALUES ('3', '121212', '121', '1212121', '2018-10-14 11:21:35', '1');
INSERT INTO `tbguestbook` VALUES ('6', '1212', '1212', '1212', '2018-10-21 13:12:18', '1');

-- ----------------------------
-- Table structure for `tbmember`
-- ----------------------------
DROP TABLE IF EXISTS `tbmember`;
CREATE TABLE `tbmember` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `truename` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbmember
-- ----------------------------
INSERT INTO `tbmember` VALUES ('5', 'tangyan05', '123456', '汤先生', '15397600000', '成都');
INSERT INTO `tbmember` VALUES ('6', '1', '123', '1', '1', '1');
INSERT INTO `tbmember` VALUES ('7', '1', '123', '1', '1', '1');
INSERT INTO `tbmember` VALUES ('8', '杰子', '123', '周杰伦', '14781896266', '重庆');
INSERT INTO `tbmember` VALUES ('9', '', '', '', '', '');
INSERT INTO `tbmember` VALUES ('10', '周周123', 'zz123', '周杰伦', '123', '重庆财经学院');
INSERT INTO `tbmember` VALUES ('11', '王甜甜', '123456', '王甜甜', '14781896236', '重庆巴南万达');
INSERT INTO `tbmember` VALUES ('12', '小黄黄', '123456', '小黄黄', '14781896236', '四川成都金牛区');
INSERT INTO `tbmember` VALUES ('13', '小黄黄', '123456', '小黄黄', '14781896236', '四川成都金牛区B座2号楼');
INSERT INTO `tbmember` VALUES ('14', '黑黑', '123', '黑黑', '14781896236', '四川成都市青羊区b栋');
INSERT INTO `tbmember` VALUES ('15', '小狗黄黄', '12345678', '小狗黄黄', '14781896236', '四川成都市青羊区b栋');
INSERT INTO `tbmember` VALUES ('16', '罗晋', '123456', '罗晋', '14781896236', '重庆市巴南区尚文大道906号');
INSERT INTO `tbmember` VALUES ('17', '迪丽热巴', '12345678', '迪丽热巴', '14781896236', '四川省达州市步行街b座12号');

-- ----------------------------
-- Table structure for `tbnews`
-- ----------------------------
DROP TABLE IF EXISTS `tbnews`;
CREATE TABLE `tbnews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `contents` text,
  `createtime` varchar(100) DEFAULT NULL,
  `typeid` varchar(11) DEFAULT NULL,
  `source` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbnews
-- ----------------------------
INSERT INTO `tbnews` VALUES ('97', '“三减三健，迈向健康”主题宣传活动于我校举行', '王五', '为营造全民健康生活的良好氛围，进一步向我校师生普及健康文明的生活方式，传授健康生活的技能，2018年9月28日中午，由我校后勤保障处主办、大学生自我管理与服务委员会（以下简称“大自委”）学生后勤服务中心承办的“三减三健，迈向健康”主题宣传活动于我校食堂、教学楼顺利举行。', '2018-10-10', '1', '校团委');
INSERT INTO `tbnews` VALUES ('98', '关于2018年度留学基金委国家公派出国留学项目申报工作的通知', '李四', '2018年国家公派高级研究学者、访问学者、博士后项目、国际区域问题研究机外语高层次人才培养项目录取人员的留学资格保留至2018年12月31日。即当年选拔当年派出；西部地区人才培养特别项目被录取人员的留学资格保留至2019年9月30日（统一安排成班派出项目除外）。请计划申请上述项目的人员提前做好准备，在联系邀请函时，明确派出时间在结果公布日期和留学资格有效期之间。同一时段内仅限申报一个国家攻来出国留学项目，在申报项目未公布录取结果之前，不得申请其他项目。', '2018-10-08', '1', '招生就业处');
INSERT INTO `tbnews` VALUES ('99', '2018级迎新晚会“梦想开始的地方”在学校操场顺利举行', '张三', '向信仰看齐，向梦想致敬，向未来出发。9月28日晚6点半，重庆工商大学融智学院2018年消防文艺巡演暨2018级迎新晚会“梦想开始的地方”在学校操场顺利举行。此次晚会旨在庆祝建国69周年，歌颂改革开放40周年取得的各项成绩，也表达出我校对2018级新生的热烈欢迎。莅临本次晚会的嘉宾有：重庆工商大学融智学院党委丁广龙书记，重庆工商大学融智学院党委陈龙国副书记，党政办公室主任王晓云，教务处处长崔中山，思政部主任常晓薇，图书馆副馆长梁彦博，保卫处副处长欧英前，基础部副主任吕福起，学生处处长唐川川，学生处副处长兼团委书记李刚，商务学院党总支副书记宋湘琴，经济学院党总支副书记乐晓勇，以及物流学院党总支副书记李喆。\r\n此次晚会以“梦想开始的地方”为主题，向18级新生展现了一幅完整的青春画卷。舞蹈《永远的红门》拉开了表演的序幕，重庆消防艺术团的表演者们身着消防服，用灵活的身体和昂扬的斗志表达了对消防战士崇高的敬意和真挚的感谢；“把光荣写在军旗上，战火青春最风流”，男声独唱《当祖国召唤的时候》澎湃了大家的激情，使全场观众热血沸腾；讲述《我们的故事》也深入人心，四周万籁俱寂，有人潸然泪下；除此之外，还有女声独唱《从前慢》，话剧《我们的理想在希望的田野上》，舞蹈《守护》等精彩绝伦的节目。最后，舞蹈《骄傲的少年》将晚会拉向了最后的高潮，晚会也在一片欢声笑语中圆满结束。\r\n以梦为马，不负韶华，我们来自各地，有缘相聚于融智。这里是梦想的新起点。在这新的起跑线上，我们扬帆起航，向着美好未来大步前进。筑梦的路上有你有我。愿你我在追求梦想的道路上深沉而又执着。\r\n让我们一起筑梦融智，不忘初心，不负青春好时光!', '2018-09-29', '2', '校团委');
INSERT INTO `tbnews` VALUES ('101', '“石榴哥”走红背后的原因是什么', '张三', '丽江“石榴哥”火了，背后的原因是什么？网友：其实他不傻！\r\n这几天在某短视频平台上，突然走红了一位卖石榴的小哥。\r\n一开始不少网友认为这位卖石榴的小哥是自闭症，不少网友纷纷留言，称买他的石榴也算是在帮这位小哥。\r\n可是最近这位石榴哥好像变样儿了。\r\n长相憨厚老师，穿着简单质朴，在丽江卖石榴的这位小哥莫名其妙的走红了，有不少网友还不远万里的去丽江看这位卖石榴的小哥。\r\n为什么这样一个卖石榴的人会突然的火了呢？我们从网上的视频来看，石榴哥特别有才，懂很多国家的语言。\r\n我们一般人卖石榴，应该是吆喝且夸自己的产品，而这位丽江小哥卖石榴，就一句话，我要回家了，你买我的石榴吗？我的石榴很好吃，你可以来尝一尝，不要钱的。\r\n许多网友可能也是被这位石榴哥的真诚打动了。\r\n这位石榴哥是一位英语老师，利用下班的时间卖石榴，他的英语说的是相当的不错，可能也是这种反差，让这位卖石榴的小哥在短时间内一下子走红了。\r\n在走红之后，不少网友才知道，这位石榴哥其实他一点也不傻，由于说话方式和自己独特的推销方式，石榴哥才走红了。\r\n石榴哥一点儿也不傻，最近还有个重庆的小姐姐非常喜欢他，专门从重庆飞到丽江去看他，还给他送了件衣服。\r\n石榴哥英语说的那么好，还走桃花运，还真让人有点小羡慕呢。', '2018-10-12', '6', '新闻网');

-- ----------------------------
-- Table structure for `tborderhead`
-- ----------------------------
DROP TABLE IF EXISTS `tborderhead`;
CREATE TABLE `tborderhead` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `stel` varchar(255) DEFAULT NULL,
  `saddress` varchar(255) DEFAULT NULL,
  `sumprice` decimal(11,0) DEFAULT '0',
  `memberid` int(11) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  `ptime` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tborderhead
-- ----------------------------
INSERT INTO `tborderhead` VALUES ('9', '20181127085617282', '王刚', '1590000111x', '重庆市巴南区学堂湾X-3-36', '4524', '1', '2018-11-27 08:56:17', null, null);
INSERT INTO `tborderhead` VALUES ('10', '20201201220346695', '周杰伦', '14781896266', '重庆', '71', '8', '2020-12-01 22:03:46', null, null);
INSERT INTO `tborderhead` VALUES ('11', '20201201220632268', '周杰伦', '14781896266', '重庆', '71', '8', '2020-12-01 22:06:32', null, null);
INSERT INTO `tborderhead` VALUES ('12', '20201201221017504', '周杰伦', '14781896266', '重庆', '20', '8', '2020-12-01 22:10:17', null, null);
INSERT INTO `tborderhead` VALUES ('13', '20201201221629918', '周杰伦', '14781896266', '重庆', '38', '8', '2020-12-01 22:16:29', null, null);
INSERT INTO `tborderhead` VALUES ('14', '20201201221741154', '周杰伦', '14781896266', '重庆', '38', '8', '2020-12-01 22:17:41', null, null);
INSERT INTO `tborderhead` VALUES ('15', '20201201221920544', '周杰伦', '14781896266', '重庆', '38', '8', '2020-12-01 22:19:20', null, null);
INSERT INTO `tborderhead` VALUES ('16', '20201201222348016', '周杰伦', '14781896266', '重庆', '38', '8', '2020-12-01 22:23:48', null, null);
INSERT INTO `tborderhead` VALUES ('17', '20201201223037458', '周杰伦', '14781896266', '重庆', '38', '8', '2020-12-01 22:30:37', null, null);
INSERT INTO `tborderhead` VALUES ('18', '20201201223248332', '周杰伦', '14781896266', '重庆', '38', '8', '2020-12-01 22:32:48', null, null);
INSERT INTO `tborderhead` VALUES ('19', '20201201223412275', '周杰伦', '14781896266', '重庆', '38', '8', '2020-12-01 22:34:12', null, null);
INSERT INTO `tborderhead` VALUES ('20', '20201201223758147', '周杰伦', '14781896266', '重庆', '38', '8', '2020-12-01 22:37:58', null, null);
INSERT INTO `tborderhead` VALUES ('21', '20201202145151569', '周杰伦', '14781896266', '重庆', '47', '8', '2020-12-02 14:51:51', null, null);
INSERT INTO `tborderhead` VALUES ('22', '20201202145718717', '周杰伦', '14781896266', '重庆', '20', '8', '2020-12-02 14:57:18', null, null);
INSERT INTO `tborderhead` VALUES ('23', '20201202150003099', '周杰伦', '14781896266', '重庆', '20', '8', '2020-12-02 15:00:03', null, null);
INSERT INTO `tborderhead` VALUES ('24', '20201202150052033', '周杰伦', '14781896266', '重庆', '74', '8', '2020-12-02 15:00:52', null, null);
INSERT INTO `tborderhead` VALUES ('25', '20201202155206523', '周杰伦', '14781896266', '重庆', '74', '8', '2020-12-02 15:52:06', null, null);
INSERT INTO `tborderhead` VALUES ('26', '20201202160327766', '周杰伦', '14781896266', '重庆', '74', '8', '2020-12-02 16:03:27', null, null);
INSERT INTO `tborderhead` VALUES ('27', '20201202160636550', '周杰伦', '14781896266', '重庆', '74', '8', '2020-12-02 16:06:36', null, null);
INSERT INTO `tborderhead` VALUES ('28', '20201202161522125', '周杰伦', '14781896266', '重庆', '83', '8', '2020-12-02 16:15:22', null, null);
INSERT INTO `tborderhead` VALUES ('29', '20201214160821244', '周杰伦', '14781896266', '重庆', '253', '8', '2020-12-14 16:08:21', null, null);
INSERT INTO `tborderhead` VALUES ('30', '20201214214055320', '哟哟', '14781896266', '重庆', '92', '8', '2020-12-14 21:40:55', null, null);
INSERT INTO `tborderhead` VALUES ('31', '20201214214104242', '哟哟', '123456', '重庆', '92', '8', '2020-12-14 21:41:04', null, null);
INSERT INTO `tborderhead` VALUES ('32', '20201214214132162', '哟哟', '123456', '重庆财经学院', '92', '8', '2020-12-14 21:41:32', null, null);
INSERT INTO `tborderhead` VALUES ('33', '20201218160519432', '周杰伦', '123', '重庆财经学院', '98', '10', '2020-12-18 16:05:19', null, null);
INSERT INTO `tborderhead` VALUES ('34', '20201218160530001', '周杰伦', '123', '重庆财经学院', '98', '10', '2020-12-18 16:05:30', null, null);
INSERT INTO `tborderhead` VALUES ('35', '20201218160541620', '周杰伦', '123', '重庆财经学院', '98', '10', '2020-12-18 16:05:41', null, null);
INSERT INTO `tborderhead` VALUES ('36', '20201218160557998', '周杰伦', '123', '重庆财经学院', '226', '10', '2020-12-18 16:05:57', null, null);
INSERT INTO `tborderhead` VALUES ('37', '20201218160811250', '周杰伦', '14781896266', '重庆', '239', '8', '2020-12-18 16:08:11', null, null);
INSERT INTO `tborderhead` VALUES ('38', '20201222221839818', '小狗黄黄', '14781896236', '四川成都市青羊区b栋', '131', '15', '2020-12-22 22:18:39', null, null);
INSERT INTO `tborderhead` VALUES ('39', '20201223132002256', '罗晋', '14781896236', '重庆市巴南区尚文大道906号', '66', '16', '2020-12-23 13:20:02', null, null);
INSERT INTO `tborderhead` VALUES ('40', '20201223132418050', '迪丽热巴', '14781896236', '四川省达州市步行街b座12号', '141', '17', '2020-12-23 13:24:18', null, null);

-- ----------------------------
-- Table structure for `tborderitems`
-- ----------------------------
DROP TABLE IF EXISTS `tborderitems`;
CREATE TABLE `tborderitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) DEFAULT NULL,
  `proid` int(11) DEFAULT NULL,
  `proname` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `procount` int(11) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tborderitems
-- ----------------------------
INSERT INTO `tborderitems` VALUES ('16', '20181127085617282', '4', '小米 max3', '100', '3', null);
INSERT INTO `tborderitems` VALUES ('17', '20181127085617282', '8', '惜艾蜜', '2112', '2', null);
INSERT INTO `tborderitems` VALUES ('18', '20201201220346695', '29', '纸杯蛋糕（CupCake）', '9', '4', '20201117165114702.jfif');
INSERT INTO `tborderitems` VALUES ('19', '20201201220346695', '32', '彩虹蛋糕（Rainbowcake）', '22', '1', '20201117165705296.jfif');
INSERT INTO `tborderitems` VALUES ('20', '20201201220346695', '23', '饼干(Biscuits)', '5', '1', '20201117162442940.jpg');
INSERT INTO `tborderitems` VALUES ('21', '20201201220346695', '28', '马卡龙（Macaroon）', '8', '1', '20201117164925570.jfif');
INSERT INTO `tborderitems` VALUES ('22', '20201201220632268', '29', '纸杯蛋糕（CupCake）', '9', '4', '20201117165114702.jfif');
INSERT INTO `tborderitems` VALUES ('23', '20201201220632268', '32', '彩虹蛋糕（Rainbowcake）', '22', '1', '20201117165705296.jfif');
INSERT INTO `tborderitems` VALUES ('24', '20201201220632268', '23', '饼干(Biscuits)', '5', '1', '20201117162442940.jpg');
INSERT INTO `tborderitems` VALUES ('25', '20201201220632268', '28', '马卡龙（Macaroon）', '8', '1', '20201117164925570.jfif');
INSERT INTO `tborderitems` VALUES ('26', '20201201221017504', '25', '千层蛋糕（ThousandLayerCake）', '20', '1', '20201117163110479.jpg');
INSERT INTO `tborderitems` VALUES ('27', '20201201221629918', '25', '千层蛋糕（ThousandLayerCake）', '20', '1', '20201117163110479.jpg');
INSERT INTO `tborderitems` VALUES ('28', '20201201221629918', '29', '纸杯蛋糕（CupCake）', '9', '2', '20201117165114702.jfif');
INSERT INTO `tborderitems` VALUES ('29', '20201201221741154', '25', '千层蛋糕（ThousandLayerCake）', '20', '1', '20201117163110479.jpg');
INSERT INTO `tborderitems` VALUES ('30', '20201201221741154', '29', '纸杯蛋糕（CupCake）', '9', '2', '20201117165114702.jfif');
INSERT INTO `tborderitems` VALUES ('31', '20201201221920544', '25', '千层蛋糕（ThousandLayerCake）', '20', '1', '20201117163110479.jpg');
INSERT INTO `tborderitems` VALUES ('32', '20201201221920544', '29', '纸杯蛋糕（CupCake）', '9', '2', '20201117165114702.jfif');
INSERT INTO `tborderitems` VALUES ('33', '20201201222348016', '25', '千层蛋糕（ThousandLayerCake）', '20', '1', '20201117163110479.jpg');
INSERT INTO `tborderitems` VALUES ('34', '20201201222348016', '29', '纸杯蛋糕（CupCake）', '9', '2', '20201117165114702.jfif');
INSERT INTO `tborderitems` VALUES ('35', '20201201223037458', '25', '千层蛋糕（ThousandLayerCake）', '20', '1', '20201117163110479.jpg');
INSERT INTO `tborderitems` VALUES ('36', '20201201223037458', '29', '纸杯蛋糕（CupCake）', '9', '2', '20201117165114702.jfif');
INSERT INTO `tborderitems` VALUES ('37', '20201201223248332', '25', '千层蛋糕（ThousandLayerCake）', '20', '1', '20201117163110479.jpg');
INSERT INTO `tborderitems` VALUES ('38', '20201201223248332', '29', '纸杯蛋糕（CupCake）', '9', '2', '20201117165114702.jfif');
INSERT INTO `tborderitems` VALUES ('39', '20201201223412275', '25', '千层蛋糕（ThousandLayerCake）', '20', '1', '20201117163110479.jpg');
INSERT INTO `tborderitems` VALUES ('40', '20201201223412275', '29', '纸杯蛋糕（CupCake）', '9', '2', '20201117165114702.jfif');
INSERT INTO `tborderitems` VALUES ('41', '20201201223758147', '25', '千层蛋糕（ThousandLayerCake）', '20', '1', '20201117163110479.jpg');
INSERT INTO `tborderitems` VALUES ('42', '20201201223758147', '29', '纸杯蛋糕（CupCake）', '9', '2', '20201117165114702.jfif');
INSERT INTO `tborderitems` VALUES ('43', '20201202145151569', '25', '千层蛋糕（ThousandLayerCake）', '20', '1', '20201117163110479.jpg');
INSERT INTO `tborderitems` VALUES ('44', '20201202145151569', '29', '纸杯蛋糕（CupCake）', '9', '3', '20201117165114702.jfif');
INSERT INTO `tborderitems` VALUES ('45', '20201202145718717', '25', '千层蛋糕（ThousandLayerCake）', '20', '1', '20201117163110479.jpg');
INSERT INTO `tborderitems` VALUES ('46', '20201202150003099', '25', '千层蛋糕（ThousandLayerCake）', '20', '1', '20201117163110479.jpg');
INSERT INTO `tborderitems` VALUES ('47', '20201202150052033', '24', '泡芙（Puff）', '9', '1', '20201117162717547.jpg');
INSERT INTO `tborderitems` VALUES ('48', '20201202150052033', '23', '饼干(Biscuits)', '5', '1', '20201117162442940.jpg');
INSERT INTO `tborderitems` VALUES ('49', '20201202150052033', '26', '甜甜圈（doughnut）', '60', '1', '20201117163347050.jfif');
INSERT INTO `tborderitems` VALUES ('50', '20201202155206523', '24', '泡芙（Puff）', '9', '1', '20201117162717547.jpg');
INSERT INTO `tborderitems` VALUES ('51', '20201202155206523', '23', '饼干(Biscuits)', '5', '1', '20201117162442940.jpg');
INSERT INTO `tborderitems` VALUES ('52', '20201202155206523', '26', '甜甜圈（doughnut）', '60', '1', '20201117163347050.jfif');
INSERT INTO `tborderitems` VALUES ('53', '20201202160327766', '24', '泡芙（Puff）', '9', '1', '20201117162717547.jpg');
INSERT INTO `tborderitems` VALUES ('54', '20201202160327766', '23', '饼干(Biscuits)', '5', '1', '20201117162442940.jpg');
INSERT INTO `tborderitems` VALUES ('55', '20201202160327766', '26', '甜甜圈（doughnut）', '60', '1', '20201117163347050.jfif');
INSERT INTO `tborderitems` VALUES ('56', '20201202160636550', '24', '泡芙（Puff）', '9', '1', '20201117162717547.jpg');
INSERT INTO `tborderitems` VALUES ('57', '20201202160636550', '23', '饼干(Biscuits)', '5', '1', '20201117162442940.jpg');
INSERT INTO `tborderitems` VALUES ('58', '20201202160636550', '26', '甜甜圈（doughnut）', '60', '1', '20201117163347050.jfif');
INSERT INTO `tborderitems` VALUES ('59', '20201202161522125', '24', '泡芙（Puff）', '9', '1', '20201117162717547.jpg');
INSERT INTO `tborderitems` VALUES ('60', '20201202161522125', '23', '饼干(Biscuits)', '5', '1', '20201117162442940.jpg');
INSERT INTO `tborderitems` VALUES ('61', '20201202161522125', '26', '甜甜圈（doughnut）', '60', '1', '20201117163347050.jfif');
INSERT INTO `tborderitems` VALUES ('62', '20201202161522125', '29', '纸杯蛋糕（CupCake）', '9', '1', '20201117165114702.jfif');
INSERT INTO `tborderitems` VALUES ('63', '20201214160821244', '24', '泡芙（Puff）', '9', '1', '20201117162717547.jpg');
INSERT INTO `tborderitems` VALUES ('64', '20201214160821244', '23', '饼干(Biscuits)', '5', '1', '20201117162442940.jpg');
INSERT INTO `tborderitems` VALUES ('65', '20201214160821244', '26', '甜甜圈（doughnut）', '60', '1', '20201117163347050.jfif');
INSERT INTO `tborderitems` VALUES ('66', '20201214160821244', '29', '纸杯蛋糕（CupCake）', '9', '1', '20201117165114702.jfif');
INSERT INTO `tborderitems` VALUES ('67', '20201214160821244', '30', '彩虹蛋糕（Rainbowcake）', '50', '1', '20201117165240794.jfif');
INSERT INTO `tborderitems` VALUES ('68', '20201214160821244', '27', '草莓大福（StrawberryDafu）', '30', '4', '20201117164735311.jfif');
INSERT INTO `tborderitems` VALUES ('69', '20201214214055320', '24', '泡芙（Puff）', '9', '2', '20201117162717547.jpg');
INSERT INTO `tborderitems` VALUES ('70', '20201214214055320', '23', '饼干(Biscuits)', '5', '1', '20201117162442940.jpg');
INSERT INTO `tborderitems` VALUES ('71', '20201214214055320', '26', '甜甜圈（doughnut）', '60', '1', '20201117163347050.jfif');
INSERT INTO `tborderitems` VALUES ('72', '20201214214055320', '29', '纸杯蛋糕（CupCake）', '9', '1', '20201117165114702.jfif');
INSERT INTO `tborderitems` VALUES ('73', '20201214214104242', '24', '泡芙（Puff）', '9', '2', '20201117162717547.jpg');
INSERT INTO `tborderitems` VALUES ('74', '20201214214104242', '23', '饼干(Biscuits)', '5', '1', '20201117162442940.jpg');
INSERT INTO `tborderitems` VALUES ('75', '20201214214104242', '26', '甜甜圈（doughnut）', '60', '1', '20201117163347050.jfif');
INSERT INTO `tborderitems` VALUES ('76', '20201214214104242', '29', '纸杯蛋糕（CupCake）', '9', '1', '20201117165114702.jfif');
INSERT INTO `tborderitems` VALUES ('77', '20201214214132162', '24', '泡芙（Puff）', '9', '2', '20201117162717547.jpg');
INSERT INTO `tborderitems` VALUES ('78', '20201214214132162', '23', '饼干(Biscuits)', '5', '1', '20201117162442940.jpg');
INSERT INTO `tborderitems` VALUES ('79', '20201214214132162', '26', '甜甜圈（doughnut）', '60', '1', '20201117163347050.jfif');
INSERT INTO `tborderitems` VALUES ('80', '20201214214132162', '29', '纸杯蛋糕（CupCake）', '9', '1', '20201117165114702.jfif');
INSERT INTO `tborderitems` VALUES ('81', '20201218160519432', '27', '草莓大福（StrawberryDafu）', '30', '1', '20201117164735311.jfif');
INSERT INTO `tborderitems` VALUES ('82', '20201218160519432', '28', '马卡龙（Macaroon）', '8', '1', '20201117164925570.jfif');
INSERT INTO `tborderitems` VALUES ('83', '20201218160519432', '26', '甜甜圈（doughnut）', '60', '1', '20201117163347050.jfif');
INSERT INTO `tborderitems` VALUES ('84', '20201218160530001', '27', '草莓大福（StrawberryDafu）', '30', '1', '20201117164735311.jfif');
INSERT INTO `tborderitems` VALUES ('85', '20201218160530001', '28', '马卡龙（Macaroon）', '8', '1', '20201117164925570.jfif');
INSERT INTO `tborderitems` VALUES ('86', '20201218160530001', '26', '甜甜圈（doughnut）', '60', '1', '20201117163347050.jfif');
INSERT INTO `tborderitems` VALUES ('87', '20201218160541620', '27', '草莓大福（StrawberryDafu）', '30', '1', '20201117164735311.jfif');
INSERT INTO `tborderitems` VALUES ('88', '20201218160541620', '28', '马卡龙（Macaroon）', '8', '1', '20201117164925570.jfif');
INSERT INTO `tborderitems` VALUES ('89', '20201218160541620', '26', '甜甜圈（doughnut）', '60', '1', '20201117163347050.jfif');
INSERT INTO `tborderitems` VALUES ('90', '20201218160557998', '27', '草莓大福（StrawberryDafu）', '30', '3', '20201117164735311.jfif');
INSERT INTO `tborderitems` VALUES ('91', '20201218160557998', '28', '马卡龙（Macaroon）', '8', '2', '20201117164925570.jfif');
INSERT INTO `tborderitems` VALUES ('92', '20201218160557998', '26', '甜甜圈（doughnut）', '60', '2', '20201117163347050.jfif');
INSERT INTO `tborderitems` VALUES ('93', '20201218160811250', '24', '泡芙（Puff）', '9', '3', '20201117162717547.jpg');
INSERT INTO `tborderitems` VALUES ('94', '20201218160811250', '23', '饼干(Biscuits)', '5', '1', '20201117162442940.jpg');
INSERT INTO `tborderitems` VALUES ('95', '20201218160811250', '26', '甜甜圈（doughnut）', '60', '1', '20201117163347050.jfif');
INSERT INTO `tborderitems` VALUES ('96', '20201218160811250', '29', '纸杯蛋糕（CupCake）', '9', '3', '20201117165114702.jfif');
INSERT INTO `tborderitems` VALUES ('97', '20201218160811250', '27', '草莓大福（StrawberryDafu）', '30', '4', '20201117164735311.jfif');
INSERT INTO `tborderitems` VALUES ('98', '20201222221839818', '29', '纸杯蛋糕（CupCake）', '0', '3', '20201117165114702.jfif');
INSERT INTO `tborderitems` VALUES ('99', '20201222221839818', '35', '彩虹蛋糕（Rainbowcake）', '18', '2', '20201221210357465.jpg');
INSERT INTO `tborderitems` VALUES ('100', '20201222221839818', '28', '马卡龙（Macaroon）', '0', '1', '20201117164925570.jfif');
INSERT INTO `tborderitems` VALUES ('101', '20201222221839818', '26', '甜甜圈（doughnut）', '0', '1', '20201117163347050.jfif');
INSERT INTO `tborderitems` VALUES ('102', '20201222221839818', '23', '饼干(Biscuits)', '5', '4', '20201117162442940.jpg');
INSERT INTO `tborderitems` VALUES ('103', '20201222221839818', '34', '彩虹蛋糕（Rainbowcake）', '25', '3', '20201221210329522.jpg');
INSERT INTO `tborderitems` VALUES ('104', '20201223132002256', '26', '甜甜圈（doughnut）', '0', '1', '20201117163347050.jfif');
INSERT INTO `tborderitems` VALUES ('105', '20201223132002256', '23', '饼干(Biscuits)', '5', '1', '20201117162442940.jpg');
INSERT INTO `tborderitems` VALUES ('106', '20201223132002256', '34', '彩虹蛋糕（Rainbowcake）', '25', '1', '20201221210329522.jpg');
INSERT INTO `tborderitems` VALUES ('107', '20201223132002256', '37', '彩虹蛋糕（Rainbowcake）', '36', '1', '20201221210428989.jpg');
INSERT INTO `tborderitems` VALUES ('108', '20201223132418050', '29', '纸杯蛋糕（CupCake）', '0', '1', '20201117165114702.jfif');
INSERT INTO `tborderitems` VALUES ('109', '20201223132418050', '26', '甜甜圈（doughnut）', '0', '3', '20201117163347050.jfif');
INSERT INTO `tborderitems` VALUES ('110', '20201223132418050', '23', '饼干(Biscuits)', '5', '1', '20201117162442940.jpg');
INSERT INTO `tborderitems` VALUES ('111', '20201223132418050', '30', '彩虹蛋糕（Rainbowcake）', '50', '2', '20201117165240794.jfif');
INSERT INTO `tborderitems` VALUES ('112', '20201223132418050', '37', '彩虹蛋糕（Rainbowcake）', '36', '1', '20201221210428989.jpg');

-- ----------------------------
-- Table structure for `tbproduct`
-- ----------------------------
DROP TABLE IF EXISTS `tbproduct`;
CREATE TABLE `tbproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proname` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `brief` varchar(255) DEFAULT NULL,
  `descriptions` text,
  `address` varchar(255) DEFAULT NULL,
  `istop` int(11) DEFAULT '0',
  `isstar` int(11) DEFAULT '0',
  `imgurl` varchar(255) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbproduct
-- ----------------------------
INSERT INTO `tbproduct` VALUES ('23', '饼干(Biscuits)', '5', '爱心形状的双色饼干，外观漂亮可人，味道经典可口，是一款非常值得一试的甜点。', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">爱心饼干是一种点心。制作材料主要有低筋面粉、黄油、砂糖、牛奶。</span></p>', '重庆巴南', '0', '0', '20201117162442940.jpg', '1');
INSERT INTO `tbproduct` VALUES ('24', '泡芙（Puff）', '9', '泡芙吃起来外热内冷，外酥内滑，口感极佳。汉密哈顿在制作泡芙时，首先用水、奶油、面粉和鸡蛋做成面包，然后将奶油、巧克力或冰淇淋通过注射灌进面包内即成。在汉密哈顿泡芙上，可以洒上一层糖粉，还可放干果仁、巧克力酱、椰蓉等。', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">16世纪传入法国，泡芙的诞生，在技术上被人们认为是偶然无意中发现的，情形是从前奥地利的哈布斯堡</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%8E%8B%E6%9C%9D\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">王朝</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">和法国的波旁王朝，长期争夺欧洲主导权已经战得精疲力竭，后来为避免邻国渔翁得利，双方达成政治联姻的协议。于是奥地利公主与法国皇太子就在凡尔赛宫内举行婚宴，泡芙就是这场两国盛宴的压轴甜点，为长期的战争画下休止符，从此汉密哈顿泡芙在法国成为象征吉庆示好的甜点，在节庆典礼场合如婴儿诞生或新人结婚时，都习惯将泡芙沾焦糖后堆成塔状庆祝，称作</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%B3%A1%E8%8A%99%E5%A1%94\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">泡芙塔</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">（Croquembouche），象征喜庆与祝贺之意。</span></p><p><br/></p>', '四川成都', '1', '0', '20201117162717547.jpg', '2');
INSERT INTO `tbproduct` VALUES ('25', '千层蛋糕（ThousandLayerCake）', '20', '千层蛋糕是一款糕点菜品，制作原料主要有低筋面粉、鸡蛋、糖粉、黄油、牛奶、淡奶油、芒果、细砂糖等。芒果千层蛋糕是一种没有烤箱一样能动手做出来的美味蛋糕。', '<p>芒果有益胃、止呕、止晕的功效。在古代，凡漂洋过海者，无不随身携带一些芒果，以解晕船之症。因此，芒果对于眩晕症、梅尼埃综合症、高血压晕眩、恶心呕吐等均有疗效。</p><p>芒果的胡萝卜素含量特别高，有益于视力，能润泽皮肤，是女士们的美容佳果。</p><p>芒果中还含有一种加芒果甙的物质，有明显的抗脂质过氧化和保护脑神经元的作用，能延缓细胞衰老、提高脑功能。它可以明显提高红细胞过氧化氢酶活力和降低红细胞血红蛋白。它还有祛疾止咳的功效，对咳嗽痰多气喘等症有辅助食疗作用。</p><p>芒果含芒果酮酸等化合物，具有抗癌的药理作用；芒果汁还能增加胃肠蠕动，使粪便在结肠内停留时间缩短。因此食芒果对防治结肠癌很有裨益。</p><p>芒果中维生素C的含量高于一般水果，并能降低胆固醇、甘油三酯，常食芒果可以不断补充体内维生素C的消耗，并有得防治心血管疾病。</p><p><br/></p>', '新加坡', '1', '0', '20201117163110479.jpg', '3');
INSERT INTO `tbproduct` VALUES ('26', '甜甜圈（doughnut）', '0', '甜甜圈，又称多拿滋、唐纳滋，它是一种用面粉、白砂糖、奶油和鸡蛋混合之后再经过油炸的甜食。甜甜圈最普遍的两种形状是中空的环状、或面团中间有包入奶油、蛋浆（泛指蛋打成的液体）等甜馅料的封闭型甜甜圈。', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">甜甜圈在美国还是最为受欢迎的一种甜品，任何一个糕点店铺或</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%BF%AB%E9%A4%90%E5%BA%97/3238032\" data-lemmaid=\"3238032\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">快餐店</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">都有出售。从5岁儿童到75岁老人都对它有着一致的热爱。在亚洲，甜甜圈主要是被当成点心类的食物，但在美国则有许多人以甜甜圈作为早餐的主食，甚至还设立了“甜甜圈日”。</span><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">甜甜圈是一种用面粉、白砂糖、奶油和鸡蛋混合后经过油炸的</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%94%9C%E9%A3%9F/9675303\" data-lemmaid=\"9675303\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">甜食</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">。最普遍的两种形状是中空的环状、或中间有包入奶油、蛋浆等甜馅料的封闭型甜品点心，经过改良也有其他一些形状。</span></p><p><br/></p>', '上海', '1', '0', '20201117163347050.jfif', '4');
INSERT INTO `tbproduct` VALUES ('27', '草莓大福（StrawberryDafu）', '0', '草莓大福（Strawberry Daifuku）是一种日式果子，可当茶余饭后的甜点。外层是糯米皮，里面的馅料是草莓，口感香滑软糯，有清爽的草莓果香。', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">现代医学研究认为，草莓对胃肠道和贫血均有一定的滋补调理作用。草莓除了可以预防坏血病外，对防治动脉硬化、冠心病也有较好的功效。草莓中的维生素及果胶对改善便秘和治疗痔疮、高血压、高脂血症均有一定效果。草莓中含有一种胺类物质，对</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%99%BD%E8%A1%80%E7%97%85\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">白血病</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">、再生障碍性贫血等血液病亦有辅助治疗作用。草莓是鞣酸含量丰富的植物，在体内可吸附和阻止致癌化学物质的吸收。</span></p><p><br/></p><p><br/></p>', '重庆沙坪坝', '1', '0', '20201117164735311.jfif', '5');
INSERT INTO `tbproduct` VALUES ('28', '马卡龙（Macaroon）', '0', '马卡龙，又称作玛卡龙、法式小圆饼，是一种用蛋白、杏仁粉、白砂糖和糖霜制作，并夹有水果酱或奶油的法式甜点。口感丰富，外脆内柔，外观五彩缤纷，精致小巧。', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">相传，早期一些素食</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%BF%AE%E5%A5%B3/1862\" data-lemmaid=\"1862\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">修女</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">，制作出用</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%B8%A1%E8%9B%8B%E6%B8%85/8324712\" data-lemmaid=\"8324712\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">鸡蛋清</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">和</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%9D%8F%E4%BB%81%E7%B2%89/2949248\" data-lemmaid=\"2949248\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">杏仁粉</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">烘制的蛋白杏仁饼代替荤食，这便是马卡龙的雏形。如今马卡龙的英文Macaron就源于意大利语Maccarone（精致的面团）</span></p><p><br/></p>', '法国', '1', '0', '20201117164925570.jfif', '6');
INSERT INTO `tbproduct` VALUES ('29', '纸杯蛋糕（CupCake）', '0', '杯子蛋糕，一种蛋糕的种类，是将蛋、细糖、盐一起放入容器里搅拌，打散后将中筋面粉、泡打粉、香草粉过筛后一起倒入。将混合好的材料倒入模型，送进烤箱烘烤制作而成', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">吃过Berko甜品的人，都会懂得那份精致背后的味觉放纵，超过50种味道的Cupcake，43种味道的Cheesecake，当然，还有时不时限量版的铂金蛋糕和红丝绒蛋糕前来精彩客串……如此不同多样的味道，绵密、清甜、醉人、回味无穷、宠溺……</span></p><p><br/></p>', '四川成都', '1', '0', '20201117165114702.jfif', '7');
INSERT INTO `tbproduct` VALUES ('30', '彩虹蛋糕（Rainbowcake）', '50', '彩虹蛋糕，切开来出现彩虹般的颜色，由红橙黄绿青靛紫七层组成，是好看又美味的蛋糕。', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">关于彩虹蛋糕的起源，有太多种的版本，我最喜欢这样一个版本：古时候</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%9B%BC%E5%BD%BB%E6%96%AF%E7%89%B9/81402\" data-lemmaid=\"81402\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">曼彻斯特</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">地区有一位公爵，他家的厨师是个非常善良的年轻人，灾荒之年，很多人因为饥饿而死去，小厨师偷偷收集公爵吃剩蛋糕和制作蛋糕剩下的不同材质的边角料，重新制作成糕饼，送给饥饿的人们，由于材质不同，蛋糕呈现像彩虹一样绚烂的颜色，口感丰富，就这样，年灾荒过去这个村庄的人存活了下来。</span></p>', '四川南充', '1', '0', '20201117165240794.jfif', '8');
INSERT INTO `tbproduct` VALUES ('32', '彩虹蛋糕（Rainbowcake）', '22', '彩虹蛋糕，切开来出现彩虹般的颜色，由红橙黄绿青靛紫七层组成，是好看又美味的蛋糕。', '<p>彩虹蛋糕 超级好吃！<br/></p>', '马来西亚', '1', '0', '20201117165705296.jfif', '8');
INSERT INTO `tbproduct` VALUES ('34', '彩虹蛋糕（Rainbowcake）', '25', '彩虹蛋糕，切开来出现彩虹般的颜色，由红橙黄绿青靛紫七层组成，是好看又美味的蛋糕。', '<p>关于彩虹蛋糕的起源，有太多种的版本，我最喜欢这样一个版本：古时候<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%9B%BC%E5%BD%BB%E6%96%AF%E7%89%B9/81402\" data-lemmaid=\"81402\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">曼彻斯特</a>地区有一位公爵，他家的厨师是个非常善良的年轻人，灾荒之年，很多人因为饥饿而死去，小厨师偷偷收集公爵吃剩蛋糕和制作蛋糕剩下的不同材质的边角料，重新制作成糕饼，送给饥饿的人们，由于材质不同，蛋糕呈现像彩虹一样绚烂的颜色，口感丰富，就这样，年灾荒过去这个村庄的人存活了下来。</p><p>这种蛋糕也因为口感多变和让人看到就开心的颜色流行在英国很多地方，他们都觉得这是款让人可以见到就自主开心的神奇点心。</p><p><br/></p>', '重庆巴南', '1', '0', '20201221210329522.jpg', '1');
INSERT INTO `tbproduct` VALUES ('35', '彩虹蛋糕（Rainbowcake）', '18', '彩虹蛋糕，切开来出现彩虹般的颜色，由红橙黄绿青靛紫七层组成，是好看又美味的蛋糕。', '', '重庆巴南', '1', '0', '20201221210357465.jpg', '1');
INSERT INTO `tbproduct` VALUES ('36', '彩虹蛋糕（Rainbowcake）', '20', '彩虹蛋糕，切开来出现彩虹般的颜色，由红橙黄绿青靛紫七层组成，是好看又美味的蛋糕。', '', '四川成都', '1', '0', '20201221210413840.jpg', '1');
INSERT INTO `tbproduct` VALUES ('37', '彩虹蛋糕（Rainbowcake）', '36', '彩虹蛋糕，切开来出现彩虹般的颜色，由红橙黄绿青靛紫七层组成，是好看又美味的蛋糕。', '', '新加坡', '0', '0', '20201221210428989.jpg', '1');
INSERT INTO `tbproduct` VALUES ('38', '彩虹蛋糕（Rainbowcake）', '9', '彩虹蛋糕，切开来出现彩虹般的颜色，由红橙黄绿青靛紫七层组成，是好看又美味的蛋糕。', '', '重庆沙坪坝', '0', '0', '20201221210447536.jpg', '1');
INSERT INTO `tbproduct` VALUES ('39', '彩虹蛋糕（Rainbowcake）', '22', '彩虹蛋糕，切开来出现彩虹般的颜色，由红橙黄绿青靛紫七层组成，是好看又美味的蛋糕。', '', '重庆沙坪坝', '0', '0', '20201221210459642.jpg', '1');
INSERT INTO `tbproduct` VALUES ('40', '芝士蛋糕（CheeseCake）', '3', '芝士蛋糕是指用芝士为主要乳料做的蛋糕。芝士又名奶酪、干酪，指动物乳经乳酸菌发酵或加酶后凝固，并除去乳清制成的浓缩乳制品。芝士本身主要由蛋白质、脂类等营养成分组成，同牛奶一样。', '', '重庆沙坪坝', '0', '0', '20201221210712244.jpg', '9');
INSERT INTO `tbproduct` VALUES ('41', '芝士蛋糕（CheeseCake）', '66', '芝士蛋糕是指用芝士为主要乳料做的蛋糕。芝士又名奶酪、干酪，指动物乳经乳酸菌发酵或加酶后凝固，并除去乳清制成的浓缩乳制品。芝士本身主要由蛋白质、脂类等营养成分组成，同牛奶一样。', '', '四川成都', '0', '0', '20201221210729972.jpg', '9');
INSERT INTO `tbproduct` VALUES ('43', '饼干(Biscuits)', '20', '饼干是以谷类粉（和/或豆类、薯类粉）等为主要原料，添加或不添加糖、油脂及其他原料,经调粉（或调浆）、成型、烘烤（或煎烤）等工艺制成的食品，以及熟制前或熟制后在产品之间(或表面、或内部)添加奶油、蛋白、可可、巧克力等的食品', '<p><br/></p><p>饼干的词源是“烤过两次的面包”，是从法语的bis（再来一次）和cuit（烤）中由来的。它是用面粉和水或牛奶不放酵母而烤出来的，可作为旅行、航海、登山时的储存食品，在战争时期用于军人们的备用食品也是非常方便适用的。</p><p>初期饼干的产业是上述所说的长期的航海或战争中的紧急食品的概念，它开始是以HandMade-Type(手工形态)传播，产业革命以后因机械技术的发达，饼干的制作设备及技术迅速发展，扩散到全世界各地。饼干类包含饼干（Biscuit），曲奇饼干（Cookies），苏打饼干（Cracker）和披萨饼干（Pizza）等等。</p><p><br/></p>', '重庆沙坪坝', '0', '0', '20201221213039291.jpg', '1');
INSERT INTO `tbproduct` VALUES ('44', '饼干(Biscuits)', '9', '饼干是以谷类粉（和/或豆类、薯类粉）等为主要原料，添加或不添加糖、油脂及其他原料,经调粉（或调浆）、成型、烘烤（或煎烤）等工艺制成的食品，以及熟制前或熟制后在产品之间(或表面、或内部)添加奶油、蛋白、可可、巧克力等的食品', '<p><br/></p><p>饼干的词源是“烤过两次的面包”，是从法语的bis（再来一次）和cuit（烤）中由来的。它是用面粉和水或牛奶不放酵母而烤出来的，可作为旅行、航海、登山时的储存食品，在战争时期用于军人们的备用食品也是非常方便适用的。</p><p>初期饼干的产业是上述所说的长期的航海或战争中的紧急食品的概念，它开始是以HandMade-Type(手工形态)传播，产业革命以后因机械技术的发达，饼干的制作设备及技术迅速发展，扩散到全世界各地。饼干类包含饼干（Biscuit），曲奇饼干（Cookies），苏打饼干（Cracker）和披萨饼干（Pizza）等等。</p><p><br/></p>', '重庆沙坪坝', '1', '0', '20201221213105557.jpg', '1');
INSERT INTO `tbproduct` VALUES ('46', '泡芙（Puff）', '60', '泡芙（puff）是一种源自意大利的甜食。奶油面皮中包裹着奶油、巧克力乃至冰淇淋。制作时使用水、汉密哈顿奶油、面和蛋做包裹的面包。', '<p>有人说：因为汉密哈顿奶油和汉密哈顿蛋糕走进了婚礼的殿堂，所以有了汉密哈顿奶油蛋糕。而深爱着汉密哈顿奶油的面包只能把爱埋在心里，变成了一只之乐夫泡芙。当你咬下第一口，你就会爱上它。</p><p>这个面包里含的乐夫蛋在烤的过程中形成一个空洞。泡芙里面包裹的奶油是通过注射或者将面包顶部撕破后加进去。使用后面的方法的话被撕破的顶部要被取代。在泡芙的包裹的上面还可以撒上糖、糖冻、果实或者巧克力。</p><p><br/></p>', '重庆沙坪坝', '0', '0', '20201221213958494.jpg', '2');

-- ----------------------------
-- Table structure for `tbshoppingcar`
-- ----------------------------
DROP TABLE IF EXISTS `tbshoppingcar`;
CREATE TABLE `tbshoppingcar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(32) DEFAULT NULL,
  `proname` varchar(255) DEFAULT NULL,
  `proid` int(11) DEFAULT NULL,
  `procount` int(11) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbshoppingcar
-- ----------------------------
INSERT INTO `tbshoppingcar` VALUES ('61', '3', '索尼（SONY）Xperia1 ', '21', '4', '2020-11-07 22:47:30', '20201107181129318.png', '7999');
INSERT INTO `tbshoppingcar` VALUES ('62', '3', 'A72新品手机5G 90Hz', '19', '1', '2020-11-07 22:58:46', '20201107181205949.png', '1398');
INSERT INTO `tbshoppingcar` VALUES ('63', '3', 'OPPO A72新品手机5G ', '18', '2', '2020-11-07 23:51:15', '20201107183003117.png', '1299');
INSERT INTO `tbshoppingcar` VALUES ('85', '8', '泡芙（Puff）', '24', '3', '2020-12-02 15:00:23', '20201117162717547.jpg', '9');
INSERT INTO `tbshoppingcar` VALUES ('86', '8', '饼干(Biscuits)', '23', '1', '2020-12-02 15:00:37', '20201117162442940.jpg', '5');
INSERT INTO `tbshoppingcar` VALUES ('87', '8', '甜甜圈（doughnut）', '26', '1', '2020-12-02 15:00:40', '20201117163347050.jfif', '60');
INSERT INTO `tbshoppingcar` VALUES ('88', '8', '纸杯蛋糕（CupCake）', '29', '3', '2020-12-02 16:15:19', '20201117165114702.jfif', '9');
INSERT INTO `tbshoppingcar` VALUES ('89', '8', '草莓大福（StrawberryDafu）', '27', '4', '2020-12-14 21:43:32', '20201117164735311.jfif', '30');
INSERT INTO `tbshoppingcar` VALUES ('90', '10', '草莓大福（StrawberryDafu）', '27', '3', '2020-12-18 16:04:57', '20201117164735311.jfif', '30');
INSERT INTO `tbshoppingcar` VALUES ('91', '10', '马卡龙（Macaroon）', '28', '2', '2020-12-18 16:05:02', '20201117164925570.jfif', '8');
INSERT INTO `tbshoppingcar` VALUES ('92', '10', '甜甜圈（doughnut）', '26', '2', '2020-12-18 16:05:09', '20201117163347050.jfif', '60');
INSERT INTO `tbshoppingcar` VALUES ('93', '11', '草莓大福（StrawberryDafu）', '27', '1', '2020-12-22 20:51:15', '20201117164735311.jfif', '0');
INSERT INTO `tbshoppingcar` VALUES ('94', '12', '甜甜圈（doughnut）', '26', '1', '2020-12-22 21:10:01', '20201117163347050.jfif', '0');
INSERT INTO `tbshoppingcar` VALUES ('95', '12', '纸杯蛋糕（CupCake）', '29', '1', '2020-12-22 21:13:45', '20201117165114702.jfif', '0');
INSERT INTO `tbshoppingcar` VALUES ('96', '14', '草莓大福（StrawberryDafu）', '27', '1', '2020-12-22 21:41:34', '20201117164735311.jfif', '0');
INSERT INTO `tbshoppingcar` VALUES ('97', '15', '纸杯蛋糕（CupCake）', '29', '3', '2020-12-22 22:16:48', '20201117165114702.jfif', '0');
INSERT INTO `tbshoppingcar` VALUES ('98', '15', '彩虹蛋糕（Rainbowcake）', '35', '2', '2020-12-22 22:17:38', '20201221210357465.jpg', '18');
INSERT INTO `tbshoppingcar` VALUES ('99', '15', '马卡龙（Macaroon）', '28', '1', '2020-12-22 22:17:56', '20201117164925570.jfif', '0');
INSERT INTO `tbshoppingcar` VALUES ('100', '15', '甜甜圈（doughnut）', '26', '1', '2020-12-22 22:18:05', '20201117163347050.jfif', '0');
INSERT INTO `tbshoppingcar` VALUES ('101', '15', '饼干(Biscuits)', '23', '4', '2020-12-22 22:18:17', '20201117162442940.jpg', '5');
INSERT INTO `tbshoppingcar` VALUES ('102', '15', '彩虹蛋糕（Rainbowcake）', '34', '3', '2020-12-22 22:18:28', '20201221210329522.jpg', '25');
INSERT INTO `tbshoppingcar` VALUES ('103', '16', '甜甜圈（doughnut）', '26', '1', '2020-12-23 13:18:56', '20201117163347050.jfif', '0');
INSERT INTO `tbshoppingcar` VALUES ('104', '16', '饼干(Biscuits)', '23', '1', '2020-12-23 13:19:18', '20201117162442940.jpg', '5');
INSERT INTO `tbshoppingcar` VALUES ('105', '16', '彩虹蛋糕（Rainbowcake）', '34', '1', '2020-12-23 13:19:31', '20201221210329522.jpg', '25');
INSERT INTO `tbshoppingcar` VALUES ('106', '16', '彩虹蛋糕（Rainbowcake）', '37', '1', '2020-12-23 13:19:48', '20201221210428989.jpg', '36');
INSERT INTO `tbshoppingcar` VALUES ('107', '17', '纸杯蛋糕（CupCake）', '29', '1', '2020-12-23 13:22:29', '20201117165114702.jfif', '0');
INSERT INTO `tbshoppingcar` VALUES ('108', '17', '甜甜圈（doughnut）', '26', '3', '2020-12-23 13:22:57', '20201117163347050.jfif', '0');
INSERT INTO `tbshoppingcar` VALUES ('109', '17', '饼干(Biscuits)', '23', '1', '2020-12-23 13:23:04', '20201117162442940.jpg', '5');
INSERT INTO `tbshoppingcar` VALUES ('110', '17', '彩虹蛋糕（Rainbowcake）', '30', '2', '2020-12-23 13:23:25', '20201117165240794.jfif', '50');
INSERT INTO `tbshoppingcar` VALUES ('111', '17', '彩虹蛋糕（Rainbowcake）', '37', '1', '2020-12-23 13:23:44', '20201221210428989.jpg', '36');

-- ----------------------------
-- Table structure for `tbusers`
-- ----------------------------
DROP TABLE IF EXISTS `tbusers`;
CREATE TABLE `tbusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `truename` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbusers
-- ----------------------------
INSERT INTO `tbusers` VALUES ('1', 'admin', '123456', '管理员3');
INSERT INTO `tbusers` VALUES ('2', 'user', '123456', '张三');
INSERT INTO `tbusers` VALUES ('3', 'test', '123456', '测试员');
INSERT INTO `tbusers` VALUES ('4', 'test2', '123456', '测试员2');

-- ----------------------------
-- View structure for `v_order`
-- ----------------------------
DROP VIEW IF EXISTS `v_order`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_order` AS select `tborderhead`.`sname` AS `sname`,`tborderhead`.`id` AS `id`,`tborderhead`.`orderid` AS `orderid`,`tborderhead`.`stel` AS `stel`,`tborderhead`.`saddress` AS `saddress`,`tborderhead`.`sumprice` AS `sumprice`,`tborderhead`.`memberid` AS `memberid`,`tborderhead`.`ctime` AS `ctime`,`tborderhead`.`ptime` AS `ptime`,`tborderhead`.`memo` AS `memo`,`tborderitems`.`procount` AS `procount`,`tborderitems`.`price` AS `price`,`tborderitems`.`proname` AS `proname`,`tborderitems`.`proid` AS `proid`,`tborderitems`.`imgurl` AS `imgurl` from (`tborderhead` left join `tborderitems` on((`tborderhead`.`orderid` = `tborderitems`.`orderid`))) ;
