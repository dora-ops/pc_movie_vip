/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : movie_pc

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2019-05-07 09:53:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for colmovie
-- ----------------------------
DROP TABLE IF EXISTS `colmovie`;
CREATE TABLE `colmovie` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `movie_url` varchar(50) DEFAULT NULL,
  `user_id` int(20) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of colmovie
-- ----------------------------
INSERT INTO `colmovie` VALUES ('4', 'http://www.iqiyi.com/v_19rr3q7kkc.html', '10', '2019-05-07 00:23:04');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) DEFAULT NULL,
  `movie_id` int(20) DEFAULT NULL,
  `user_id` int(20) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('43', '我爱科技论坛VIP视频电影免费看啦！', '132153', '10', '2019-05-06 22:14:31');
INSERT INTO `comments` VALUES ('44', '我爱科技论坛VIP视频电影免费看啦！', '132153', '10', '2019-05-06 22:14:45');

-- ----------------------------
-- Table structure for interface
-- ----------------------------
DROP TABLE IF EXISTS `interface`;
CREATE TABLE `interface` (
  `id` int(11) NOT NULL,
  `interface_name` varchar(255) DEFAULT NULL,
  `interface_url` varchar(255) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of interface
-- ----------------------------

-- ----------------------------
-- Table structure for movies
-- ----------------------------
DROP TABLE IF EXISTS `movies`;
CREATE TABLE `movies` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `info` varchar(500) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `score` varchar(50) DEFAULT NULL,
  `playnum` int(50) DEFAULT NULL,
  `commentnum` int(50) DEFAULT NULL,
  `release_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `addtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(50) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL COMMENT '地区',
  `topic` varchar(255) DEFAULT NULL COMMENT '主题',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132351 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of movies
-- ----------------------------
INSERT INTO `movies` VALUES ('132153', '老师·好', 'http://www.iqiyi.com/v_19rr3q7kkc.html', '于谦变“恶霸老师”', 'http://pic0.iqiyipic.com/image/20190430/29/1a/v_121261299_m_601_m6_480_270.jpg', '<strong class=\"num\">8</strong>.8', '19', '0', '2019-05-07 00:19:32', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132154', '地心抢险记', 'http://www.iqiyi.com/v_19rrg5813c.html', '潜入地心拯救世界末日', 'http://pic7.iqiyipic.com/image/20180212/02/11/v_50488001_m_601_m4_180_236.jpg', '<strong class=\"num\">8</strong>.4', '9', '0', '2019-05-06 22:05:03', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132155', '人间·喜剧', 'http://www.iqiyi.com/v_19rrbokik0.html', '艾伦王智爆笑讨薪', 'http://pic3.iqiyipic.com/image/20190428/6e/b9/v_115049606_m_601_m15_180_236.jpg', '<strong class=\"num\">7</strong>.4', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132156', '消失的罪证', 'http://www.iqiyi.com/v_19rsfs7yyc.html', '天才黑客连环杀人', 'http://pic1.iqiyipic.com/image/20190430/ac/6b/v_128298383_m_601_m7_180_236.jpg', '<strong class=\"num\">7</strong>.1', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132157', '流浪地球', 'http://www.iqiyi.com/v_19rrfe142o.html', '5.21会员免费看', 'http://pic5.iqiyipic.com/image/20190429/10/1b/v_114811035_m_601_m14_180_236.jpg', '<strong class=\"num\">8</strong>.5', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132158', '绿皮书', 'http://www.iqiyi.com/v_19rr5eoxww.html', '黑白配爆笑公路行', 'http://pic9.iqiyipic.com/image/20190412/f5/b0/v_119733424_m_601_m8_180_236.jpg', '<strong class=\"num\">8</strong>.4', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132159', '古墓入侵者', 'http://www.iqiyi.com/v_19rsiwm8tk.html', '探索神秘中国古墓', 'http://pic9.iqiyipic.com/image/20190503/b8/33/v_127792581_m_601_m2_180_236.jpg', '<strong class=\"num\">5</strong>.3', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132160', '飞驰人生', 'http://www.iqiyi.com/v_19rqy4kans.html', '沈腾黄景瑜爆燃对决', 'http://pic5.iqiyipic.com/image/20190329/95/ba/v_117911970_m_601_m19_180_236.jpg', '<strong class=\"num\">8</strong>.3', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132161', '风中有朵雨做的云', 'http://www.iqiyi.com/v_19rr7p1l1g.html', '井柏然马思纯虐恋', 'http://pic4.iqiyipic.com/image/20190503/e6/75/v_112874189_m_601_m7_180_236.jpg', '<strong class=\"num\">6</strong>.3', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132162', '无敌浩克', 'http://www.iqiyi.com/v_19rrhyltww.html', '绿巨人血洗残暴军方', 'http://pic2.iqiyipic.com/image/20190503/3a/ff/v_106523822_m_601_m9_180_236.jpg', '<strong class=\"num\">8</strong>.6', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132163', '瘦虎肥龙', 'http://www.iqiyi.com/v_19rr7rdnow.html', '肥瘦拍档斗毒贩', 'http://pic0.iqiyipic.com/image/20180308/82/2d/v_112850590_m_601_m2_180_236.jpg', '<strong class=\"num\">8</strong>.6', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132164', 'X战警：天启', 'http://www.iqiyi.com/v_19rrli8bbk.html', '最强变种人终极一战', 'http://pic0.iqiyipic.com/image/20180630/9c/59/v_110606841_m_601_m5_180_236.jpg', '<strong class=\"num\">8</strong>.6', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132165', '狂暴凶狮', 'http://www.iqiyi.com/v_19rqtyujxg.html', '食人凶狮狂噬人类', 'http://pic0.iqiyipic.com/image/20190424/ad/90/v_125687901_m_601_m5_180_236.jpg', '<strong class=\"num\">7</strong>.4', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132166', '决战异世界', 'http://www.iqiyi.com/v_19rsfka8r0.html', '安志杰大战外星人', 'http://pic1.iqiyipic.com/image/20190428/35/fa/v_128431517_m_601_m2_180_236.jpg', '<strong class=\"num\">7</strong>.3', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132167', '龙棺古墓2亡灵之花', 'http://www.iqiyi.com/v_19rsje19ww.html', '神秘宝藏引众人厮杀', 'http://pic9.iqiyipic.com/image/20190416/3d/4b/v_128140598_m_601_m6_180_236.jpg', '<strong class=\"num\">6</strong>.0', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132168', '超能灭赌师', 'http://www.iqiyi.com/v_19rsfmaqww.html', '超级赌神再现江湖', 'http://pic4.iqiyipic.com/image/20190430/3f/29/v_128243490_m_601_m8_180_236.jpg', '<strong class=\"num\">6</strong>.8', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132169', '新喜剧之王', 'http://www.iqiyi.com/v_19rqrgpp5k.html', '女装王宝强超辣眼', 'http://pic7.iqiyipic.com/image/20190308/eb/3c/v_121961169_m_601_m12_180_236.jpg', '<strong class=\"num\">7</strong>.7', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132170', '红海行动', 'http://www.iqiyi.com/v_19rr7plwdc.html', '特种部队跨境救援', 'http://pic4.iqiyipic.com/image/20180930/84/a8/v_112882553_m_601_m5_180_236.jpg', '<strong class=\"num\">8</strong>.9', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132171', '深海x异种2', 'http://www.iqiyi.com/v_19rshltlvo.html', '神秘海域巨兽嗜人', 'http://pic2.iqiyipic.com/image/20190422/78/b3/v_127116810_m_601_m8_180_236.jpg', '<strong class=\"num\">6</strong>.0', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132172', '三重威胁之跨国大营救', 'http://www.iqiyi.com/v_19rsi5tllg.html', '托尼贾肉搏开打', 'http://pic7.iqiyipic.com/image/20190418/1c/6c/v_127431585_m_601_m14_180_236.jpg', '<strong class=\"num\">7</strong>.8', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132173', '妖狐苏妲己', 'http://www.iqiyi.com/v_19rr2t9624.html', '国民女神化身苏妲己', 'http://pic5.iqiyipic.com/image/20181120/e8/59/v_120472260_m_601_m4_180_236.jpg', '<strong class=\"num\">7</strong>.3', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132174', '战狼2', 'http://www.iqiyi.com/v_19rre19on4.html', '硬汉吴京搏命出击', 'http://pic9.iqiyipic.com/image/20180220/93/eb/v_113763212_m_601_m2_180_236.jpg', '<strong class=\"num\">9</strong>.2', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132175', '绝地逃亡（普通话）', 'http://www.iqiyi.com/v_19rr9j1smk.html', '成龙爆笑动作喜剧新作', 'http://pic6.iqiyipic.com/image/20180218/4e/5d/v_111001355_m_601_m3_180_236.jpg', '<strong class=\"num\">8</strong>.6', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132176', '西虹市首富', 'http://www.iqiyi.com/v_19rrf2nw1g.html', '沈腾变身暴富锦鲤', 'http://pic6.iqiyipic.com/image/20181031/24/f2/v_114319402_m_601_m10_180_236.jpg', '<strong class=\"num\">8</strong>.8', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132177', '“大”人物', 'http://www.iqiyi.com/v_19rr6gf1rs.html', '王千源狠揍包贝尔', 'http://pic5.iqiyipic.com/image/20190227/a2/42/v_120284436_m_601_m11_180_236.jpg', '<strong class=\"num\">8</strong>.6', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132178', '白蛇：缘起', 'http://www.iqiyi.com/v_19rr575vxk.html', '国师蛇族巅峰对决', 'http://pic8.iqiyipic.com/image/20190312/7d/45/v_119183912_m_601_m16_180_236.jpg', '<strong class=\"num\">8</strong>.9', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132179', '死侍2：我爱我家', 'http://www.iqiyi.com/v_19rr7p0tvk.html', '小贱贱爆笑回归', 'http://pic4.iqiyipic.com/image/20190330/91/79/v_112874008_m_601_m11_180_236.jpg', '<strong class=\"num\">7</strong>.9', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132180', '绿巨人浩克', 'http://www.iqiyi.com/v_19rrhyujy8.html', '超级英雄也可以玩轻功', 'http://pic1.iqiyipic.com/image/20180216/a6/d7/v_106556139_m_601_m8_180_236.jpg', '<strong class=\"num\">8</strong>.2', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132181', '把哥哥退货可以吗?', 'http://www.iqiyi.com/v_19rqu1tsus.html', '戏精兄妹爆笑互撕', 'http://pic7.iqiyipic.com/image/20190505/2c/eb/v_125794053_m_601_m5_180_236.jpg', '<strong class=\"num\">7</strong>.8', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132182', '狼群行动', 'http://www.iqiyi.com/v_19rsi75wz4.html', '海外营救血战绑匪', 'http://pic1.iqiyipic.com/image/20190413/c8/80/v_127412777_m_601_m13_180_236.jpg', '<strong class=\"num\">6</strong>.1', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132183', '海王', 'http://www.iqiyi.com/v_19rr7pgg30.html', '王者降临称霸七海', 'http://pic9.iqiyipic.com/image/20190306/3b/b0/v_112879844_m_601_m14_180_236.jpg', '<strong class=\"num\">8</strong>.7', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132184', '绿皮书（普通话）', 'http://www.iqiyi.com/v_19rsjflem8.html', '莽夫绅士禁忌之旅', 'http://pic9.iqiyipic.com/image/20190415/23/e7/v_128125704_m_601_m2_180_236.jpg', '<strong class=\"num\">7</strong>.6', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132185', '大上海', 'http://www.iqiyi.com/v_19rrjxbrh0.html', '四大巨星 强手交锋', 'http://pic1.iqiyipic.com/image/20180212/89/33/v_50383102_m_601_m9_180_236.jpg', '<strong class=\"num\">8</strong>.7', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132186', '反贪风暴3', 'http://www.iqiyi.com/v_19rrdgiq8s.html', '古天乐陷黑金迷局', 'http://pic5.iqiyipic.com/image/20181026/c2/a9/v_116166162_m_601_m16_180_236.jpg', '<strong class=\"num\">8</strong>.5', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132187', '风语咒', 'http://www.iqiyi.com/v_19rrcsuqyw.html', '上古凶兽毁天灭地', 'http://pic3.iqiyipic.com/image/20180917/cf/c1/v_115720703_m_601_m12_180_236.jpg', '<strong class=\"num\">9</strong>.0', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132188', '东方秃鹰', 'http://www.iqiyi.com/v_19rr7qfg94.html', '五福豪华阵容大集合', 'http://pic0.iqiyipic.com/image/20181017/2d/0b/v_112855425_m_601_m4_180_236.jpg', '<strong class=\"num\">8</strong>.3', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132189', '救僵清道夫', 'http://www.iqiyi.com/v_19rr7plbo4.html', '林正英爱徒再演僵尸片', 'http://pic4.iqiyipic.com/image/20190116/eb/7e/v_112883435_m_601_m3_180_236.jpg', '<strong class=\"num\">7</strong>.4', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132190', '方世玉之盖世英雄', 'http://www.iqiyi.com/v_19rshl6vu0.html', '孤胆力战血滴子', 'http://pic8.iqiyipic.com/image/20190428/98/a7/v_127126327_m_601_m26_180_236.jpg', '<strong class=\"num\">7</strong>.0', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132191', '僵尸先生', 'http://www.iqiyi.com/v_19rr7r6gls.html', '林正英经典僵尸片', 'http://pic5.iqiyipic.com/image/20181019/de/97/v_112846068_m_601_m2_180_236.jpg', '<strong class=\"num\">8</strong>.7', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132192', '青衣道师', 'http://www.iqiyi.com/v_19rshypfjo.html', '道师下山斩妖除魔', 'http://pic8.iqiyipic.com/image/20190418/ac/b4/v_127064238_m_601_m17_180_236.jpg', '<strong class=\"num\">7</strong>.1', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132193', 'X战警：逆转未来', 'http://www.iqiyi.com/v_19rrmmlstg.html', '一美法鲨基情四射', 'http://pic3.iqiyipic.com/image/20190401/d2/d2/v_108421888_m_601_m6_180_236.jpg', '<strong class=\"num\">8</strong>.7', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132194', '横行霸道', 'http://www.iqiyi.com/v_19rr3gp7zg.html', '曾志伟任达华互斗', 'http://pic1.iqiyipic.com/image/20181225/9b/81/v_120910788_m_601_m3_180_236.jpg', '<strong class=\"num\">7</strong>.6', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132195', '战狼', 'http://www.iqiyi.com/v_19rrnqxz7k.html', '国产军事动作开山之作', 'http://pic2.iqiyipic.com/image/20180217/db/56/v_109159633_m_601_m10_180_236.jpg', '<strong class=\"num\">9</strong>.2', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132196', '超凡蜘蛛侠', 'http://www.iqiyi.com/v_19rrjyphgs.html', '新版蜘蛛侠大战哥斯拉', 'http://pic0.iqiyipic.com/image/20190401/17/1c/v_50364368_m_601_m7_180_236.jpg', '<strong class=\"num\">8</strong>.6', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132197', '疯狂大老千', 'http://www.iqiyi.com/v_19rrmy7sbw.html', '麦嘉石天一对活宝', 'http://pic5.iqiyipic.com/image/20180530/fe/61/v_62816784_m_601_m2_180_236.jpg', '<strong class=\"num\">8</strong>.0', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132198', '阳台上', 'http://www.iqiyi.com/v_19rrcch4jk.html', '周冬雨遭跟踪偷窥', 'http://pic5.iqiyipic.com/image/20190410/60/4f/v_115482032_m_601_m8_180_236.jpg', '<strong class=\"num\">6</strong>.0', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132199', '正义联盟', 'http://www.iqiyi.com/v_19rr7r5ivo.html', '超英集结拯救世界', 'http://pic4.iqiyipic.com/image/20190222/6b/0b/v_112846582_m_601_m4_180_236.jpg', '<strong class=\"num\">8</strong>.1', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132200', '无人区', 'http://www.iqiyi.com/v_19rrh65smw.html', '徐峥黄渤公路大逃亡', 'http://pic5.iqiyipic.com/image/20190401/2f/66/v_105087120_m_601_m8_180_236.jpg', '<strong class=\"num\">8</strong>.7', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132201', '快把我哥带走', 'http://www.iqiyi.com/v_19rrcgmlfg.html', '张子枫彭昱畅互怼', 'http://pic0.iqiyipic.com/image/20180930/4e/0d/v_115425986_m_601_m7_180_236.jpg', '<strong class=\"num\">8</strong>.9', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132202', '一切都好', 'http://www.iqiyi.com/v_19rr72v34s.html', '电影版《都挺好》', 'http://pic1.iqiyipic.com/image/20190417/65/05/v_112583653_m_601_m2_180_236.jpg', '<strong class=\"num\">8</strong>.7', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132203', '奇葩追梦', 'http://www.iqiyi.com/v_19rrlyz38w.html', '开心麻花爆笑来袭', 'http://pic5.iqiyipic.com/image/20180218/ed/99/v_110838881_m_601_m4_180_236.jpg', '<strong class=\"num\">7</strong>.6', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132204', '聊斋群妖谱', 'http://www.iqiyi.com/v_19rsi2x6sc.html', '成龙弟子降魔除妖', 'http://pic9.iqiyipic.com/image/20190408/c7/25/v_127011873_m_601_m2_180_236.jpg', '<strong class=\"num\">7</strong>.0', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132205', '宝贝计划', 'http://www.iqiyi.com/v_19rrjuetwk.html', '千万元宝贝绑架惊魂记', 'http://pic3.iqiyipic.com/image/20190419/5c/44/v_50439186_m_601_m20_180_236.jpg', '<strong class=\"num\">9</strong>.1', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132206', '憨豆特工3', 'http://www.iqiyi.com/v_19rrc03xgw.html', '退休特工救世界', 'http://pic2.iqiyipic.com/image/20190322/33/3a/v_115527866_m_601_m11_180_236.jpg', '<strong class=\"num\">8</strong>.5', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132207', '唐人街探案2', 'http://www.iqiyi.com/v_19rr839kro.html', '王宝强爆笑破案', 'http://pic4.iqiyipic.com/image/20180420/e1/c0/v_113158420_m_601_m5_180_236.jpg', '<strong class=\"num\">8</strong>.7', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132208', '轩辕大帝', 'http://www.iqiyi.com/v_19rrljwwbc.html', '炎黄始祖之战开天辟地', 'http://pic7.iqiyipic.com/image/20180218/ea/a0/v_110571432_m_601_m4_180_236.jpg', '<strong class=\"num\">8</strong>.4', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132209', '建党伟业', 'http://www.iqiyi.com/v_19rrk3nlz4.html', '回顾党的光辉历程', 'http://pic6.iqiyipic.com/image/20190129/95/63/v_50111603_m_601_m5_180_236.jpg', '<strong class=\"num\">8</strong>.1', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132210', '夏洛特烦恼', 'http://www.iqiyi.com/v_19rrkbqj9o.html', '沈腾穿越变歌王', 'http://pic3.iqiyipic.com/image/20181101/1f/02/v_109762898_m_601_m7_180_236.jpg', '<strong class=\"num\">9</strong>.1', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132211', '速度与激情5', 'http://www.iqiyi.com/v_19rri0vxp0.html', '亡命狂冲直撞替天行道', 'http://pic9.iqiyipic.com/image/20181211/c4/7b/v_106340602_m_601_m10_180_236.jpg', '<strong class=\"num\">9</strong>.1', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132212', '僵尸叔叔', 'http://www.iqiyi.com/v_19rr7r4x20.html', '训练跳舞的僵尸', 'http://pic7.iqiyipic.com/image/20190325/21/92/v_112846130_m_601_m5_180_236.jpg', '<strong class=\"num\">8</strong>.5', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132213', '少女宿舍', 'http://www.iqiyi.com/v_19rqxulhuo.html', '最恐怖女生宿舍', 'http://pic0.iqiyipic.com/image/20190426/4b/99/v_125372612_m_601_m5_180_236.jpg', '<strong class=\"num\">6</strong>.0', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132214', '死侍', 'http://www.iqiyi.com/v_19rr7q1s5w.html', '嘴炮英雄贱萌归来', 'http://pic0.iqiyipic.com/image/20180220/74/8a/v_112870422_m_601_m3_180_236.jpg', '<strong class=\"num\">8</strong>.5', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132215', '一吻定情', 'http://www.iqiyi.com/v_19rr3knsh8.html', '少女心疯狂爆炸', 'http://pic8.iqiyipic.com/image/20190313/05/bb/v_120849100_m_601_m4_180_236.jpg', '<strong class=\"num\">8</strong>.0', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132216', '剑归何处', 'http://www.iqiyi.com/v_19rqqsln54.html', '女刺客搏命复仇', 'http://pic7.iqiyipic.com/image/20190404/6f/f0/v_123819493_m_601_m17_180_236.jpg', '<strong class=\"num\">7</strong>.1', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132217', '我在黑社会的日子', 'http://www.iqiyi.com/v_19rr4zdirw.html', '发哥打造古惑仔雏形', 'http://pic5.iqiyipic.com/image/20181023/d1/94/v_119326181_m_601_m3_180_236.jpg', '<strong class=\"num\">8</strong>.0', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132218', 'X战警3：最后之战', 'http://www.iqiyi.com/v_19rrk0zhoc.html', 'x教授与万磁王的对抗', 'http://pic6.iqiyipic.com/image/20180212/b1/65/v_50151124_m_601_m5_180_236.jpg', '<strong class=\"num\">8</strong>.6', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132219', '睡在我上铺的兄弟', 'http://www.iqiyi.com/v_19rr74xyxo.html', '那些年一起把妹的兄弟', 'http://pic3.iqiyipic.com/image/20180220/a6/42/v_112554066_m_601_m2_180_236.jpg', '<strong class=\"num\">8</strong>.8', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132220', '蜘蛛侠3', 'http://www.iqiyi.com/v_19rrifwvjp.html', '美国三好学生变毒蜘蛛', 'http://pic4.iqiyipic.com/image/20180212/21/16/v_50698841_m_601_m6_180_236.jpg', '<strong class=\"num\">8</strong>.4', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132221', '神奇女侠', 'http://www.iqiyi.com/v_19rr7p2u3k.html', '战斗女神大杀四方', 'http://pic0.iqiyipic.com/image/20190101/f3/a8/v_112873643_m_601_m2_180_236.jpg', '<strong class=\"num\">8</strong>.2', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132222', '超凡蜘蛛侠2', 'http://www.iqiyi.com/v_19rrmn7rpo.html', '蜘蛛侠史上最强对决', 'http://pic1.iqiyipic.com/image/20190401/85/67/v_108356371_m_601_m7_180_236.jpg', '<strong class=\"num\">8</strong>.5', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132223', '我不是药神', 'http://www.iqiyi.com/v_19rreozmq8.html', '30亿票房口碑爆款', 'http://pic9.iqiyipic.com/image/20181109/27/e4/v_114041616_m_601_m9_180_236.jpg', '<strong class=\"num\">9</strong>.1', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132224', '变形金刚5：最后的骑士', 'http://www.iqiyi.com/v_19rr0fy0lc.html', '终极战士拯救地球', 'http://pic0.iqiyipic.com/image/20181029/5f/25/v_116668456_m_601_m7_180_236.jpg', '<strong class=\"num\">8</strong>.0', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132225', '绝地逃亡', 'http://www.iqiyi.com/v_19rrm3u0d0.html', '范冰冰成龙破惊天阴谋', 'http://pic9.iqiyipic.com/image/20180218/b1/9b/v_110926872_m_601_m3_180_236.jpg', '<strong class=\"num\">8</strong>.7', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132226', '一眉道人', 'http://www.iqiyi.com/v_19rr4zhc0s.html', '中国法术对付西洋僵尸', 'http://pic9.iqiyipic.com/image/20181023/0f/c7/v_119329168_m_601_m2_180_236.jpg', '<strong class=\"num\">8</strong>.6', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132227', '战狼犬', 'http://www.iqiyi.com/v_19rqqph4to.html', '退役工作犬的感人故事', 'http://pic9.iqiyipic.com/image/20190117/82/3f/v_123871499_m_601_m2_180_236.jpg', '<strong class=\"num\">7</strong>.3', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132228', '恐龙王', 'http://www.iqiyi.com/v_19rqzttm6c.html', '小小恐龙大大梦想', 'http://pic6.iqiyipic.com/image/20190108/40/9e/v_118913736_m_601_m8_180_236.jpg', '<strong class=\"num\">8</strong>.2', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132229', '灵幻先生', 'http://www.iqiyi.com/v_19rr66y02g.html', '林正英僵尸先生大结局', 'http://pic2.iqiyipic.com/image/20181126/c8/fa/v_119767538_m_601_m4_180_236.jpg', '<strong class=\"num\">8</strong>.5', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132230', '西风烈', 'http://www.iqiyi.com/v_19rrjdpw2k.html', '硬派特警对决杀手集团', 'http://pic0.iqiyipic.com/image/20190429/dd/1b/v_50053756_m_601_m9_180_236.jpg', '<strong class=\"num\">7</strong>.1', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132231', '五亿探长雷洛传：雷老虎', 'http://www.iqiyi.com/v_19rr64aluc.html', '总华探长吸金成魔', 'http://pic6.iqiyipic.com/image/20181113/2d/bf/v_119807089_m_601_m2_180_236.jpg', '<strong class=\"num\">8</strong>.3', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132232', '勇士', 'http://www.iqiyi.com/v_19rsj5lew8.html', '拳拳到肉刺激爆棚', 'http://pic9.iqiyipic.com/image/20190423/cf/a4/v_127657420_m_601_m1_180_236.jpg', '<strong class=\"num\">8</strong>.0', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132233', '廉政风云', 'http://www.iqiyi.com/v_19rqrqbn34.html', '刘青云无间反腐', 'http://pic1.iqiyipic.com/image/20190329/48/71/v_121808127_m_601_m9_180_236.jpg', '<strong class=\"num\">7</strong>.5', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132234', '神探蒲松龄', 'http://www.iqiyi.com/v_19rr7pkg6g.html', '成龙携妖破奇案', 'http://pic1.iqiyipic.com/image/20190313/5d/59/v_112883191_m_601_m27_180_236.jpg', '<strong class=\"num\">7</strong>.6', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132235', '无双', 'http://www.iqiyi.com/v_19rrdgdwpg.html', '影帝联手组假钞天团', 'http://pic7.iqiyipic.com/image/20181220/1c/55/v_116163725_m_601_m13_180_236.jpg', '<strong class=\"num\">8</strong>.5', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132236', '封魔传', 'http://www.iqiyi.com/v_19rqvw3e5s.html', '女娲伏羲大战神兽', 'http://pic1.iqiyipic.com/image/20190314/75/30/v_124590416_m_601_m5_180_236.jpg', '<strong class=\"num\">6</strong>.2', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132237', '监狱风云2', 'http://www.iqiyi.com/v_19rrjzylw8.html', '周润发版中国式越狱', 'http://pic9.iqiyipic.com/image/20181218/78/0c/v_50175541_m_601_m8_180_236.jpg', '<strong class=\"num\">8</strong>.9', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132238', '机器侠', 'http://www.iqiyi.com/v_19rrjbc0dg.html', '孙俪爱上功夫机器人', 'http://pic7.iqiyipic.com/image/20190401/83/bf/v_50075474_m_601_m7_180_236.jpg', '<strong class=\"num\">8</strong>.5', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132239', '幕后玩家', 'http://www.iqiyi.com/v_19rr8u7i0g.html', '徐峥当众裸奔', 'http://pic1.iqiyipic.com/image/20180528/ff/3c/v_113554298_m_601_m8_180_236.jpg', '<strong class=\"num\">8</strong>.1', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132240', '龙虎风云', 'http://www.iqiyi.com/v_19rriftj45.html', '发哥蝉联影帝之作', 'http://pic2.iqiyipic.com/image/20190120/52/12/v_50526953_m_601_m3_180_236.jpg', '<strong class=\"num\">8</strong>.5', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132241', 'X战警：第一战', 'http://www.iqiyi.com/v_19rrjz9zx8.html', 'X教授万磁王虐恋情深', 'http://pic3.iqiyipic.com/image/20190401/86/4d/v_50185180_m_601_m5_180_236.jpg', '<strong class=\"num\">8</strong>.7', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132242', '夺命地铁', 'http://www.iqiyi.com/v_19rrkqrbm0.html', '地铁隧道绝命逃亡', 'http://pic1.iqiyipic.com/image/20180217/d2/2d/v_109660062_m_601_m2_180_236.jpg', '<strong class=\"num\">8</strong>.2', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132243', '大师兄', 'http://www.iqiyi.com/v_19rr0xafmg.html', '甄子丹以拳教学', 'http://pic8.iqiyipic.com/image/20181008/eb/af/v_116880780_m_601_m11_180_236.jpg', '<strong class=\"num\">8</strong>.6', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132244', '新世界', 'http://www.iqiyi.com/v_19rrgz4do4.html', '另类韩式黑帮卧底反杀', 'http://pic6.iqiyipic.com/image/20190401/a1/53/v_104686105_m_601_m6_180_236.jpg', '<strong class=\"num\">8</strong>.9', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132245', '大嫂', 'http://www.iqiyi.com/v_19rre83m48.html', '九龙城寨玫瑰传奇', 'http://pic5.iqiyipic.com/image/20181009/15/f6/v_114130549_m_601_m4_180_236.jpg', '<strong class=\"num\">7</strong>.3', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132246', '九品芝麻官', 'http://www.iqiyi.com/v_19rrj5oif0.html', '星爷教你如何打老虎', 'http://pic6.iqiyipic.com/image/20190120/d9/4d/v_50002644_m_601_m8_180_236.jpg', '<strong class=\"num\">9</strong>.0', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132247', '一出好戏', 'http://www.iqiyi.com/v_19rrc17tj8.html', '黄渤导演处女作', 'http://pic2.iqiyipic.com/image/20180929/83/2c/v_115502937_m_601_m10_180_236.jpg', '<strong class=\"num\">8</strong>.5', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132248', '兄弟', 'http://www.iqiyi.com/v_19rrnyc7kw.html', '无线五虎重出江湖', 'http://pic3.iqiyipic.com/image/20180217/ca/b1/v_108836176_m_601_m3_180_236.jpg', '<strong class=\"num\">8</strong>.4', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132249', '闪光少女', 'http://www.iqiyi.com/v_19rr7plaa8.html', '徐璐玩转生猛青春', 'http://pic3.iqiyipic.com/image/20181217/d1/70/v_112883412_m_601_m4_180_236.jpg', '<strong class=\"num\">9</strong>.1', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132250', '飞龙猛将', 'http://www.iqiyi.com/v_19rrjbs2ho.html', '功夫三人组斗毒枭', 'http://pic6.iqiyipic.com/image/20190503/1a/a5/v_50084284_m_601_m7_180_236.jpg', '<strong class=\"num\">8</strong>.2', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132251', '赌神', 'http://www.iqiyi.com/v_19rrj5o9ak.html', '刘德华救赌神成高徒', 'http://pic0.iqiyipic.com/image/20181102/10/d0/v_50002680_m_601_m8_180_236.jpg', '<strong class=\"num\">8</strong>.9', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132252', '极限特工3：终极回归', 'http://www.iqiyi.com/v_19rrcnqsuc.html', '范迪塞尔甄子丹恶斗', 'http://pic8.iqiyipic.com/image/20180508/99/85/v_115972442_m_601_m1_180_236.jpg', '<strong class=\"num\">8</strong>.0', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132253', '唐伯虎点秋香', 'http://www.iqiyi.com/v_19rrlunup8.html', '周星驰巩俐才子佳人', 'http://pic6.iqiyipic.com/image/20190401/a7/73/v_110381483_m_601_m5_180_236.jpg', '<strong class=\"num\">9</strong>.1', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132254', '给爸爸的信', 'http://www.iqiyi.com/v_19rrjpzssc.html', '李连杰演绎父子情深', 'http://pic0.iqiyipic.com/image/20190419/48/d0/v_50343684_m_601_m7_180_236.jpg', '<strong class=\"num\">9</strong>.0', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132255', '新乌龙院之笑闹江湖', 'http://www.iqiyi.com/v_19rrbrdcz0.html', '吴孟达重现经典', 'http://pic2.iqiyipic.com/image/20180909/db/af/v_114991190_m_601_m11_180_236.jpg', '<strong class=\"num\">7</strong>.6', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132256', '齐天大圣之大闹龙宫', 'http://www.iqiyi.com/v_19rqvvh4ds.html', '大圣海底探宝斗破妖龙', 'http://pic9.iqiyipic.com/image/20190412/b3/a5/v_124600672_m_601_m9_180_236.jpg', '<strong class=\"num\">6</strong>.9', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132257', '狱中龙', 'http://www.iqiyi.com/v_19rr7qnod8.html', '刘德华版监狱风云', 'http://pic3.iqiyipic.com/image/20180530/d7/5e/v_112859459_m_601_m2_180_236.jpg', '<strong class=\"num\">8</strong>.6', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132258', '无名之辈', 'http://www.iqiyi.com/v_19rqzsstl4.html', '陈建斌变泼皮保安', 'http://pic3.iqiyipic.com/image/20190104/5a/79/v_118937346_m_601_m12_180_236.jpg', '<strong class=\"num\">8</strong>.7', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132259', '只手遮天（1996）', 'http://www.iqiyi.com/v_19rrk27dk0.html', '陈浩南遭遇阴险对手', 'http://pic0.iqiyipic.com/image/20180925/72/51/v_50128027_m_601_m11_180_236.jpg', '<strong class=\"num\">8</strong>.3', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132260', '金刚狼3：殊死一战', 'http://www.iqiyi.com/v_19rr7bhllg.html', '萝莉金刚狼凶猛登场', 'http://pic9.iqiyipic.com/image/20180219/38/3a/v_112258492_m_601_m4_180_236.jpg', '<strong class=\"num\">8</strong>.6', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132261', '太阳之泪', 'http://www.iqiyi.com/v_19rrk2ub28.html', '威利斯化身上校救渔民', 'http://pic6.iqiyipic.com/image/20180211/a8/36/v_50119379_m_601_m5_180_236.jpg', '<strong class=\"num\">8</strong>.7', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132262', '生死狙击', 'http://www.iqiyi.com/v_19rrk3pi9g.html', '退役神枪手逆袭政客', 'http://pic4.iqiyipic.com/image/20180211/d6/33/v_50112646_m_601_m8_180_236.jpg', '<strong class=\"num\">8</strong>.9', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132263', '蜘蛛侠', 'http://www.iqiyi.com/v_19rrk3rr60.html', '屌丝男逆袭变超级英雄', 'http://pic1.iqiyipic.com/image/20190401/cc/ed/v_50112209_m_601_m9_180_236.jpg', '<strong class=\"num\">8</strong>.6', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132264', '赌侠', 'http://www.iqiyi.com/v_19rrj5trb4.html', '刘德华周星驰联手抗敌', 'http://pic1.iqiyipic.com/image/20190401/2b/c6/v_50003475_m_601_m9_180_236.jpg', '<strong class=\"num\">9</strong>.0', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132265', '二郎神之三目', 'http://www.iqiyi.com/v_19rqtf5mzc.html', '降魔除妖劈山救母', 'http://pic0.iqiyipic.com/image/20181229/08/af/v_122779272_m_601_m3_180_236.jpg', '<strong class=\"num\">6</strong>.3', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132266', '与龙共舞', 'http://www.iqiyi.com/v_19rrk28cw8.html', '华仔恋上灰姑娘张敏', 'http://pic0.iqiyipic.com/image/20190312/76/8b/v_50129617_m_601_m5_180_236.jpg', '<strong class=\"num\">8</strong>.3', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132267', '英雄好汉', 'http://www.iqiyi.com/v_19rreflgwc.html', '周润发重出江湖', 'http://pic6.iqiyipic.com/image/20180919/5d/0f/v_114020919_m_601_m2_180_236.jpg', '<strong class=\"num\">8</strong>.5', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132268', '富贵列车', 'http://www.iqiyi.com/v_19rrjauvt4.html', '香港群星齐抗山贼', 'http://pic8.iqiyipic.com/image/20180918/c9/35/v_50089281_m_601_m6_180_236.jpg', '<strong class=\"num\">8</strong>.5', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132269', '天气预爆', 'http://www.iqiyi.com/v_19rr50wr5c.html', '肖央小沈阳大乱斗', 'http://pic4.iqiyipic.com/image/20190123/5f/5b/v_119121314_m_601_m11_180_236.jpg', '<strong class=\"num\">7</strong>.8', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132270', '奇迹男孩', 'http://www.iqiyi.com/v_19rr8cybts.html', '甜而不腻的鸡汤', 'http://pic1.iqiyipic.com/image/20180302/e2/e2/v_112982441_m_601_m7_180_236.jpg', '<strong class=\"num\">9</strong>.0', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132271', '末代皇帝（上）', 'http://www.iqiyi.com/v_19rr7mmpfg.html', '奥斯卡金像奖最佳影片', 'http://pic6.iqiyipic.com/image/20180220/e3/91/v_112891805_m_601_m2_180_236.jpg', '<strong class=\"num\">8</strong>.5', '2', '0', '2019-05-07 00:38:01', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132272', 'x战警2', 'http://www.iqiyi.com/v_19rrk1ioiw.html', '金刚狼身世之谜揭开', 'http://pic3.iqiyipic.com/image/20180211/15/e6/v_50138937_m_601_m6_180_236.jpg', '<strong class=\"num\">8</strong>.7', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132273', '胜者为王', 'http://www.iqiyi.com/v_19rrj5uoio.html', '兄弟情义大过一切', 'http://pic1.iqiyipic.com/image/20180930/07/b3/v_50005707_m_601_m11_180_236.jpg', '<strong class=\"num\">8</strong>.2', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132274', '整蛊专家', 'http://www.iqiyi.com/v_19rrj5a7v4.html', '星爷刘天王联手整蛊', 'http://pic0.iqiyipic.com/image/20180211/16/09/v_50017095_m_601_m8_180_236.jpg', '<strong class=\"num\">8</strong>.9', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132275', '狄仁杰之四大天王', 'http://www.iqiyi.com/v_19rr7pi4k4.html', '赵又廷破幻术奇案', 'http://pic6.iqiyipic.com/image/20180830/3c/d4/v_112882267_m_601_m15_180_236.jpg', '<strong class=\"num\">8</strong>.0', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132276', '肖申克的救赎', 'http://www.iqiyi.com/v_19rra0h3wg.html', '电影史排名第一的电影', 'http://pic4.iqiyipic.com/image/20180219/4f/9f/v_111393030_m_601_m3_180_236.jpg', '<strong class=\"num\">9</strong>.2', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132277', '轰天抢救', 'http://www.iqiyi.com/v_19rr7q8rmg.html', '托尼贾战人贩集团', 'http://pic6.iqiyipic.com/image/20180220/ef/50/v_112872376_m_601_m3_180_236.jpg', '<strong class=\"num\">8</strong>.3', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132278', '最佳福星', 'http://www.iqiyi.com/v_19rrjautrw.html', '五福星齐力抗黑帮', 'http://pic5.iqiyipic.com/image/20190502/4b/b2/v_50089428_m_601_m5_180_236.jpg', '<strong class=\"num\">8</strong>.1', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132279', '唐山大地震', 'http://www.iqiyi.com/v_19rrje0f9c.html', '灾难迁出跨越世纪亲情', 'http://pic3.iqiyipic.com/image/20190419/93/ca/v_50036387_m_601_m10_180_236.jpg', '<strong class=\"num\">8</strong>.9', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132280', '灵魂的救赎', 'http://www.iqiyi.com/v_19rr137new.html', '《亲爱的》姊妹片', 'http://pic0.iqiyipic.com/image/20190304/0f/f1/v_116938421_m_601_m13_180_236.jpg', '<strong class=\"num\">8</strong>.0', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132281', '风暴', 'http://www.iqiyi.com/v_19rrh5a92s.html', '港影史最大场面警匪戏', 'http://pic0.iqiyipic.com/image/20190420/33/2f/v_105141733_m_601_m9_180_236.jpg', '<strong class=\"num\">8</strong>.5', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132282', '大话西游之大圣娶亲', 'http://www.iqiyi.com/v_19rrkqj66k.html', '我的意中人是盖世英雄', 'http://pic1.iqiyipic.com/image/20180217/d0/8b/v_109655862_m_601_m5_180_236.jpg', '<strong class=\"num\">9</strong>.2', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132283', '祖宗十九代', 'http://www.iqiyi.com/v_19rreglczg.html', '小岳岳爆笑穿越', 'http://pic4.iqiyipic.com/image/20180325/eb/14/v_114005981_m_601_m5_180_236.jpg', '<strong class=\"num\">7</strong>.6', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132284', '国产凌凌漆', 'http://www.iqiyi.com/v_19rrj6ukg4.html', '星爷演绎国产特工007', 'http://pic6.iqiyipic.com/image/20180704/fa/9f/v_50001290_m_601_m6_180_236.jpg', '<strong class=\"num\">8</strong>.9', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132285', '五亿探长雷洛传2：父子情仇', 'http://www.iqiyi.com/v_19rrj5y4ic.html', '私生子找父寻仇', 'http://pic4.iqiyipic.com/image/20181120/6f/12/v_50005982_m_601_m15_180_236.jpg', '<strong class=\"num\">8</strong>.4', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132286', '侏罗纪世界2', 'http://www.iqiyi.com/v_19rqzdsi8w.html', '暴虐恐龙追杀幼女', 'http://pic2.iqiyipic.com/image/20180929/a4/7b/v_118681994_m_601_m3_180_236.jpg', '<strong class=\"num\">8</strong>.2', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132287', 'X战警：天启（普通话）', 'http://www.iqiyi.com/v_19rrmddz38.html', 'X教授秃头之谜大揭秘', 'http://pic2.iqiyipic.com/image/20180630/4e/83/v_110762040_m_601_m4_180_236.jpg', '<strong class=\"num\">8</strong>.5', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132288', '天地玄门', 'http://www.iqiyi.com/v_19rrho5yi0.html', '林正英穿梭时空五百年', 'http://pic1.iqiyipic.com/image/20180213/19/1e/v_62646217_m_601_m5_180_236.jpg', '<strong class=\"num\">8</strong>.5', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132289', '人吓鬼', 'http://www.iqiyi.com/v_19rr7qao3o.html', '80年代香港戏班的故事', 'http://pic4.iqiyipic.com/image/20181106/ff/45/v_112853186_m_601_m4_180_236.jpg', '<strong class=\"num\">8</strong>.3', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132290', '情圣', 'http://www.iqiyi.com/v_19rr9tql50.html', '小沈阳领衔“贱男团”', 'http://pic5.iqiyipic.com/image/20180219/50/37/v_111512472_m_601_m5_180_236.jpg', '<strong class=\"num\">8</strong>.6', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132291', '千王之王2000', 'http://www.iqiyi.com/v_19rrm5jwqo.html', '星爷演绎千王重出江湖', 'http://pic0.iqiyipic.com/image/20180721/89/0c/v_110913033_m_601_m3_180_236.jpg', '<strong class=\"num\">8</strong>.7', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132292', '金刚狼', 'http://www.iqiyi.com/v_19rrhtzuu0.html', '杰克曼携钢爪兽性勃发', 'http://pic9.iqiyipic.com/image/20180216/bf/77/v_105871756_m_601_m6_180_236.jpg', '<strong class=\"num\">8</strong>.8', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132293', '降魔传', 'http://www.iqiyi.com/v_19rr8fp85k.html', '张雨绮狂虐郑恺', 'http://pic2.iqiyipic.com/image/20181207/53/26/v_112944082_m_601_m10_180_236.jpg', '<strong class=\"num\">7</strong>.7', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132294', '齐天大圣之五指山', 'http://www.iqiyi.com/v_19rsjnav0s.html', '大圣有悔悟得人世情感', 'http://pic2.iqiyipic.com/image/20190417/d4/fe/v_127990937_m_601_m1_180_236.jpg', '<strong class=\"num\">5</strong>.8', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132295', '鲨滩', 'http://www.iqiyi.com/v_19rr9e8xpk.html', '比基尼美女手撕恶鲨！', 'http://pic7.iqiyipic.com/image/20190425/af/7b/v_111245484_m_601_m4_180_236.jpg', '<strong class=\"num\">7</strong>.7', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132296', '欲望之城', 'http://www.iqiyi.com/v_19rr7qnuo4.html', '富家女掌家族黄色生意', 'http://pic7.iqiyipic.com/image/20180305/95/4e/v_112859378_m_601_m2_180_236.jpg', '<strong class=\"num\">7</strong>.4', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132297', '神龙诀之千年灵狐', 'http://www.iqiyi.com/v_19rr3nc4q4.html', '妖狐寻龙救苍生', 'http://pic0.iqiyipic.com/image/20190128/d0/2b/v_121317444_m_601_m5_180_236.jpg', '<strong class=\"num\">6</strong>.8', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132298', 'X战警', 'http://www.iqiyi.com/v_19rrk1pzik.html', '休杰克曼经典科幻巨作', 'http://pic0.iqiyipic.com/image/20190401/df/9c/v_50140728_m_601_m8_180_236.jpg', '<strong class=\"num\">8</strong>.6', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132299', '百变星君', 'http://www.iqiyi.com/v_19rrk62ru4.html', '周星驰化身百变金刚', 'http://pic4.iqiyipic.com/image/20190422/cc/a9/v_50236128_m_601_m6_180_236.jpg', '<strong class=\"num\">9</strong>.0', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132300', '传奇的诞生', 'http://www.iqiyi.com/v_19rr7p18hw.html', '球王贝利的少年时代', 'http://pic5.iqiyipic.com/image/20181126/67/8a/v_112874346_m_601_m11_180_236.jpg', '<strong class=\"num\">8</strong>.9', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132301', '不忠', 'http://www.iqiyi.com/v_19rrn70w8c.html', '不谙平淡女人最好得手', 'http://pic2.iqiyipic.com/image/20190505/6f/c3/v_108792444_m_601_m5_180_236.jpg', '<strong class=\"num\">7</strong>.8', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132302', '来电狂响', 'http://www.iqiyi.com/v_19rr3xf05w.html', '佟大为爱情受考验', 'http://pic9.iqiyipic.com/image/20190202/99/77/v_121150918_m_601_m10_180_236.jpg', '<strong class=\"num\">8</strong>.7', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132303', '至尊无上之永霸天下', 'http://www.iqiyi.com/v_19rrj5uot4.html', '赌坛师兄弟的恩怨', 'http://pic9.iqiyipic.com/image/20180918/61/0c/v_50005701_m_601_m5_180_236.jpg', '<strong class=\"num\">8</strong>.2', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132304', '爱情公寓', 'http://www.iqiyi.com/v_19rrdeqs18.html', '原班人马欢乐重聚', 'http://pic4.iqiyipic.com/image/20181011/01/41/v_116027349_m_601_m10_180_236.jpg', '<strong class=\"num\">7</strong>.9', '2', '0', '2019-05-06 22:08:17', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132305', '精武英雄', 'http://www.iqiyi.com/v_19rrho7c7w.html', '功夫片之集大成者', 'http://pic2.iqiyipic.com/image/20180213/4b/a3/v_62645532_m_601_m4_180_236.jpg', '<strong class=\"num\">8</strong>.9', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132306', '特殊身份', 'http://www.iqiyi.com/v_19rriful2y.html', '甄子丹街头搏杀飚车', 'http://pic4.iqiyipic.com/image/20190401/bb/02/v_50739926_m_601_m7_180_236.jpg', '<strong class=\"num\">8</strong>.6', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132307', '特殊保镖', 'http://www.iqiyi.com/v_19rqq75dec.html', '保镖暴打集团高层', 'http://pic9.iqiyipic.com/image/20190116/d0/5e/v_123509677_m_601_m8_180_236.jpg', '<strong class=\"num\">7</strong>.1', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132308', '黑狱断肠歌之砌生猪肉', 'http://www.iqiyi.com/v_19rrbolgeo.html', '梁朝伟入狱血与泪', 'http://pic2.iqiyipic.com/image/20180308/93/05/v_115049919_m_601_m2_180_236.jpg', '<strong class=\"num\">8</strong>.4', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132309', '荡寇风云', 'http://www.iqiyi.com/v_19rr7kt8f4.html', '赵文卓洪金宝抗倭', 'http://pic1.iqiyipic.com/image/20180426/f5/41/v_112781451_m_601_m3_180_236.jpg', '<strong class=\"num\">8</strong>.6', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132310', '实习生', 'http://www.iqiyi.com/v_19rrakosr8.html', '一生必看职场电影', 'http://pic7.iqiyipic.com/image/20180219/76/94/v_111720686_m_601_m3_180_236.jpg', '<strong class=\"num\">9</strong>.0', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132311', '偷窥', 'http://www.iqiyi.com/v_19rrl56nno.html', '偷窥无处不在', 'http://pic8.iqiyipic.com/image/20180613/d4/4f/v_109951622_m_601_m3_180_236.jpg', '<strong class=\"num\">7</strong>.1', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132312', '白狐', 'http://www.iqiyi.com/v_19rrifvgim.html', '阿娇演绎人狐绝恋', 'http://pic8.iqiyipic.com/image/20190401/aa/65/v_50764722_m_601_m6_180_236.jpg', '<strong class=\"num\">8</strong>.2', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132313', '功夫', 'http://www.iqiyi.com/v_19rrk40ajc.html', '一支穿云箭千军来相见', 'http://pic6.iqiyipic.com/image/20190401/30/51/v_50116213_m_601_m6_180_236.jpg', '<strong class=\"num\">9</strong>.1', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132314', '蜘蛛侠2', 'http://www.iqiyi.com/v_19rrk3xd8o.html', '蜘蛛侠直面双重人格', 'http://pic6.iqiyipic.com/image/20180211/4f/f9/v_50114833_m_601_m7_180_236.jpg', '<strong class=\"num\">8</strong>.8', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132315', '猛鬼食人胎', 'http://www.iqiyi.com/v_19rr7rb7uk.html', '猛鬼食人胎', 'http://pic5.iqiyipic.com/image/20180528/64/a7/v_112849094_m_601_m1_180_236.jpg', '<strong class=\"num\">7</strong>.7', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132316', '阿凡达', 'http://www.iqiyi.com/v_19rrn8vkts.html', '外星人抵抗人类拆迁队', 'http://pic4.iqiyipic.com/image/20180216/18/b7/v_108758387_m_601_m7_180_236.jpg', '<strong class=\"num\">8</strong>.8', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132317', '英雄无泪', 'http://www.iqiyi.com/v_19rr4zly9g.html', '林正英、钱月笙主演', 'http://pic6.iqiyipic.com/image/20181023/48/e4/v_119330181_m_601_m2_180_236.jpg', '<strong class=\"num\">7</strong>.7', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132318', '武状元苏乞儿', 'http://www.iqiyi.com/v_19rrjaux6c.html', '周星驰演绎经典苏乞儿', 'http://pic4.iqiyipic.com/image/20181217/5a/4d/v_50089302_m_601_m7_180_236.jpg', '<strong class=\"num\">8</strong>.9', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132319', '金刚：骷髅岛', 'http://www.iqiyi.com/v_19rr7q6e38.html', '史上最大金刚现身', 'http://pic2.iqiyipic.com/image/20190101/dd/50/v_112870932_m_601_m2_180_236.jpg', '<strong class=\"num\">8</strong>.2', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132320', '城市猎人', 'http://www.iqiyi.com/v_19rrjcbzys.html', '成龙王祖贤对决匪帮', 'http://pic9.iqiyipic.com/image/20180930/d1/92/v_50072446_m_601_m11_180_236.jpg', '<strong class=\"num\">9</strong>.0', '1', '0', '2019-05-06 23:04:52', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132321', '速度与激战', 'http://www.iqiyi.com/v_19rqtlivcs.html', '神奇代码操控飞机', 'http://pic8.iqiyipic.com/image/20190417/47/a5/v_122820611_m_601_m2_180_236.jpg', '<strong class=\"num\">6</strong>.6', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132322', '恶战', 'http://www.iqiyi.com/v_19rrnf368g.html', '基情好兄弟抗日誓复仇', 'http://pic7.iqiyipic.com/image/20180216/32/2d/v_108573761_m_601_m2_180_236.jpg', '<strong class=\"num\">8</strong>.7', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132323', '胖子行动队', 'http://www.iqiyi.com/v_19rr8u75c0.html', '文章包贝尔重磅出击', 'http://pic2.iqiyipic.com/image/20181206/03/6d/v_113554451_m_601_m7_180_236.jpg', '<strong class=\"num\">8</strong>.0', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132324', '泰坦尼克号', 'http://www.iqiyi.com/v_19rrny4w8w.html', '旷世巨作不朽爱恋', 'http://pic4.iqiyipic.com/image/20190309/30/2e/v_108833873_m_601_m6_180_236.jpg', '<strong class=\"num\">9</strong>.3', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132325', '黑狱断肠歌2之无期徒刑', 'http://www.iqiyi.com/v_19rrbwqe48.html', '律师吴镇宇惨入狱', 'http://pic7.iqiyipic.com/image/20180712/bb/ab/v_115061808_m_601_m2_180_236.jpg', '<strong class=\"num\">8</strong>.1', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132326', '黑金', 'http://www.iqiyi.com/v_19rrk68wt8.html', '梁家辉之黑金大佬', 'http://pic5.iqiyipic.com/image/20180212/c6/4d/v_50237852_m_601_m5_180_236.jpg', '<strong class=\"num\">8</strong>.7', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132327', '逃学威龙2', 'http://www.iqiyi.com/v_19rrlul9b8.html', '周星驰重返校园战黑帮', 'http://pic1.iqiyipic.com/image/20190401/01/a4/v_110379900_m_601_m6_180_236.jpg', '<strong class=\"num\">9</strong>.1', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132328', '美国狙击手', 'http://www.iqiyi.com/v_19rr7q0h4s.html', '牛仔狙击手沙尘暴枪战', 'http://pic5.iqiyipic.com/image/20180220/5b/e6/v_112868480_m_601_m3_180_236.jpg', '<strong class=\"num\">8</strong>.5', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132329', '最佳拍档', 'http://www.iqiyi.com/v_19rrmy61d8.html', '萌贼笨差传奇探案', 'http://pic3.iqiyipic.com/image/20180214/2f/a6/v_62817600_m_601_m4_180_236.jpg', '<strong class=\"num\">8</strong>.5', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132330', '最后的城堡', 'http://www.iqiyi.com/v_19rrmydacs.html', '被贬将军狱中革命', 'http://pic2.iqiyipic.com/image/20190401/52/d8/v_62819504_m_601_m7_180_236.jpg', '<strong class=\"num\">8</strong>.7', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132331', '神奇四侠2', 'http://www.iqiyi.com/v_19rrk0x8xg.html', '一场仓促而惊艳的婚宴', 'http://pic2.iqiyipic.com/image/20190401/0d/58/v_50149590_m_601_m6_180_236.jpg', '<strong class=\"num\">8</strong>.4', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132332', '恶灵骑士', 'http://www.iqiyi.com/v_19rrk3y5r8.html', '尼古拉斯凯奇灵魂战车', 'http://pic4.iqiyipic.com/image/20190401/ab/75/v_50116514_m_601_m6_180_236.jpg', '<strong class=\"num\">8</strong>.8', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132333', '聊斋新编之画皮新娘', 'http://www.iqiyi.com/v_19rra0wmo0.html', '画皮妖现世 媚惑众生', 'http://pic1.iqiyipic.com/image/20180219/cd/62/v_111379426_m_601_m3_180_236.jpg', '<strong class=\"num\">6</strong>.8', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132334', '杀手之王', 'http://www.iqiyi.com/v_19rrifm5kn.html', '杀手之王抢夺复仇基金', 'http://pic0.iqiyipic.com/image/20190401/75/ac/v_50347099_m_601_m4_180_236.jpg', '<strong class=\"num\">8</strong>.8', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132335', '决战刹马镇', 'http://www.iqiyi.com/v_19rrjes2lk.html', '林志玲变泼辣老板娘', 'http://pic2.iqiyipic.com/image/20180211/b0/5c/v_50027993_m_601_m7_180_236.jpg', '<strong class=\"num\">8</strong>.6', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132336', '毒战', 'http://www.iqiyi.com/v_19rrg43ha8.html', '老杜首导内地警匪题材', 'http://pic9.iqiyipic.com/image/20180212/30/91/v_50509539_m_601_m8_180_236.jpg', '<strong class=\"num\">8</strong>.6', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132337', '悲伤逆流成河', 'http://www.iqiyi.com/v_19rrcswefs.html', '郭敬明揭校园暴力', 'http://pic0.iqiyipic.com/image/20181115/4c/59/v_115722595_m_601_m12_180_236.jpg', '<strong class=\"num\">8</strong>.7', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132338', '逃学威龙3', 'http://www.iqiyi.com/v_19rrmy5kyg.html', '周星驰系列', 'http://pic9.iqiyipic.com/image/20181112/08/2f/v_62815765_m_601_m6_180_236.jpg', '<strong class=\"num\">8</strong>.9', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132339', '魔女狂花', 'http://www.iqiyi.com/v_19rsfmantc.html', '魔女勇闯虎穴为妹复仇', 'http://pic7.iqiyipic.com/image/20190424/02/e0/v_128243446_m_601_m1_180_236.jpg', '<strong class=\"num\">6</strong>.8', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132340', '罪美人', 'http://www.iqiyi.com/v_19rshl6jyk.html', '朴树首次献声网大', 'http://pic9.iqiyipic.com/image/20190408/84/84/v_127126357_m_601_m1_180_236.jpg', '<strong class=\"num\">6</strong>.8', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132341', '血战湘江', 'http://www.iqiyi.com/v_19rr7plefg.html', '张一山热血铸军魂', 'http://pic9.iqiyipic.com/image/20180220/a2/b3/v_112883317_m_601_m2_180_236.jpg', '<strong class=\"num\">8</strong>.7', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132342', '大追捕', 'http://www.iqiyi.com/v_19rrjzm5k4.html', '心计干探VS高智罪犯', 'http://pic5.iqiyipic.com/image/20180212/c0/d1/v_50189218_m_601_m6_180_236.jpg', '<strong class=\"num\">8</strong>.8', '4', '0', '2019-05-06 21:09:38', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132343', '劫数难逃', 'http://www.iqiyi.com/v_19rqtyraz8.html', '劫数难逃', 'http://pic8.iqiyipic.com/image/20190426/22/21/v_125687381_m_601_m4_180_236.jpg', '<strong class=\"num\">6</strong>.5', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132344', '黄飞鸿之狮魂觉醒', 'http://www.iqiyi.com/v_19rqxb9kq4.html', '少年黄飞鸿狮王争霸', 'http://pic2.iqiyipic.com/image/20190301/e7/b6/v_125055955_m_601_m8_180_236.jpg', '<strong class=\"num\">7</strong>.2', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132345', '金刚狼2', 'http://www.iqiyi.com/v_19rrh0wjek.html', '狼爷血战东瀛手撕鬼子', 'http://pic0.iqiyipic.com/image/20150317/91/a5/d1/v_104447041_m_601_m3_180_236.jpg', '<strong class=\"num\">8</strong>.6', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132346', '龙在边缘', 'http://www.iqiyi.com/v_19rr7qs4uw.html', '古天乐卧底黑社会', 'http://pic6.iqiyipic.com/image/20180220/8e/58/v_112860045_m_601_m3_180_236.jpg', '<strong class=\"num\">8</strong>.7', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132347', '黄金大劫案', 'http://www.iqiyi.com/v_19rrk7wx7s.html', '宁浩三年磨一剑力作', 'http://pic2.iqiyipic.com/image/20180212/e6/ce/v_50204569_m_601_m6_180_236.jpg', '<strong class=\"num\">8</strong>.4', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132348', '弱点', 'http://www.iqiyi.com/v_19rra7zdzo.html', '柔情主妇培育运动明星', 'http://pic2.iqiyipic.com/image/20180219/fc/dd/v_111436326_m_601_m3_180_236.jpg', '<strong class=\"num\">9</strong>.2', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132349', '奇谋妙计五福星', 'http://www.iqiyi.com/v_19rrmy88pw.html', '群星云集 鬼马搞怪', 'http://pic2.iqiyipic.com/image/20180424/de/e9/v_62817186_m_601_m5_180_236.jpg', '<strong class=\"num\">8</strong>.7', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);
INSERT INTO `movies` VALUES ('132350', '唐砖(下)灵域双生', 'http://www.iqiyi.com/v_19rqxb34a0.html', '皇子怀孕遭追杀', 'http://pic6.iqiyipic.com/image/20190228/ac/28/v_125054484_m_601_m3_180_236.jpg', '<strong class=\"num\">7</strong>.0', '0', '0', '2019-05-06 20:29:30', '2019-05-06 20:29:30', '电影', null, null);

-- ----------------------------
-- Table structure for preview
-- ----------------------------
DROP TABLE IF EXISTS `preview`;
CREATE TABLE `preview` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `playurl` varchar(150) DEFAULT NULL,
  `imgurl` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of preview
-- ----------------------------
INSERT INTO `preview` VALUES ('1', '大话西游之大圣娶亲', '我的盖世英雄', 'http://www.iqiyi.com/v_19rrkqj66k.html', '/www/images/big0.jpg');
INSERT INTO `preview` VALUES ('2', '我不是药神', '30亿票房口碑爆款', 'http://www.iqiyi.com/v_19rreozmq8.html', '/www/images/big1.jpg');
INSERT INTO `preview` VALUES ('3', '疯狂动物城', '“甄嬛”献声兔朱迪', 'http://www.iqiyi.com/v_19rrlpltbg.html', '/www/images/big2.jpg');
INSERT INTO `preview` VALUES ('4', '前任3再见前任', '韩庚郑恺战前任', 'http://www.iqiyi.com/v_19rr7pgf14.html', '/www/images/big3.jpg');
INSERT INTO `preview` VALUES ('5', '碟中谍神秘国度', '靓汤高空徒手扒飞机', 'http://www.iqiyi.com/v_19rrkq3b00.html', '/www/images/big4.jpg');
INSERT INTO `preview` VALUES ('6', '爱情公寓', '原班人马欢乐重聚', 'http://www.iqiyi.com/v_19rrdeqs18.html', '/www/images/big5.jpg');
INSERT INTO `preview` VALUES ('7', '后来的我们', '井柏然十年苦恋', 'http://www.iqiyi.com/v_19rrf0jhms.html', '/www/images/big6.jpg');
INSERT INTO `preview` VALUES ('8', '西虹市首富', '沈腾变身暴富锦鲤', 'http://www.iqiyi.com/v_19rrf2nw1g.html', '/www/images/big7.jpg');

-- ----------------------------
-- Table structure for tvs
-- ----------------------------
DROP TABLE IF EXISTS `tvs`;
CREATE TABLE `tvs` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `info` varchar(500) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `addtime` datetime NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`addtime`)
) ENGINE=InnoDB AUTO_INCREMENT=2197 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of tvs
-- ----------------------------
INSERT INTO `tvs` VALUES ('2005', '天下无诈', '郭晓东打响反电诈战役', 'http://www.iqiyi.com/v_19rqwftya8.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2006', '橙红年代', '陈伟霆马思纯燃情励志', 'http://www.iqiyi.com/v_19rqzuurjg.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2007', '封神演义', '王丽坤罗晋启封新神话', 'http://www.iqiyi.com/v_19rsjpato8.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2008', '一场遇见爱情的旅行', '陈晓景甜遇爱之旅', 'http://www.iqiyi.com/v_19rsfsg0ao.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2009', '新白娘子传奇', '于朦胧鞠婧祎追爱千年', 'http://www.iqiyi.com/v_19rshyyb2g.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2010', '都挺好', '姚晨倪大红亲情回归', 'http://www.iqiyi.com/v_19rquh3mmg.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2011', '守望正义', '新时代高智商反腐', 'http://www.iqiyi.com/v_19rsjevy7s.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2012', '延禧攻略', '秦岚佘诗曼清宫风云', 'http://www.iqiyi.com/v_19rr2aesjs.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2013', '知否知否应是绿肥红瘦', '赵丽颖演绎明兰传奇', 'http://www.iqiyi.com/v_19rqpl2i8w.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2014', '新白娘子传奇赵雅芝版', '人与蛇精的旷世绝恋', 'http://www.iqiyi.com/v_19rrk852ac.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2015', '天乩之白蛇传说', '杨紫任嘉伦新神话之恋', 'http://www.iqiyi.com/v_19rr1s99s8.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2016', '老九门', '热血收官九门同心', 'http://www.iqiyi.com/v_19rrmbr34s.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2017', '反恐特战队之猎影', '特战英雄的忠诚与奉献', 'http://www.iqiyi.com/v_19rr7kei18.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2018', '反恐特战队之天狼', '杨旭文代斯热血反恐', 'http://www.iqiyi.com/v_19rsfysv6o.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2019', '夜空中最闪亮的星', '黄子韬吴倩进击娱乐圈', 'http://www.iqiyi.com/v_19rsiezzrg.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2020', '爱上你治愈我', '窦骁苗苗温情治愈', 'http://www.iqiyi.com/v_19rsff8x38.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2021', '香蜜沉沉烬如霜', '杨紫邓伦守望千年之恋', 'http://www.iqiyi.com/v_19rqycx0yg.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2022', '罪恶消亡史', '神探三人组联手破案', 'http://www.iqiyi.com/v_19rsjnx8co.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2023', '请回答1988', '双门洞胡同的温情故事', 'http://www.iqiyi.com/v_19rrlkh3ag.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2024', '太阳的后裔', '宋仲基宋慧乔定情作', 'http://www.iqiyi.com/v_19rrkxmiss.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2025', '你和我的倾城时光', '赵丽颖金瀚一爱倾城', 'http://www.iqiyi.com/v_19rr3yebes.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2026', '因为爱你', '你敢倾心裸爱吗', 'http://www.iqiyi.com/v_19rr3vi8ms.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2027', '爱情公寓4', '大牌客串爆笑升级', 'http://www.iqiyi.com/v_19rrgzy5ls.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2028', '正阳门下小女人', '蒋雯丽演绎励志传奇', 'http://www.iqiyi.com/v_19rr5hksuw.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2029', '芝麻胡同', '何冰王鸥上演芝麻人生', 'http://www.iqiyi.com/v_19rqxqzd50.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2030', '卧底归来', '缉毒警察智斗毒枭', 'http://www.iqiyi.com/v_19rrax0owk.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2031', '灵魂摆渡2', '原班人马颤栗回归', 'http://www.iqiyi.com/v_19rrksx6gs.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2032', '为了你我愿意热爱整个世界', '罗晋郑爽相恋二十年', 'http://www.iqiyi.com/v_19rr1bx534.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2033', '天泪传奇之凤凰无双', '王丽坤深宫权谋', 'http://www.iqiyi.com/v_19rr8s9o0k.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2034', '凤囚凰', '关晓彤宋威龙传奇虐恋', 'http://www.iqiyi.com/v_19rrevkcf0.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2035', '老男孩', '刘烨林依晨绝处逢爱', 'http://www.iqiyi.com/v_19rrbvo42o.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2036', '灵魂摆渡3', '铁三角身份揭秘', 'http://www.iqiyi.com/v_19rr9evutk.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2037', '幸福就好', '首部一线记者的青春剧', 'http://www.iqiyi.com/v_19rqzps8c0.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2038', '来自星星的你', '金秀贤全智贤真挚演绎', 'http://www.iqiyi.com/v_19rrhd5t9s.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2039', '神风刀', '秦俊杰关晓彤侠骨柔情', 'http://www.iqiyi.com/v_19rqslap74.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2040', '利刃出击', '杨烁牟星展武警雄风', 'http://www.iqiyi.com/v_19rrbo6cqg.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2041', '狭路', '跌宕起伏的战地爱情', 'http://www.iqiyi.com/v_19rrldw9sg.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2042', '唐砖', '王天辰张佳宁唐穿之旅', 'http://www.iqiyi.com/v_19rr5ym6ik.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2043', '百里夜刀', '峥嵘岁月，热血厮杀', 'http://www.iqiyi.com/v_19rrc2p0j4.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2044', '老中医', '陈宝国演绎传奇名医', 'http://www.iqiyi.com/v_19rqtxjrik.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2045', '神医安道全', '余少群演绎开挂的人生', 'http://www.iqiyi.com/v_19rqtlg5zo.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2046', '钟馗捉妖记', '杨旭文杨蓉热血捉妖', 'http://www.iqiyi.com/v_19rr0lwsfs.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2047', '原生之罪', '翟天临尹正以案诛心', 'http://www.iqiyi.com/v_19rqtfjmh0.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2048', '寻找前世之旅', '前世今生的奇幻史诗', 'http://www.iqiyi.com/v_19rr9uig7s.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2049', '归去来', '唐嫣罗晋诠释爱与成长', 'http://www.iqiyi.com/v_19rrdkbu90.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2050', '绝世千金第二季', '宰相千金花式选夫', 'http://www.iqiyi.com/v_19rqr58qck.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2051', '花间提壶方大厨第1季', '萝莉厨娘驯痞夫', 'http://www.iqiyi.com/v_19rrbcn23w.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2052', '那座城这家人', '灾后三代人的悲欢离合', 'http://www.iqiyi.com/v_19rqrjxf7c.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2053', '独家记忆', '告别青春的治愈系爱情', 'http://www.iqiyi.com/v_19rqpborp4.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2054', '你好，旧时光', '重返青春好时光', 'http://www.iqiyi.com/v_19rrdu8le0.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2055', '大江大河', '王凯杨烁演绎时代青春', 'http://www.iqiyi.com/v_19rqs0we9s.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2056', '生逢灿烂的日子', '张嘉译姜武致敬70后', 'http://www.iqiyi.com/v_19rrefmn4w.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2057', '好久不见', '杨子姗郑恺入商战谜团', 'http://www.iqiyi.com/v_19rrbj6nhw.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2058', '哦我的鬼神大人', '女鬼附身倒追厨师长', 'http://www.iqiyi.com/v_19rrkh04ok.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2059', '凉生我们可不可以不忧伤', '十年凉生 此情天佑', 'http://www.iqiyi.com/v_19rqzvbyms.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2060', '花间提壶方大厨第2季', '萝莉厨娘驯痞夫', 'http://www.iqiyi.com/v_19rr7ewe78.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2061', '如果爱，重来', '张书豪穿越时空再追爱', 'http://www.iqiyi.com/v_19rsg7g0lo.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2062', '封神演义DVD版', '王丽坤罗晋启封新神话', 'http://www.iqiyi.com/v_19rsjpz1p4.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2063', '猎毒人', '于和伟燃爆缉毒大戏', 'http://www.iqiyi.com/v_19rr1sstso.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2064', '天衣无缝', '秦俊杰徐璐猎谍之战', 'http://www.iqiyi.com/v_19rqql3swk.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2065', '最好的我们', '你想要的青春都在这里', 'http://www.iqiyi.com/v_19rrkyywoo.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2066', '远大前程', '陈思诚佟丽娅闯魔都', 'http://www.iqiyi.com/v_19rrcfkp0w.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2067', '琅琊榜之风起长林', '琅琊风云再起', 'http://www.iqiyi.com/v_19rrf3e07c.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2068', '灵魂摆渡', '中国恐怖故事', 'http://www.iqiyi.com/v_19rrgxmoiw.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2069', '盗墓笔记', '地下惊奇世界探秘之旅', 'http://www.iqiyi.com/v_19rrohr1jc.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2070', '逆流而上的你', '马丽潘粤明幸福执手', 'http://www.iqiyi.com/v_19rqxv1gek.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2071', '小妖的金色城堡', '叛逆千金收服暖萌奶狗', 'http://www.iqiyi.com/v_19rr2mknok.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2072', '皇甫神医', '陈浩民王鸥因医结缘', 'http://www.iqiyi.com/v_19rqsc6w68.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2073', '走火', '于毅领衔铁警打击罪案', 'http://www.iqiyi.com/v_19rr0cvkk4.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2074', '爱情公寓3', '原班人马爆笑回归', 'http://www.iqiyi.com/v_19rrk6av6c.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2075', '玄门大师', '玄门少年团拯救人间', 'http://www.iqiyi.com/v_19rrd41zjs.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2076', '我要当空姐', '青春在追逐梦想中闪耀', 'http://www.iqiyi.com/v_19rqtl0tmc.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2077', '调香师第一季', '小爱陈烨林兄弟情深', 'http://www.iqiyi.com/v_19rr1fup90.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2078', '失宠王妃之结缘', '爱与救赎的故事', 'http://www.iqiyi.com/v_19rrfjsr6o.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2079', '绝世千金第一季', '少女误入游戏寻真爱', 'http://www.iqiyi.com/v_19rqteu7pk.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2080', '真爱的谎言之破冰者', '罗晋潘之琳守卫真爱', 'http://www.iqiyi.com/v_19rrcw8o30.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2081', '射雕英雄传', '武侠经典 重现江湖', 'http://www.iqiyi.com/v_19rr9x93h8.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2082', '知否知否应是绿肥红瘦DVD版', '赵丽颖演绎明兰传奇', 'http://www.iqiyi.com/v_19rqthgkw8.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2083', '齐丑无艳', '丑女王妃奇遇记', 'http://www.iqiyi.com/v_19rqrsobyk.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2084', '香蜜沉沉烬如霜DVD版', '杨紫邓伦守望千年之恋', 'http://www.iqiyi.com/v_19rqy3thz0.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2085', '悍城', '致光明·敬兄弟', 'http://www.iqiyi.com/v_19rr61pm9w.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2086', '和平饭店', '雷佳音陈数密室谍战', 'http://www.iqiyi.com/v_19rrfs3830.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2087', '因为遇见你', '孙怡邓伦的锦绣情缘', 'http://www.iqiyi.com/v_19rrab9ykk.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2088', '心理罪', '犯罪猎奇挑战烧脑极限', 'http://www.iqiyi.com/v_19rrnsxt9k.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2089', '美人为馅', '美艳警花身陷惊天阴谋', 'http://www.iqiyi.com/v_19rr98yi04.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2090', '等到烟暖雨收第一季', '元气少女蜜恋冷峻公子', 'http://www.iqiyi.com/v_19rqzkkspw.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2091', '金婚', '编年体讲述婚姻故事', 'http://www.iqiyi.com/v_19rrj52md8.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2092', '河神', '津门天团水下探奇案', 'http://www.iqiyi.com/v_19rr7hix8s.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2093', '同学两亿岁', '外星女将军爆笑追校草', 'http://www.iqiyi.com/v_19rrd7kiog.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2094', '泡沫之夏', '张雪迎秦俊杰爱情博弈', 'http://www.iqiyi.com/v_19rrcpgelo.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2095', '时光教会我爱你第一季', '宋伊人严禹豪契约蜜恋', 'http://www.iqiyi.com/v_19rqrsgoy0.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2096', '亲爱的她们', '宋丹丹张若昀暖心治愈', 'http://www.iqiyi.com/v_19rredins4.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2097', '医妃难囚', '呆萌女医卷入宫廷纷争', 'http://www.iqiyi.com/v_19rr6ewmhk.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2098', '家有儿女初长成VIP独享版', '升级版家有儿女欢乐多', 'http://www.iqiyi.com/v_19rr0n2kjo.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2099', '时光教会我爱你第二季', '戏精本精杠上钢铁直男', 'http://www.iqiyi.com/v_19rqrfjhdk.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2100', '国宝奇旅', '刘烨袁姗姗的护宝奇缘', 'http://www.iqiyi.com/v_19rqwxqrhw.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2101', '兵王', '烈火英雄的传奇人生', 'http://www.iqiyi.com/v_19rr0mmn8c.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2102', '通天狄仁杰', '任嘉伦断高能奇案', 'http://www.iqiyi.com/v_19rr8be3k8.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2103', '血染大青山', '再现抗大青年热血悲壮', 'http://www.iqiyi.com/v_19rr8bz6og.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2104', '我和两个他', '鬼马少女智斗数学天才', 'http://www.iqiyi.com/v_19rr1lm35o.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2105', '我是顾家男', '剩男剩女寻真爱', 'http://www.iqiyi.com/v_19rqxoisc8.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2106', '特化师', '张丹峰谭松韵甜虐爱恋', 'http://www.iqiyi.com/v_19rrek48ks.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2107', '灰姑娘与四骑士', '现代版灰姑娘爱情故事', 'http://www.iqiyi.com/v_19rrm12tfc.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2108', '云巅之上第2季', '娱乐圈宫心计升级', 'http://www.iqiyi.com/v_19rrb5mpbs.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2109', '美人为馅2', '杨蓉白宇甜虐升级', 'http://www.iqiyi.com/v_19rr9bx0uo.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2110', '人鱼恋爱法则第二季', '人鱼cp终成眷属', 'http://www.iqiyi.com/v_19rsil0km8.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2111', '寻找前世之旅2', '马可付辛博为爱开撕', 'http://www.iqiyi.com/v_19rraq4ld0.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2112', '创业时代', '黄轩baby掀互联网商战', 'http://www.iqiyi.com/v_19rr5ez0zg.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2113', '因为遇见你DVD版', '孙怡邓伦的锦绣情缘', 'http://www.iqiyi.com/v_19rra9mw4c.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2114', '深情密码', '爱在生命的最后90天', 'http://www.iqiyi.com/v_19rrjemy64.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2115', '幸福一家人', '董洁翟天临变斗气冤家', 'http://www.iqiyi.com/v_19rr39s61c.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2116', '等到烟暖雨收第二季', '初一CP虐恋危机', 'http://www.iqiyi.com/v_19rr55uxq8.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2117', '九州海上牧云记', '黄轩领衔开启九州世界', 'http://www.iqiyi.com/v_19rreixzio.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2118', '火王之千里同风', '陈柏霖景甜浪漫虐恋', 'http://www.iqiyi.com/v_19rqtfml4k.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2119', '美人为馅3', '杨蓉白宇揭惊天迷案', 'http://www.iqiyi.com/v_19rra6k6dw.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2120', '半妖皇帝', '半妖皇帝寻龙脉破奇案', 'http://www.iqiyi.com/v_19rrfa1i0o.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2121', '铁面御史', '姚橹变身按察使查谜案', 'http://www.iqiyi.com/v_19rr166ke4.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2122', '大周小冰人第二季', '热血小冰人牵线破权谋', 'http://www.iqiyi.com/v_19rqtr7lto.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2123', '荒原 第三季（下）', '吴彦祖绝地反击救荒原', 'http://www.iqiyi.com/v_19rshr5zh8.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2124', '娘道', '岳丽娜谱写母爱传奇', 'http://www.iqiyi.com/v_19rqzc25ao.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2125', '北漂爱情故事', '江湖无情 都市有爱', 'http://www.iqiyi.com/v_19rqxofi5o.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2126', '大话西游之爱你一万年', '黄子韬致敬经典', 'http://www.iqiyi.com/v_19rr8lyjs4.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2127', '南方有乔木', '陈伟霆白百何相爱相杀', 'http://www.iqiyi.com/v_19rrcb5pmk.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2128', '以你为名的青春', '青春最好的名字叫我们', 'http://www.iqiyi.com/v_19rrbl4wbw.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2129', '守护神之保险调查', '揭保险行业惊天内幕', 'http://www.iqiyi.com/v_19rqsf3hx8.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2130', '秘果', '懵懂青春故事', 'http://www.iqiyi.com/v_19rrbbhprc.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2131', '甜蜜暴击', '鹿晗为梦想热血格斗', 'http://www.iqiyi.com/v_19rr1z24y0.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2132', '金牌投资人', '杨旭文张俪商场沉浮', 'http://www.iqiyi.com/v_19rrcethog.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2133', '如果，爱', '张柏芝吴建豪三角虐恋', 'http://www.iqiyi.com/v_19rr0of5ic.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2134', '飘香剑雨', '演绎古龙新经典', 'http://www.iqiyi.com/v_19rrfoi41c.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2135', '鬼吹灯之牧野诡事2', '王大陆金晨再探霸王冢', 'http://www.iqiyi.com/v_19rr8ketuo.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2136', '海派甜心', '罗志祥扮丑狂爱杨丞琳', 'http://www.iqiyi.com/v_19rrjehn7s.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2137', '云巅之上第1季', '揭秘娱乐圈生存真相', 'http://www.iqiyi.com/v_19rrae8gug.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2138', '不得不爱第1季', '高颜值总裁的爱情纠葛', 'http://www.iqiyi.com/v_19rr9qoy98.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2139', '小情人', '胡军金晨上演父女兵法', 'http://www.iqiyi.com/v_19rr7hggxw.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2140', '校花的贴身高手', '全能高手花式戏校花', 'http://www.iqiyi.com/v_19rrokbgc4.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2141', '大周小冰人第一季', '花样男媒婆斗恋女上司', 'http://www.iqiyi.com/v_19rqtth844.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2142', '蜀山战纪2踏火行歌', '吴奇隆携鲜颜逆天改命', 'http://www.iqiyi.com/v_19rrfjr3t4.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2143', '玉魂', '玉可碎，魂不丢！', 'http://www.iqiyi.com/v_19rr0co6q4.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2144', '鬼吹灯之牧野诡事', '热血冒险探秘巨制', 'http://www.iqiyi.com/v_19rr80lv9c.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2145', '等到烟暖雨收第三季', '初一CP久别重逢', 'http://www.iqiyi.com/v_19rr5iampc.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2146', '我可能不会爱你', '最佳备胎李大仁', 'http://www.iqiyi.com/v_19rquh1www.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2147', '隐世者们', '吴启华智破邪恶势力', 'http://www.iqiyi.com/v_19rr0adx04.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2148', '蜀山战纪剑侠传奇', '赵丽颖陈伟霆虐恋情深', 'http://www.iqiyi.com/v_19rrl4vvgw.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2149', '追捕者', '陈龙于和伟热血追捕', 'http://www.iqiyi.com/v_19rr2kbzd8.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2150', '调香师第二季', '历劫千年复活哥哥肉身', 'http://www.iqiyi.com/v_19rqz2kbj4.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2151', '十里桃花后传', '夜华白浅再续前缘', 'http://www.iqiyi.com/v_19rreuoito.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2152', '朕的刺客女友', '腹黑天子爱上女刺客', 'http://www.iqiyi.com/v_19rr26qr38.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2153', '抗倭侠侣第二季', '热血江湖续写爱情神话', 'http://www.iqiyi.com/v_19rqya7gd8.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2154', '北京爱情故事', '北漂白领的逗贫爱情', 'http://www.iqiyi.com/v_19rrk1ho7k.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2155', '法网追凶第一季', '正邪黑白生死的较量', 'http://www.iqiyi.com/v_19rrd8ndz4.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2156', '无证之罪', '首部社会派推理悬疑剧', 'http://www.iqiyi.com/v_19rr8w99fw.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2157', '一路繁花相送', '钟汉良江疏影初恋白首', 'http://www.iqiyi.com/v_19rrfaslow.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2158', '卧底2', '孤胆英雄智斗毒枭', 'http://www.iqiyi.com/v_19rrax1w9g.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2159', '热血狂篮', '篮球少年热血逐梦', 'http://www.iqiyi.com/v_19rrdismhg.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2160', '小棉袄', '单身酷爸斗萌娃', 'http://www.iqiyi.com/v_19rr25mfj8.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2161', '爱情进化论', '张若昀张天爱邂逅初恋', 'http://www.iqiyi.com/v_19rqyit6ck.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2162', '亲爱的活祖宗', '千年萌宠恋上女汉子', 'http://www.iqiyi.com/v_19rr0j6ly0.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2163', '小谢尔顿 第一季', '谢耳朵的童年大冒险', 'http://www.iqiyi.com/v_19rqspnno0.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2164', '不得不爱第2季', '潘玮柏徐璐相爱相杀', 'http://www.iqiyi.com/v_19rr9ulgv4.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2165', '龙凤店传奇第三季', '姐妹反目虐恋升级', 'http://www.iqiyi.com/v_19rrf7gvao.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2166', '能耐大了第二季', '德云社情景喜剧', 'http://www.iqiyi.com/v_19rqv5huv4.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2167', '面具', '祖峰侯勇演绎双面特工', 'http://www.iqiyi.com/v_19rr1wji0s.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2168', '人鱼恋爱法则第一季', '高冷学霸喜提鱼系女友', 'http://www.iqiyi.com/v_19rqv2lf0c.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2169', '镇灵攻略第二季', '喜剧版“死亡笔记”', 'http://www.iqiyi.com/v_19rqxmx9ow.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2170', '灭罪师', '异国追凶极限烧脑', 'http://www.iqiyi.com/v_19rrm75rks.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2171', '能耐大了', '德云社喜剧爆笑开演', 'http://www.iqiyi.com/v_19rqtxop2c.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2172', '废柴兄弟3', '搞笑逗比欢乐能量剧', 'http://www.iqiyi.com/v_19rrkhf148.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2173', '诡使神差', '拯救你是我的使命', 'http://www.iqiyi.com/v_19rquh3zy0.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2174', '荒原 第二季', '吴彦祖为未来而战', 'http://www.iqiyi.com/v_19rr65z49c.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2175', '废柴兄弟4', '剧界老干妈陪你吃午饭', 'http://www.iqiyi.com/v_19rrlw6qi4.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2176', '画江湖之不良人', '花样少年执剑快意江湖', 'http://www.iqiyi.com/v_19rr9igq6k.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2177', '荒原 第一季', '吴彦祖自我救赎之旅', 'http://www.iqiyi.com/v_19rr171ww8.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2178', '军人使命', '犯我中华者虽远必诛', 'http://www.iqiyi.com/v_19rrc7sj68.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2179', '抗倭侠侣第一季', '神雕之后联手除奸抗倭', 'http://www.iqiyi.com/v_19rr0drmz8.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2180', '翩翩冷少俏佳人第二季', '高冷阔少与俏佳人虐恋', 'http://www.iqiyi.com/v_19rrfih14o.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2181', '苏茉儿传奇', '侍女苏茉儿的传奇一生', 'http://www.iqiyi.com/v_19rr5n142o.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2182', '火王之破晓之战DVD版', '陈柏霖景甜热血归来', 'http://www.iqiyi.com/v_19rr3vsdmk.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2183', '法网追凶第三季', '正邪黑白生死的较量', 'http://www.iqiyi.com/v_19rr29h484.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2184', '卧底', '与狼共舞向死而生', 'http://www.iqiyi.com/v_19rrb5v4q0.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2185', '校花的贴身高手3', '世家暗战 地阶归来', 'http://www.iqiyi.com/v_19rrlzbq1o.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2186', '你迟到的许多年', '黄晓明殷桃回归初心', 'http://www.iqiyi.com/v_19rr5ndl6k.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2187', '法网追凶第二季', '正邪黑白生死较量', 'http://www.iqiyi.com/v_19rr126e7o.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2188', '荒原 第三季（上）', '吴彦祖重返荒原', 'http://www.iqiyi.com/v_19rr5eu37k.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2189', '为了你', '一见钟情只为你', 'http://www.iqiyi.com/v_19rre2xyeg.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2190', '鬼谷门', '力挽狂澜，破解谜题', 'http://www.iqiyi.com/v_19rr315tt4.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2191', '新刑警本色', '金色盾牌为国追回文物', 'http://www.iqiyi.com/v_19rr0a1bhk.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2192', '爱国者', '张鲁一佟丽娅热血抗日', 'http://www.iqiyi.com/v_19rr0i54pw.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2193', '远大前程DVD版', '陈思诚佟丽娅乱世逐梦', 'http://www.iqiyi.com/v_19rrc7k9mw.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2194', '都市妖奇谈', '东方奇幻异闻录', 'http://www.iqiyi.com/v_19rrl8e8vs.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2195', '蜀山战纪第5季', '大结局精彩抢先看', 'http://www.iqiyi.com/v_19rrl4ryxo.html', '2019-05-06 20:29:43', '电视剧');
INSERT INTO `tvs` VALUES ('2196', '种菜女神', '情歌才子恋上田园女神', 'http://www.iqiyi.com/v_19rr2r1akc.html', '2019-05-06 20:29:43', '电视剧');

-- ----------------------------
-- Table structure for userlog
-- ----------------------------
DROP TABLE IF EXISTS `userlog`;
CREATE TABLE `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of userlog
-- ----------------------------
INSERT INTO `userlog` VALUES ('164', '2019-05-06 20:57:48', '127.0.0.1', 'XXXX内网IP内网IP', '10');
INSERT INTO `userlog` VALUES ('165', '2019-05-06 21:24:17', '127.0.0.1', 'XXXX内网IP内网IP', '10');
INSERT INTO `userlog` VALUES ('166', '2019-05-06 22:09:37', '127.0.0.1', 'XXXX内网IP内网IP', '10');
INSERT INTO `userlog` VALUES ('167', '2019-05-06 22:11:14', '127.0.0.1', 'XXXX内网IP内网IP', '10');
INSERT INTO `userlog` VALUES ('168', '2019-05-07 00:19:29', '127.0.0.1', 'XXXX内网IP内网IP', '10');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `info` varchar(100) DEFAULT NULL,
  `face` varchar(100) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('10', '123', '1172e9cdade27fa1ea4e858b65607939', 'test@qq.com', '15624318659', '初来乍到，请多多关照哈！123', '/www/uploads/avatar/upload_7d22656dff2747a71994167da2418d8e.jpg', '2019-05-06 20:31:30');
