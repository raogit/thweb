/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : tianhong

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2016-10-26 14:45:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_category`
-- ----------------------------
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `name` varchar(1024) DEFAULT NULL,
  `en_name` varchar(1024) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `backup1` varchar(1024) DEFAULT NULL,
  `backup2` varchar(1024) DEFAULT NULL,
  `backup3` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='分类';

-- ----------------------------
-- Records of t_category
-- ----------------------------
INSERT INTO `t_category` VALUES ('1', '164', null, '测试', 'test', '2016-09-01 10:54:30', '1', '2016-10-13 15:06:51', '1', '0', null, null, null);
INSERT INTO `t_category` VALUES ('4', '164', null, '便当', 'Lunch', '2016-09-01 11:12:06', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('5', '164', null, '甜品', 'Dessert', '2016-09-01 11:12:35', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('6', '164', null, '特色小吃1', 'Snack', '2016-09-01 11:12:58', '1', '2016-09-10 21:05:48', '1', '0', null, null, null);
INSERT INTO `t_category` VALUES ('7', '165', null, '主题活动', 'Theme', '2016-09-01 11:13:25', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('8', '165', null, '促销活动', 'Promotion', '2016-09-01 11:13:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('9', '165', null, '热门活动', 'Hot', '2016-09-01 11:13:55', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('10', '165', null, '抽奖活动', 'Draw', '2016-09-01 11:14:13', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('11', '167', null, '热门精选', 'Hot', '2016-09-01 11:15:04', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('12', '167', null, '应季推荐', 'Seasonal', '2016-09-01 11:15:24', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('13', '167', null, '节日必选', 'Festival', '2016-09-01 11:15:45', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('14', '168', null, '生鲜宅配', 'Distribution', '2016-09-01 11:16:51', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('15', '168', null, '充值', 'Recharge', '2016-09-01 11:17:06', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('16', '168', null, '金融', 'Finance', '2016-09-01 11:17:20', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('17', '168', null, '复印、打印及传真', 'Copy', '2016-09-01 11:17:39', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('18', '168', null, '顺丰快递', 'SF', '2016-09-01 11:17:55', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('19', '168', null, '鲜花、蛋糕预订', 'Reserve', '2016-09-01 11:18:15', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('20', '168', null, '韵达快递', 'Yunda', '2016-09-01 11:18:40', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('21', '168', null, '照片冲印', 'Photo', '2016-09-01 11:19:01', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('22', '168', null, '教育培训', 'Train', '2016-09-01 11:19:23', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('23', '168', null, '家政、衣物干洗', 'Clean', '2016-09-01 11:19:39', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('24', '169', null, '加盟优势', 'Advantage', '2016-09-01 11:20:08', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('25', '169', null, '加盟方法', 'Method', '2016-09-01 11:20:23', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('26', '169', null, '我要加盟', 'I want', '2016-09-01 11:20:38', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('27', '169', null, '商圈类型', 'Type', '2016-09-01 11:20:55', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('28', '169', null, '经验分享', 'Share', '2016-09-01 11:21:09', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('29', '169', null, '咨询服务', 'Service', '2016-09-01 11:21:27', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('30', '170', null, '微喔简介', 'Introduce', '2016-09-01 11:22:02', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('31', '170', null, '经营理念', 'Idea', '2016-09-01 11:22:20', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('32', '170', null, '人才招募', 'Recruit', '2016-09-01 11:22:36', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('33', '170', null, '门店查询', 'Store', '2016-09-01 11:22:51', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('34', '170', null, '联系我们', 'Contact', '2016-09-01 11:23:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('35', '170', null, '公益活动', 'Public', '2016-09-01 11:23:22', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('36', '166', '新品上市', '新品推荐', 'New Arrivals', '2016-09-01 15:14:32', '1', null, null, '0', null, null, null);
INSERT INTO `t_category` VALUES ('37', '166', '新品上市', '进口新品推荐', 'Recommended import', '2016-09-01 15:14:45', '1', null, null, '0', null, null, null);

-- ----------------------------
-- Table structure for `t_contact`
-- ----------------------------
DROP TABLE IF EXISTS `t_contact`;
CREATE TABLE `t_contact` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(1024) DEFAULT NULL,
  `email` varchar(1024) DEFAULT NULL,
  `phone` varchar(1024) DEFAULT NULL,
  `company` varchar(1024) DEFAULT NULL,
  `address` varchar(1024) DEFAULT NULL,
  `message` text,
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `back_up1` varchar(1024) DEFAULT NULL,
  `back_up2` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_contact
-- ----------------------------
INSERT INTO `t_contact` VALUES ('0', 'ra', '518000', '0755', '深圳', '天虹', '你好', '2016-08-18 17:48:30', null, null);

-- ----------------------------
-- Table structure for `t_content`
-- ----------------------------
DROP TABLE IF EXISTS `t_content`;
CREATE TABLE `t_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menu_id` int(11) DEFAULT NULL COMMENT '菜单ID',
  `title` varchar(1024) DEFAULT NULL COMMENT '标题',
  `slogan` varchar(1024) DEFAULT NULL,
  `phone` varchar(1024) DEFAULT NULL,
  `address` varchar(1024) DEFAULT NULL,
  `source` varchar(1024) DEFAULT NULL,
  `content` text COMMENT '企业文化内容',
  `path` varchar(1024) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `backup1` varchar(1024) DEFAULT NULL,
  `backup2` varchar(1024) DEFAULT NULL,
  `backup3` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_content
-- ----------------------------
INSERT INTO `t_content` VALUES ('1', '8', '第一次', null, null, null, null, '<p>第一次</p>', null, null, null, '2016-08-26 21:46:46', '1', '0', null, null, null);
INSERT INTO `t_content` VALUES ('2', '32', '111', null, null, null, '222', '<p>4444</p>', null, '2016-07-22 11:02:16', '1', '2016-07-22 14:20:44', '1', '0', null, null, null);
INSERT INTO `t_content` VALUES ('3', '32', '厦门再添新店——天虹进驻厦门市枋湖社区发展中心项目签约', null, null, null, '天虹', '<p style=\"color: rgb(89, 88, 93); font-family: 宋体; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><span data-fr-verified=\"true\">&nbsp; &nbsp;&nbsp;</span>2016年4月28日，天虹进驻厦门市枋湖社区发展中心项目的签约仪式在厦门市举行，公司东南区总经理李森、拓展部总监张友耘，业主方代表苏辉明等出席了签约仪式。</p><p style=\"color: rgb(89, 88, 93); font-family: 宋体; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">&nbsp;&nbsp;&nbsp; 项目所在的五缘湾新片区，是厦门市新的经济增长点和未来城市经济圈的重要连接点，发展潜力巨大。项目位于厦门市湖里区云顶北路及金湖路交汇处东南角，交通便捷，显现性好，中高档楼盘密集，且周边将兴起多个大型购物中心，可形成商业聚集，未来将成为厦门市又一商业中心。项目为集商业、写字楼、公寓、商铺等于一体的城市综合体，我司租赁面积约7.1万平方米，将致力于打造为海西首席高性价比的生活体验中心，创造社交、休闲、生活第三空间。</p><p style=\"color: rgb(89, 88, 93); font-family: 宋体; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">&nbsp;&nbsp;&nbsp; 厦门市枋湖社区发展中心项目的签约，将进一步提升我司在厦门市场的品牌知名度，可与东南区的其他门店形成更具规模的协同效应，进一步完善我司在厦门的门店布局。</p><p><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1469168862280.png\" width=\"300\"></p><p style=\"color: rgb(89, 88, 93); font-family: 宋体; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><br></p>', null, '2016-07-22 14:26:27', '1', '2016-07-22 14:40:08', '1', '0', null, null, null);
INSERT INTO `t_content` VALUES ('4', '86', '51CTO下载-Lucene实战(第2版)PDF高清中文版.pdf', null, null, null, null, '', '51CTO下载-Lucene实战(第2版)PDF高清中文版.pdf', '2016-07-22 15:16:46', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('5', '86', 'Spring技术内幕 深入解析Spring架构与设计原理 第2版 .计文柯.扫描版.pdf', null, null, null, null, '', 'Spring技术内幕 深入解析Spring架构与设计原理 第2版 .计文柯.扫描版.pdf', '2016-07-22 15:18:46', '1', '2016-07-22 15:25:50', '1', '0', null, null, null);
INSERT INTO `t_content` VALUES ('6', '86', '手机属性表.xlsx', null, null, null, null, '', '手机属性表.xlsx', '2016-07-22 15:27:13', '1', '2016-07-22 15:27:37', '1', '1', null, null, null);
INSERT INTO `t_content` VALUES ('7', '86', '工作簿1.xlsx', null, null, null, null, '', '工作簿1.xlsx', '2016-07-22 15:27:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('8', '117', '九洲天虹广场', '一站式吃喝玩乐购全生活都市综合体', '', '', null, '<p>\n\n<h1>九洲天虹广场</h1>\n\n  <p>一站式吃喝玩乐购全生活都市综合体</p>\n\n<p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n  <p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n  <p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n  <p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n\n<br>\n\n<br></p>', null, '2016-08-17 14:47:10', '1', '2016-08-17 18:53:56', '1', '0', null, null, null);
INSERT INTO `t_content` VALUES ('9', '119', '区位交通', 'LOCATION TRAFFIC', '', '', null, '<p>\n\n</p><h1>九洲天虹广场</h1>\n\n  <p>一站式吃喝玩乐购全生活都市综合体</p>\n\n<p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n  <p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n  <p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n  <p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n\n<br>\n\n<br><p></p>', null, '2016-08-17 17:53:43', '1', '2016-10-12 16:08:51', '1', '0', null, null, null);
INSERT INTO `t_content` VALUES ('10', '120', '天虹购物中心', '二站式吃喝玩乐购全生活都市综合体', '', '', null, '<p>\n\n<h1>九洲天虹广场</h1>\n\n  <p>一站式吃喝玩乐购全生活都市综合体</p>\n\n<p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n  <p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n  <p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n  <p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n\n<br>\n\n<br></p>', null, '2016-08-17 18:35:12', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('11', '123', '联发广场', '行政金融中心核心区大型综合体', '', '', null, '<p style=\"border: none; margin: 0px 0px 5px; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">联发广场为毗邻市政府的临江项目，位于行政金融中心核心区，占地47亩，总建筑面积约为21万平方米，主体建筑超200米，总投资10亿元人民币。作为南昌城市地标建筑，联发广场项目是集5A级摩天写字楼、时尚购物中心、高档奢装公寓为一体的大型综合体。</p>', null, '2016-08-17 18:56:06', '1', '2016-10-14 15:28:02', '1', '0', null, null, null);
INSERT INTO `t_content` VALUES ('12', '126', '商业配套', 'BUSINESS MATCHING', '', '', null, '<p>联发广场项目占地近50亩，总建筑面积近19万平方米，主体建筑高于150米，规划为商场、高档写字楼、兼容酒店式公寓。联发广场项目于2006年8月28日奠基，总投资近8亿元，项目雄踞中央商务区(CBD)核心区域，区位价值显赫。\n</p><p>联发大厦由甲级写字楼、五星级公寓、大型商业组成的大型综合性建筑。其中甲级写字楼面积约8万㎡，主体高度超过170米，5A级智能化标准单元分割合理实用；五星级国际公寓面积近5万㎡，大型商业面积约3万㎡，已与全球知名零售商接洽，力邀旗下综合购物中心进驻，将建立一个集购物、餐饮及娱乐为一体的多元化购物中心.\n</p><p>项目位置：红谷滩区红谷大道与红谷三路交汇处\n</p><p>周边商业：购物：家乐福、法国欧尚超市、英国百安居、洪城大厦底层商业广场\n</p><p>周边医院：医院：中寰医院其他：绿茵宾馆银行：工商银行\n</p><p>周边学校：中小学：红谷一中、师大附中、南昌五中、南昌二中、育新小学、南师附小、广电滨江豪园幼儿园\n</p><p>周边公共交通：204路、221路、222路、229路、245路高校园区线直达“联发广场”；17路、旅游2线、209路、227路、504路红谷滩区域线、506路红谷滩区域线可到“绿茵路口”</p><p style=\"line-height: 24px; text-align: justify; margin: 0px 0px 5px; word-break: break-all; box-sizing: content-box; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; border: none; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; background-color: rgb(254, 254, 254);\"><br></p>', null, '2016-08-17 19:13:24', '1', '2016-10-14 15:45:08', '1', '0', null, null, null);
INSERT INTO `t_content` VALUES ('13', '127', '南昌· 九洲天虹广场合作', '', '', '', null, '<p style=\"border: none; margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\"><strong>2万方购物中心</strong>——以“天虹百货+精致超市+餐饮+休闲+娱乐+X”的购物中心业态，打造一站式吃喝玩乐购的南昌商业新中心。</p><p style=\"border: none; margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">&nbsp;<br></p><p style=\"border: none; margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\"><b>天虹·金街商铺</b>——整座天虹广场，仅66席，75-249㎡可售街铺，其稀缺价值不言而喻</p><p style=\"border: none; margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">&nbsp;<br></p><p style=\"border: none; margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\"><b>LOFT-SOHO全功能空间</b>——4.45万㎡高端商务，屹立于九洲天虹购物中心之上，建筑高度达142米，华中区天虹总部将落户于此，建成后将成为朝阳新城滨江金融商务区又一商务地标。</p><p style=\"border: none; margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">&nbsp;<br></p><p style=\"border: none; margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\"><b>招商地址：</b>江西省·南昌市·西湖区九洲大街与抚生南路交汇处（九洲大街666号）二楼招商部</p>', null, '2016-08-17 19:43:38', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('14', '130', '', '', '0755-88888888', '深圳市南山区中心路(深圳湾段)3019号', null, '<p><br></p>', null, '2016-08-18 17:18:40', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('15', '133', '', '', '', '', null, '<p>\n\n<span style=\"color: rgb(0, 0, 0); font-family: &quot; Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;\" data-fr-verified=\"true\">菲尔芙是中外合资的连锁零售企业，其控股股东是中国航空工业集团下属的中国航空技术深圳有限公司。<br style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><br style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">1984年成立以来，通过人本、科学的管理，专业、高效的运营，公司取得了卓越的业绩，已连续多年入围中国连锁百强企业。公司根据目标顾客需求的不同，以百货店、大型购物中心、便利店的实体零售业态，打造以“亲和、信赖、享受生活”为核心价值的品牌，旗下拥有“天虹”、“君尚”两大零售品牌。截止5月16日，天虹品牌在北京、广东、福建、江西、湖南、江苏、浙江、四川等8省20市开设了61家直营分店及以特许经营方式管理2家分店，君尚品牌在深圳、东莞、惠州共开设了3家直营分店；天虹微喔便利店在深圳、厦门、南昌等地共开设了96家直营分店，38家加盟店；天虹跨境电商体验店在深圳、东莞、惠州、厦门、福州、成都、长沙、株洲、吉安、赣州、杭州、苏州等地开店34家。<br style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><br style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">公司在行业内率先突破传统百货购物模式，从实体店走向线上线下融合的全渠道，率先打造出全国首家拥有“自定义菜单”的零售微信服务号“天虹”，随后逐步创新，现已形成实体店、PC网店、移动端（天虹微信、天虹微品、虹领巾）的全渠道零售生活平台。<br style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><br style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">天虹将始终坚持“有效益扩张”和“可持续发展”的原则，立志将公司塑造成全国一流的零售企业，与顾客分享生活之美。</span>\n\n<br></p>', null, '2016-08-19 15:23:02', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('16', '134', '', '', '', '', null, '<p>\n\n<span style=\"color: rgb(0, 0, 0); font-family: &quot; Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;\" data-fr-verified=\"true\">1984年成立以来，通过人本、科学的管理，专业、高效的运营，公司取得了卓越的业绩，已连续多年入围中国连锁百强企业。公司根据目标顾客需求的不同，以百货店、大型购物中心、便利店的实体零售业态，打造以“亲和、信赖、享受生活”为核心价值的品牌，旗下拥有“天虹”、“君尚”两大零售品牌。截止5月16日，天虹品牌在北京、广东、福建、江西、湖南、江苏、浙江、四川等8省20市开设了61家直营分店及以特许经营方式管理2家分店，君尚品牌在深圳、东莞、惠州共开设了3家直营分店；天虹微喔便利店在深圳、厦门、南昌等地共开设了96家直营分店，38家加盟店；天虹跨境电商体验店在深圳、东莞、惠州、厦门、福州、成都、长沙、株洲、吉安、赣州、杭州、苏州等地开店34家。<br style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><br style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">公司在行业内率先突破传统百货购物模式，从实体店走向线上线下融合的全渠道，率先打造出全国首家拥有“自定义菜单”的零售微信服务号“天虹”，随后逐步创新，现已形成实体店、PC网店、移动端（天虹微信、天虹微品、虹领巾）的全渠道零售生活平台。</span>\n\n<br></p>', null, '2016-08-19 15:23:31', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('17', '156', '品质管理介绍', '', '', '', null, '<p><strong>ISO22000食品安全管理体系</strong></p><p>ISO22000即食品安全管理体系。众所周知，为给宇航员提供安全食品，20世纪50年代美国宇航局参与开发了HACCP（危害分析和关键控制点）。 &nbsp;作为一个国际标准，ISO22000覆盖了HACCP的全部内容，定义了食品安全管理体系的要求，适用于从“农场到餐桌”这个食品链中的所有组织。</p><p>天虹一直贯彻并强调“质量是企业的生存之本”的经营及管理理念：1987年，天虹在全国商业界率先提出了“反假、打假、不售假”的口号并付诸行动，在社会上引起了热烈的反响；1994年3月，天虹又在深圳商界率先实行“商品质量先行赔付制”，受到深圳市民的拥护；1998年，天虹提出并开始实施全面顾客满意战略；1999年，天虹率先通过IS09000质量认证，成为深圳首家通过该认证的零售企业；2007年，天虹获得“深圳市市长质量奖”，推行卓越绩效模式，并引入了精益六西格玛，使天虹的质量管理工作由优秀走向卓越。</p><p>天虹自2011年开始导入ISO22000食品安全管理体系，历时三年建立了食品安全管理体系。并于2014年5月底，天虹商场股份有限公司及宝安天虹购物中心通过ISO22000食品安全管理体系认证，成为国内首家通过ISO22000食品安全管理体系认证的零售企业和商场。2014年、2015年，天虹连续荣获第四届、第五届中国食品健康七星奖“品质卓越奖”。天虹通过不断的提升，力求为顾客提供安全食品。</p><p style=\"padding: 0px; margin: 20px 0px 0px; line-height: 24px; text-align: justify; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><br></p><p style=\"padding: 0px; margin: 20px 0px 0px; line-height: 24px; text-align: justify; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><br></p>', null, '2016-08-25 21:35:45', '1', '2016-10-12 15:20:17', '1', '0', null, null, null);
INSERT INTO `t_content` VALUES ('18', '163', '', null, null, null, null, '<ol><li><p>\n\n任意消费满10元+15元换购圣诞小熊一只&nbsp;</p></li><li><p>参与门店：天虹微喔和万店通所有门店（不含加盟店）\n\n\n<br></p></li></ol>', null, '2016-09-19 11:30:09', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('19', '181', '天虹商场股份有限公司', 'SINCE 1984', '', '', null, '<p style=\"padding: 0px; margin: 20px 0px 0px; color: rgb(139, 123, 112); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">天虹商场股份有限公司（股票简称：天虹商场，股票代码：002419）是中外合资的连锁零售企业，其控股股东是中国航空工业集团下属的中国航空技术深圳有限公司。<br><br></p><p>1984年成立以来，通过人本、科学的管理，专业、高效的运营，公司取得了卓越的业绩，已连续多年入围中国连锁百强企业。公司根据目标顾客需求的不同，以百货店、大型购物中心、便利店的实体零售业态，打造以“亲和、信赖、享受生活”为核心价值的品牌，旗下拥有“天虹”、“君尚”两大零售品牌。截止5月16日，天虹品牌在北京、广东、福建、江西、湖南、江苏、浙江、四川等8省20市开设了61家直营分店及以特许经营方式管理2家分店，君尚品牌在深圳、东莞、惠州共开设了3家直营分店；天虹微喔便利店在深圳、厦门、南昌等地共开设了96家直营分店，38家加盟店；天虹跨境电商体验店在深圳、东莞、惠州、厦门、福州、成都、长沙、株洲、吉安、赣州、杭州、苏州等地开店34家。<br><br></p><p>公司在行业内率先突破传统百货购物模式，从实体店走向线上线下融合的全渠道，率先打造出全国首家拥有“自定义菜单”的零售微信服务号“天虹”，随后逐步创新，现已形成实体店、PC网店、移动端（天虹微信、天虹微品、虹领巾）的全渠道零售生活平台。<br><br></p><p>天虹将始终坚持“有效益扩张”和“可持续发展”的原则，立志将公司塑造成全国一流的零售企业，与顾客分享生活之美。</p><p style=\"padding: 0px; margin: 20px 0px 0px; color: rgb(139, 123, 112); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><br></p>', null, '2016-09-20 10:09:53', '1', '2016-10-14 13:52:06', '1', '0', null, null, null);
INSERT INTO `t_content` VALUES ('20', '186', '天虹小额贷', '', '', '', null, '<p>天虹小额贷\n\n<span data-fr-verified=\"true\" style=\"color: rgb(102, 102, 102); font-family: &quot; Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;\">天虹将立志成为全国一流的零售企业，与顾客分享生活之美。我们天虹微喔便利店不仅能够是补给站，更要充当顾客新的生活方式定制者。基于对顾客的深度定位上，准确计算顾客群的消费能力、消费习惯、价值取向进行精准营销，让顾客们接受并爱上有微喔定制的生活方式。</span>\n\n<br></p>', null, '2016-09-20 20:35:43', '1', '2016-09-20 20:49:05', '1', '0', null, null, null);
INSERT INTO `t_content` VALUES ('21', '187', '天虹商场', '', '', 'http://www.tianhong.cn/', null, '<p><span data-fr-verified=\"true\" style=\"color: rgb(102, 102, 102); font-family: &quot; Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;\">天虹商场将立志成为全国一流的零售企业，与顾客分享生活之美。我们天虹微喔便利店不仅能够是补给站，更要充当顾客新的生活方式定制者。基于对顾客的深度定位上，准确计算顾客群的消费能力、消费习惯、价值取向进行精准营销，让顾客们接受并爱上有微喔定制的生活方式。</span>\n\n<br></p>', null, '2016-09-20 20:36:59', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('22', '188', '君尚百货', '', '', 'http://www.tianhong.cn/', null, '<p>君尚百货\n\n<span data-fr-verified=\"true\" style=\"color: rgb(102, 102, 102); font-family: &quot; Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;\">天虹将立志成为全国一流的零售企业，与顾客分享生活之美。我们天虹微喔便利店不仅能够是补给站，更要充当顾客新的生活方式定制者。基于对顾客的深度定位上，准确计算顾客群的消费能力、消费习惯、价值取向进行精准营销，让顾客们接受并爱上有微喔定制的生活方式。</span>\n\n<br></p>', null, '2016-09-20 20:49:32', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('23', '189', '购物中心', '', '', 'http://www.tianhong.cn/', null, '<p>购物中心\n\n<span style=\"color: rgb(102, 102, 102); font-family: &quot; Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;\" data-fr-verified=\"true\">天虹将立志成为全国一流的零售企业，与顾客分享生活之美。我们天虹微喔便利店不仅能够是补给站，更要充当顾客新的生活方式定制者。基于对顾客的深度定位上，准确计算顾客群的消费能力、消费习惯、价值取向进行精准营销，让顾客们接受并爱上有微喔定制的生活方式。</span>\n\n</p>', null, '2016-09-20 20:49:48', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('24', '190', '微喔便利店', '', '', 'http://www.tianhong.cn/', null, '<p>微喔便利店\n\n<span style=\"color: rgb(102, 102, 102); font-family: &quot; Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;\" data-fr-verified=\"true\">天虹将立志成为全国一流的零售企业，与顾客分享生活之美。我们天虹微喔便利店不仅能够是补给站，更要充当顾客新的生活方式定制者。基于对顾客的深度定位上，准确计算顾客群的消费能力、消费习惯、价值取向进行精准营销，让顾客们接受并爱上有微喔定制的生活方式。</span>\n\n<br></p>', null, '2016-09-20 20:50:16', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('25', '191', '天虹红领巾', '', '', 'http://www.tianhong.cn/', null, '<p>天虹红领巾\n\n<span style=\"color: rgb(102, 102, 102); font-family: &quot; Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;\" data-fr-verified=\"true\">天虹将立志成为全国一流的零售企业，与顾客分享生活之美。我们天虹微喔便利店不仅能够是补给站，更要充当顾客新的生活方式定制者。基于对顾客的深度定位上，准确计算顾客群的消费能力、消费习惯、价值取向进行精准营销，让顾客们接受并爱上有微喔定制的生活方式。</span>\n\n<br></p>', null, '2016-09-20 20:50:45', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('26', '192', '天虹置业', '', '', 'http://www.tianhong.cn/', null, '<p>天虹置业\n\n<span style=\"color: rgb(102, 102, 102); font-family: &quot; Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;\" data-fr-verified=\"true\">天虹将立志成为全国一流的零售企业，与顾客分享生活之美。我们天虹微喔便利店不仅能够是补给站，更要充当顾客新的生活方式定制者。基于对顾客的深度定位上，准确计算顾客群的消费能力、消费习惯、价值取向进行精准营销，让顾客们接受并爱上有微喔定制的生活方式。</span>\n\n</p>', null, '2016-09-20 20:51:00', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('27', '193', '企业文化1', 'corporate culture1', '', '', null, '<p style=\"padding: 0px; margin: 35px 0px 0px; font-size: 12px; color: rgb(139, 123, 112); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; width: 420px; background-color: rgb(250, 250, 250);\"><strong>企业使命 ：11</strong>致力于创造与分享生活之美；创造：创造价值，这份价值就是让生活更加美好。劳动、创新，让世界在改变； 分享：利他思想、集体主义、开放精神；分享能1+1&gt;2；让1变成千万甚至无穷大；静态变为动态；短期变为长远；生活：零售行业贴近生活脉搏，与生活息息相关；包括物质生活、精神生活；美：真善才美、内外兼修才美、无私利他才美、分享就是美。</p><p style=\"padding: 0px; margin: 35px 0px 0px; font-size: 12px; color: rgb(139, 123, 112); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(250, 250, 250);\"><strong>企业愿景 ：</strong>成为全国一流的零售企业；全国：确定了公司的发展区域就是全国。一流：从员工、目标顾客、股东、供应商和社会五个方面体现。 ——让天虹员工获得最佳的综合回报和实现自我价值的舞台；——成为当地目标顾客消费的首选商场；——为股东提供稳定的、超过同行平均水平的投资回报；——我们与供应商成为良好的合作伙伴，信守合约，友好合作；——通过卓越运营、创新求索，促进行业发展；保护环境、服务社区、乐善好施，维护社会和谐</p><p style=\"padding: 0px; margin: 35px 0px 0px; font-size: 12px; color: rgb(139, 123, 112); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(250, 250, 250);\"><strong>核心价值观 ：</strong>诚信:诚实 诚恳 信任 信誉；分享:分享的涵义，分享什么；开放:胸怀、心态、思维创新:创新的灵感，源于细心的观察，用心的思考；</p>', null, '2016-09-21 14:32:07', '1', '2016-10-12 11:56:41', '1', '0', null, null, null);
INSERT INTO `t_content` VALUES ('28', '198', '职能简介', 'Business School Profile', null, null, null, '秉持“尊重人的价值、开发人的潜能、升华人的心灵”人才工作宗旨，把天虹打造成一个海纳百川的组织，在这个组织里，普通的人变成优秀的人，优秀的人变成卓越的人，源源不断的人在这里实现自己的人生梦想。培养和造就一支赢得市场领先、创造组织优势、引领价值导向、有使命感与责任感的人才队伍、更加有创造力、更加有超越其他组织和个人的推动力，实现自我境界的升华。', null, '2016-09-21 21:40:20', '1', '2016-09-21 21:40:54', '1', '0', null, null, null);
INSERT INTO `t_content` VALUES ('29', '106', '', '', '', '', null, '<p>111111111111111</p>', null, '2016-10-11 11:36:10', '1', '2016-10-14 14:57:12', '1', '0', null, null, null);
INSERT INTO `t_content` VALUES ('30', '184', '', '', '', '', null, '<p>\n“有效益扩张”和“可持续发展”的原则，立志将公司塑造成全国一流的零售企业，与顾客分享生活之美。 11111111111<br></p>', null, '2016-10-12 09:42:50', '1', '2016-10-12 09:45:09', '1', '0', null, null, null);
INSERT INTO `t_content` VALUES ('31', '215', '只能介绍测试1', '标语是什么', '', '', null, '<p>职能介绍秉持“尊重人的价值、开发人的潜能、升华人的心灵”人才工作宗旨，把天虹打造成一个海纳百川的组织，在这个组织里，普通的人变成优秀的人，优秀的人变成卓越的人，源源不断的人在这里实现自己的人生梦想。培养和造就一支赢得市场领先、创造组织优势、引领价值导向、有使命感与责任感的人才队伍、更加有创造力、更加有超越其他组织和个人的推动力，实现自我境界的升华。</p><p><br></p>', null, '2016-10-12 13:55:28', '1', '2016-10-17 21:24:22', '1', '0', null, null, null);
INSERT INTO `t_content` VALUES ('32', '118', '', '', '', '', null, '<p>呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜</p>', null, '2016-10-12 15:48:03', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('33', '124', '', '', '', '', null, '<p><br></p>', null, '2016-10-14 15:24:41', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('34', '220', '商学院简介', '', '', '', null, '<p style=\"padding: 0px; margin: 0px; color: rgb(102, 102, 102); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 36px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">1商学院简介成立于2012年8月，其前身为天虹培训中心，经过十余年的沉淀与积累，通过不断完善培训体系，搭建公司人才梯队， 开发系统的课程体系，将学习发展作为承接业务与策略变革的手段；旨在构建一个信息共享、价值最大化的知识经营平台，及时培养和输送适用于天虹的人才。</p><p style=\"padding: 0px; margin: 0px; color: rgb(102, 102, 102); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 36px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><strong>愿景</strong>：成为全国一流的零售企业人才培养基地</p><p style=\"padding: 0px; margin: 0px; color: rgb(102, 102, 102); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 36px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><strong>使命</strong>：培养零售人才，推动公司持续发展</p>', null, '2016-10-16 19:23:48', '1', '2016-10-16 20:01:42', '1', '0', null, null, null);
INSERT INTO `t_content` VALUES ('35', '221', '培训中心', '', '', '', null, '<p style=\"padding: 0px; margin: 0px; color: rgb(102, 102, 102); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 36px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><strong>1优才计划：培训zhongx</strong>结合公司战略发展目标，培养公司现任中高层管理干部的战略思维、提高团队领导能力，提升经营管理水平，重点强化学in员的经营实践能力，以实现业务绩效的提升，最终支持组织绩效的达成。</p><p style=\"padding: 0px; margin: 0px; color: rgb(102, 102, 102); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 36px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><strong>新秀训练营：</strong>新秀动力营属于天虹梯队人才培养体系中的育才计划，培养人群为新进大学生。通过开展一系列的培训，帮助新进大学生实现校园人向职场人转变，快速融入和了解公司，掌握岗位技能、胜任岗位工作，顺利转型、度过关键期，并且清晰职业生涯发展规划，确保试用期后能顺利链接至梯队人才培养体系中。</p>', null, '2016-10-16 19:24:13', '1', '2016-10-16 20:01:35', '1', '0', null, null, null);
INSERT INTO `t_content` VALUES ('36', '222', '', '', '', '', null, '<p><strong>1、百年积淀的多学科优势</strong></p><p>授课教师由兼具深厚学术造诣和丰富管理实践经验的同济大学管理学院的教授担当，同时聘请在大型企业的高管和企业家担任兼职教授， 优秀校友作为校友导师提供学业和职业的指导。</p><p><strong>2、雄厚的师资</strong></p><p>同济大学在建筑、土木、海洋、环境、车辆、交通等专业领域全国领先，MBA项目以此为基石， 并依托学院在工程管理、服务运营管理和城市发展与管理学科的优势，逐渐形成了MBA自己的特色专业方向， 特别是项目管理与房地产，服务与运营管理和金融方向。</p><p><strong>3、庞大校友网络和人脉资源</strong></p><p>同济MBA校友近6000人，他们遍及全国各地，特别是在上海、长三角、华东地区和珠三角的国有大型企业、著名跨国企业、政府机构中担任中高级管理职务，为国家经济发展做出了突出的贡献。 同济MBA通过校友理事会、校友讲坛、校友微博、校友社区网等渠道为学员搭建与校友广泛交流的平台。</p><p><br></p><p>同济大学MBA深圳班</p><p>李老师189-2389-2161</p>', null, '2016-10-16 19:24:27', '1', '2016-10-16 20:28:53', '1', '0', null, null, null);
INSERT INTO `t_content` VALUES ('37', '223', '', '', '', '', null, '<p>\n\n场地介绍\n\n  \n\n  </p><p>我司在东莞大朗的商学院现面向社会提供场地租赁业务。</p><p>天虹商学院位于东莞市大朗镇富民南路336号，教学楼占地面积约6000平米，能同时提供900人培训。会议室分别为：多功能厅435平米，容纳250人；阶梯教室485平米 ，容纳210人；教室6间74-170平米，容纳40-108人；电教室148平米，容纳31人；拥有室外拓展基地；配套图书馆、休息区、娱乐室；住宿包括套间2间，标间4间，学员宿舍60间，可以同时满足370人住宿。</p><p>\n\n租赁方式\n\n  \n\n  </p><p>天虹商学院 高经理：0769-8291 3062</p>', null, '2016-10-16 19:24:39', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('38', '225', 'E-learnning系统', 'E-learnning系统', '', '', null, 'E-learnning可实现视频资料、微课、PPT资料的上传、存储与分享，实现全体员工的线上学习与考试。', null, '2016-10-16 19:46:37', '1', '2016-10-16 20:15:09', '1', '0', null, null, null);
INSERT INTO `t_content` VALUES ('39', '226', 'KMS系统', '', '', '', null, 'kms可实现文档资料的知识沉淀与共享，可推送推荐至全体员工。', null, '2016-10-16 19:46:52', '1', '2016-10-16 20:15:15', '1', '0', null, null, null);
INSERT INTO `t_content` VALUES ('40', '227', '', '', '', '', null, '创新大赛中心通过组织月度/年度竞赛，收集公司创新点子与方案、邀请评委评分点评，统计结果，奖励创新项目、后期跟进实施及推广。通过大赛的平台拉动创新点子挖掘、创新点子实施，从而形成在企业内完善的创新管理机制，并且营造良好的创新氛围。', null, '2016-10-16 19:47:21', '1', '2016-10-16 20:15:28', '1', '0', null, null, null);
INSERT INTO `t_content` VALUES ('41', '243', '', '', '', '', null, '藏地租赁我司在东莞大朗的商学院现面向社会提供场地租赁业务。\n天虹商学院位于东莞市大朗镇富民南路336号，教学楼占地面积约6000平米，能同时提供900人培训。会议室分别为：多功能厅435平米，容纳250人；阶梯教室485平米 ，容纳210人；教室6间74-170平米，容纳40-108人；电教室148平米，容纳31人；拥有室外拓展基地；配套图书馆、休息区、娱乐室；住宿包括套间2间，标间4间，学员宿舍60间，可以同时满足370人住宿。', null, '2016-10-16 20:14:32', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('42', '244', '', '', '', '', null, '租赁方式天虹商学院 高经理：0769-8291 3062', null, '2016-10-16 20:14:46', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('43', '231', '', '', '', '', null, '<p style=\"padding: 0px; margin: 0px; color: rgb(102, 102, 102); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 36px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><strong>优才计划：培训中心001</strong>结合公司战略发展目标，培养公司现任中高层管理干部的战略思维、提高团队领导能力，提升经营管理水平，重点强化学员的经营实践能力，以实现业务绩效的提升，最终支持组织绩效的达成。</p><p style=\"padding: 0px; margin: 0px; color: rgb(102, 102, 102); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 36px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><strong>新秀训练营：</strong>新秀动力营属于天虹梯队人才培养体系中的育才计划，培养人群为新进大学生。通过开展一系列的培训，帮助新进大学生实现校园人向职场人转变，快速融入和了解公司，掌握岗位技能、胜任岗位工作，顺利转型、度过关键期，并且清晰职业生涯发展规划，确保试用期后能顺利链接至梯队人才培养体系中。</p>', null, '2016-10-16 20:29:51', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('44', '232', '', '', '', '', null, '<p style=\"padding: 0px; margin: 0px; color: rgb(102, 102, 102); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 36px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><strong>优才计划：培新中心222</strong>结合公司战略发展目标，培养公司现任中高层管理干部的战略思维、提高团队领导能力，提升经营管理水平，重点强化学员的经营实践能力，以实现业务绩效的提升，最终支持组织绩效的达成。</p><p style=\"padding: 0px; margin: 0px; color: rgb(102, 102, 102); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 36px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><strong>新秀训练营：</strong>新秀动力营属于天虹梯队人才培养体系中的育才计划，培养人群为新进大学生。通过开展一系列的培训，帮助新进大学生实现校园人向职场人转变，快速融入和了解公司，掌握岗位技能、胜任岗位工作，顺利转型、度过关键期，并且清晰职业生涯发展规划，确保试用期后能顺利链接至梯队人才培养体系中。</p>', null, '2016-10-16 20:30:01', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('45', '233', '', '', '', '', null, '知识管理体系天虹拥有完善的知识管理系统，包含E-learnning（老大师）系统与KMS系统。E-learnning系统可实现视频资料、微课、PPT资料的上传、存储与分享，实现全体员工的线上学习与考试。KMS系统可实现文档资料的知识沉淀与共享，可推送推荐至全体员工。\n创新大赛：创新中心通过组织月度/年度竞赛，收集公司创新点子与方案、邀请评委评分点评，统计结果，奖励创新项目、后期跟进实施及推广。通过大赛的平台拉动创新点子挖掘、创新点子实施，从而形成在企业内完善的创新管理机制，并且营造良好的创新氛围。', null, '2016-10-16 20:30:22', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('46', '234', '', '', '', '', null, '优才计划结合公司战略发展目标，培养公司现任中高层管理干部的战略思维、提高团队领导能力，提升经营管理水平， 重点强化学员的经营实践能力，以结合公司战略发展目标，培养公司现任中高层管理干部的战略思维、提高团队领导能力，提升经营管理水平， 重点强化学员的经营实践能力，以结合公司战略发展目标，培养公司现任中高层管理干部的战略思维、提高团队领导能力，提升经营管理水平， 重点强化学员的经营实践能力', null, '2016-10-16 20:30:37', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('47', '235', '', '', '', '', null, '新秀动力营结合公司战略发展目标，培养公司现任中高层管理干部的战略思维、提高团队领导能力，提升经营管理水平， 重点强化学员的经营实践能力，以结合公司战略发展目标，培养公司现任中高层管理干部的战略思维、提高团队领导能力，提升经营管理水平， 重点强化学员的经营实践能力，以结合公司战略发展目标，培养公司现任中高层管理干部的战略思维、提高团队领导能力，提升经营管理水平， 重点强化学员的经营实践能力', null, '2016-10-16 20:30:52', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('48', '236', '', '', '', '', null, '天虹商学院结合公司战略发展目标，培养公司现任中高层管理干部的战略思维、提高团队领导能力，提升经营管理水平， 重点强化学员的经营实践能力，以结合公司战略发展目标，培养公司现任中高层管理干部的战略思维、提高团队领导能力，提升经营管理水平， 重点强化学员的经营实践能力，以结合公司战略发展目标，培养公司现任中高层管理干部的战略思维、提高团队领导能力，提升经营管理水平， 重点强化学员的经营实践能力', null, '2016-10-16 20:31:12', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('49', '237', '完善的福利制度 .01', '', '', '', null, '社会保险、年度体检、员工宿舍、医保 带薪假期、婚育礼金、生日派对', null, '2016-10-16 20:44:31', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('50', '238', '有竞争的薪酬 .02', '', '', '', null, '固定薪酬、年终红包、项目奖金、伯乐奖金 专项奖励、等等', null, '2016-10-16 20:46:59', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('51', '239', '其他福利 .03', '', '', '', null, '年度旅游、春节嘉年华、公司周年庆祝活动、免费早餐及夜宵', null, '2016-10-16 20:47:14', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('52', '240', '04. 完善的福利制度', '', '', '', null, '员工宿舍、医保 带薪假期、婚育礼金、生日派对', null, '2016-10-16 20:47:28', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('53', '241', '05. 有竞争的薪酬1', '', '', '', null, '薪酬、年终红包、项目奖金、伯乐奖金 专项奖励、等等', null, '2016-10-16 20:47:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('54', '242', '06. 其他福利6', '', '', '', null, '活动、年度旅游、春节嘉年华、公司周年庆祝活动、免费早餐及夜宵', null, '2016-10-16 20:47:57', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('66', '201', null, null, null, null, null, '{\"address\":\"1深圳市南山区中心路（深圳湾段）3019号天虹大厦9-14楼、17-20楼\",\"companyEnName\":\"R1ainbow Department Store Co., Ltd.\",\"companyName\":\"1天虹商场股份有限公司\",\"fax\":\"0755-2365 2166\",\"industry\":\"1零售业\",\"ipoRatio\":\"46.51\",\"issueNumber\":\"5120\",\"issuePrice\":\"40\",\"legalPerson\":\"1高书林\",\"marketTime\":\"12010-06-01\",\"menuId\":201,\"phone\":\"10755-2365 1888\",\"prospectusTime\":\"2016-05-19\",\"registered\":\"5000万\",\"releaseMode\":\"1上网定价发行，网下询价发行\",\"secretary\":\"1万颖\",\"shortName\":\"1天虹商场\",\"sponsorInstitution\":\"招1商证券股份有限公司\",\"underWriter\":\"招1商证券股份有限公司\",\"webSite\":\"www.rainbow.cn\",\"zipCode\":\"1518026\"}', null, '2016-10-17 21:02:41', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('67', '218', null, null, null, null, null, '{\"curPage\":1,\"department\":\"外交部\",\"email\":\"fds@qq.com\",\"id\":0,\"menuId\":218,\"name\":\"万\",\"pageSize\":10,\"phone\":\"131\",\"start\":0,\"totalPage\":0,\"totalRow\":0}', null, '2016-10-17 21:17:34', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('69', '246', null, null, null, null, null, '{\"email\":\"wanying@rainbow.cn\",\"id\":69,\"job\":\"董事长秘书\",\"menuId\":246,\"name\":\"万 颖\",\"phone\":\"0755-0000 0001\"}', null, '2016-10-18 20:59:32', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('70', '246', null, null, null, null, null, '{\"email\":\"wanying2@rainbow.cn\",\"id\":70,\"job\":\"证券代理\",\"menuId\":246,\"name\":\"万银1\",\"phone\":\"0755-0000 0002\"}', null, '2016-10-18 20:59:52', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('71', '252', null, null, null, null, null, '{\"cash\":\"440,110,000\",\"exDividendDate\":\"20160506\",\"id\":71,\"marketDate\":\"--\",\"menuId\":252,\"profitDate\":\"2015年\",\"profitPlan\":\"10派5.5元（含税）\",\"registerDate\":\"20160505\",\"shareTotal\":\"800,200,000\",\"simpleProfit\":\"1,208,412,565.12\",\"simpleProfitRatio\":\"36.42%\"}', null, '2016-10-25 10:31:32', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('72', '274', '', '', '', '', null, '<h4 style=\"padding: 0px; margin: 0px; border: none; outline: 0px; font-size: 16px; color: rgb(251, 140, 33); font-family: 微软雅黑; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">周一至周日及公共假期 全天24小时开放</h4><p style=\"padding: 0px; margin: 0px; border: none; outline: 0px; font-family: 微软雅黑; font-size: 14px; color: rgb(0, 0, 0); line-height: 30px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><span data-fr-verified=\"true\">小车：</span>15分钟起收费，首2小时10园，第3小时起5元/小时，每天停车收费上限35元/天</p><p style=\"padding: 0px; margin: 0px; border: none; outline: 0px; font-family: 微软雅黑; font-size: 14px; color: rgb(0, 0, 0); line-height: 30px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><span data-fr-verified=\"true\">货车：</span>（限高2.2米以下货车）：首1小时免费，第二小时起10元/小时，每天停车收费上限70元/天。</p><p><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1477463621536.png\" width=\"300\"></p><p style=\"padding: 0px; margin: 0px; border: none; outline: 0px; font-family: 微软雅黑; font-size: 14px; color: rgb(0, 0, 0); line-height: 30px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><br></p>', null, '2016-10-26 14:33:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('73', '264', '', '', '', '', null, '<p>品牌招商BRAND MERCHANTS</p><p>天虹购物中心作为国内领先的时尚及百货类电商购物平台，诚邀国内外知名品牌的优质供应商，与天虹携手合作。</p><p>请供应商提供如下资料至以下邮箱：shenzhen@tianhong.com，并务必附上联系方式，以便我司能尽快与您联系洽谈合作事宜。</p><p>需提供的相关资料：</p><p>1、公司介绍；</p><p>2、合作品牌介绍；</p><p>3、营业执照（须有最近一次的工商年检章）；</p><p>4、税务登记证（包括地税、国税）、组织机构代码证、一般纳税人资格证（经过年审的有效证件）；</p><p>5、生产许可证等市场准入证明（涉及凭许可证经营、销售的企业提供）；</p><p>6、代理或经销相关证明（供应商为代理商或经销商时）；</p><p>7、提供商标注册证（供应商为品牌商）；</p><p>8、进出口许可证、进出口卫生检疫证、进口单据和其他有关文件（供应商为贸易商）</p><p>感谢您的支持，优购网与您一起共创电子商务的辉煌！</p>', null, '2016-10-26 14:34:49', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('74', '275', '', '', '', '', null, '<p>\n\n<span style=\"color: rgb(83, 83, 83); font-family: &quot; 思源黑体 CN&quot;; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\" data-fr-verified=\"true\">天虹商场股份有限公司（股票简称：天虹商场，股票代码：002419）是中外合资的连锁零售企业，其控股股东是中国航空工业集团下属的中国航空技术深圳有限公司。&nbsp; 1984年成立以来，通过人本、科学的管理，专业、高效的运营，公司取得了卓越的业绩，已连续多年入围中国连锁百强企业。公司根据目标顾客需求的不同，以百货店、大型购物中心、便利店的实体零售业态，打造以“亲和、信赖、享受生活”为核心价值的品牌，旗下拥有“天虹”、“君尚”两大零售品牌。截止5月16日，天虹品牌在北京、广东、福建、江西、湖南、江苏、浙江、四川等8省20市开设了61家直营分店及以特许经营方式管理2家分店，君尚品牌在深圳、东莞、惠州共开设了3家直营分店；天虹微喔便利店在深圳、厦门、南昌等地共开设了96家直营分店，38家加盟店；天虹跨境电商体验店在深圳、东莞、惠州、厦门、福州、成都、长沙、株洲、吉安、赣州、杭州、苏州等地开店34家。&nbsp; 公司在行业内率先突破传统百货购物模式，从实体店走向线上线下融合的全渠道，率先打造出全国首家拥有“自定义菜单”的零售微信服务号“天虹”，随后逐步创新，现已形成实体店、PC网店、移动端（天虹微信、天虹微品、虹领巾）的全渠道零售生活平台。&nbsp; 天虹将始终坚持“有效益扩张”和“可持续发展”的原则，立志将公司塑造成全国一流的零售企业，与顾客分享生活之美。 &nbsp;</span>\n\n<br></p>', null, '2016-10-26 14:35:11', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('75', '293', null, null, null, null, null, '{\"email\":\"tianhong@shenzhen.com.cn\",\"id\":0,\"job\":\"深圳市南山区中心路(深圳湾段)3019号\",\"menuId\":293,\"name\":\"不知道\",\"phone\":\"0755-2365-1000\"}', null, '2016-10-26 14:39:47', '1', null, null, '0', null, null, null);

-- ----------------------------
-- Table structure for `t_culture`
-- ----------------------------
DROP TABLE IF EXISTS `t_culture`;
CREATE TABLE `t_culture` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menu_id` int(11) DEFAULT NULL COMMENT '菜单ID',
  `title` varchar(1024) DEFAULT NULL COMMENT '标题',
  `source` varchar(1024) DEFAULT NULL,
  `content` text COMMENT '企业文化内容',
  `path` varchar(1024) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `backup1` varchar(1024) DEFAULT NULL,
  `backup2` varchar(1024) DEFAULT NULL,
  `backup3` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='企业文化';

-- ----------------------------
-- Records of t_culture
-- ----------------------------
INSERT INTO `t_culture` VALUES ('1', '8', null, null, '<h1><p><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1469089658972.png\" width=\"300\"></p><p><br></p><p>\n\n<span data-fr-verified=\"true\" style=\"color: rgb(51, 51, 51); font-family: &quot; Microsoft YaHei&quot;; font-size: 36px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 50.76px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\">&nbsp;</span><span data-fr-verified=\"true\" style=\"font-size: 12px; color: rgb(51, 51, 51); font-family: &quot; Microsoft YaHei&quot;; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 50.76px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; display: inline !important; background-color: rgb(255, 255, 255);\">天虹商场股份有限公司（股票简称：天虹商场，股票代码：002419）是中外合资的连锁零售企业，其控股股东是中国航空工业集团下属的中国航空技术深圳有限公司。</span><span data-fr-verified=\"true\" style=\"font-size: 12px;\">\n\n<br></span></p>  <p><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 10.5pt;\" data-fr-verified=\"true\">1984年成立以来，通过人本、科学的管理，专业、高效的运营，公司取得了卓越的业绩，已连续多年入围中国连锁百强企业。公司根据目标顾客需求的不同，以百货店、大型购物中心、便利店的实体零售业态，打造以“亲和、信赖、享受生活”为核心价值的品牌，旗下拥有“天虹”、“君尚”两大零售品牌。截止5月16日，天虹品牌在北京、广东、福建、江西、湖南、江苏、浙江、四川等8省20市开设了61家直营分店及以特许经营方式管理2家分店，君尚品牌在深圳、东莞、惠州共开设了3家直营分店；天虹微喔便利店在深圳、厦门、南昌等地共开设了96家直营分店，38家加盟店；天虹跨境电商体验店在深圳、东莞、惠州、厦门、福州、成都、长沙、株洲、吉安、赣州、杭州、苏州等地开店34家。</span></p>  <p><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 10.5pt;\" data-fr-verified=\"true\">公司在行业内率先突破传统百货购物模式，从实体店走向线上线下融合的全渠道，率先打造出全国首家拥有“自定义菜单”的零售微信服务号“天虹”，随后逐步创新，现已形成实体店、PC网店、移动端（天虹微信、天虹微品、虹领巾）的全渠道零售生活平台。</span></p>  <p><span style=\"font-family: 宋体; font-size: 10.5pt;\" data-fr-verified=\"true\">天虹将始终坚持“有效益扩张”和“可持续发展”的原则，立志将公司塑造成全国一流的零售企业，与顾客分享生活之美。</span></p><br></h1><p><br></p><p><br></p>', null, null, null, '2016-07-21 16:27:40', '1', '0', null, null, null);
INSERT INTO `t_culture` VALUES ('2', '32', '111', '222', '<p>4444</p>', null, '2016-07-22 11:02:16', '1', '2016-07-22 14:20:44', '1', '0', null, null, null);
INSERT INTO `t_culture` VALUES ('3', '32', '厦门再添新店——天虹进驻厦门市枋湖社区发展中心项目签约', '天虹', '<p style=\"color: rgb(89, 88, 93); font-family: 宋体; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><span data-fr-verified=\"true\">&nbsp; &nbsp;&nbsp;</span>2016年4月28日，天虹进驻厦门市枋湖社区发展中心项目的签约仪式在厦门市举行，公司东南区总经理李森、拓展部总监张友耘，业主方代表苏辉明等出席了签约仪式。</p><p style=\"color: rgb(89, 88, 93); font-family: 宋体; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">&nbsp;&nbsp;&nbsp; 项目所在的五缘湾新片区，是厦门市新的经济增长点和未来城市经济圈的重要连接点，发展潜力巨大。项目位于厦门市湖里区云顶北路及金湖路交汇处东南角，交通便捷，显现性好，中高档楼盘密集，且周边将兴起多个大型购物中心，可形成商业聚集，未来将成为厦门市又一商业中心。项目为集商业、写字楼、公寓、商铺等于一体的城市综合体，我司租赁面积约7.1万平方米，将致力于打造为海西首席高性价比的生活体验中心，创造社交、休闲、生活第三空间。</p><p style=\"color: rgb(89, 88, 93); font-family: 宋体; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">&nbsp;&nbsp;&nbsp; 厦门市枋湖社区发展中心项目的签约，将进一步提升我司在厦门市场的品牌知名度，可与东南区的其他门店形成更具规模的协同效应，进一步完善我司在厦门的门店布局。</p><p><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1469168862280.png\" width=\"300\"></p><p style=\"color: rgb(89, 88, 93); font-family: 宋体; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><br></p>', null, '2016-07-22 14:26:27', '1', '2016-07-22 14:40:08', '1', '0', null, null, null);
INSERT INTO `t_culture` VALUES ('4', '86', '51CTO下载-Lucene实战(第2版)PDF高清中文版.pdf', null, '', '51CTO下载-Lucene实战(第2版)PDF高清中文版.pdf', '2016-07-22 15:16:46', '1', null, null, '0', null, null, null);
INSERT INTO `t_culture` VALUES ('5', '86', 'Spring技术内幕 深入解析Spring架构与设计原理 第2版 .计文柯.扫描版.pdf', null, '', 'Spring技术内幕 深入解析Spring架构与设计原理 第2版 .计文柯.扫描版.pdf', '2016-07-22 15:18:46', '1', '2016-07-22 15:25:50', '1', '0', null, null, null);
INSERT INTO `t_culture` VALUES ('6', '86', '手机属性表.xlsx', null, '', '手机属性表.xlsx', '2016-07-22 15:27:13', '1', '2016-07-22 15:27:37', '1', '1', null, null, null);
INSERT INTO `t_culture` VALUES ('7', '86', '工作簿1.xlsx', null, '', '工作簿1.xlsx', '2016-07-22 15:27:42', '1', null, null, '0', null, null, null);

-- ----------------------------
-- Table structure for `t_home_project`
-- ----------------------------
DROP TABLE IF EXISTS `t_home_project`;
CREATE TABLE `t_home_project` (
  `id` int(11) NOT NULL DEFAULT '0',
  `project_name` varchar(1024) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `backup1` varchar(1024) DEFAULT NULL,
  `backup2` varchar(1024) DEFAULT NULL,
  `backup3` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_home_project
-- ----------------------------

-- ----------------------------
-- Table structure for `t_investor`
-- ----------------------------
DROP TABLE IF EXISTS `t_investor`;
CREATE TABLE `t_investor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT NULL,
  `title` varchar(1024) DEFAULT NULL COMMENT '标题',
  `path` varchar(1024) DEFAULT NULL COMMENT '上传文件路径',
  `content` text,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `backup1` varchar(1024) DEFAULT NULL,
  `backup2` varchar(1024) DEFAULT NULL,
  `backup3` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投资者关系';

-- ----------------------------
-- Records of t_investor
-- ----------------------------

-- ----------------------------
-- Table structure for `t_login_log`
-- ----------------------------
DROP TABLE IF EXISTS `t_login_log`;
CREATE TABLE `t_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ip` varchar(1024) DEFAULT NULL,
  `pc_name` varchar(1024) DEFAULT NULL,
  `address` varchar(1024) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `backup1` varchar(1024) DEFAULT NULL,
  `backup2` varchar(1024) DEFAULT NULL,
  `backup3` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_login_log
-- ----------------------------

-- ----------------------------
-- Table structure for `t_market`
-- ----------------------------
DROP TABLE IF EXISTS `t_market`;
CREATE TABLE `t_market` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT NULL,
  `name` varchar(1024) DEFAULT NULL COMMENT '门店名称',
  `introduce` text COMMENT '门店描述',
  `area` varchar(1024) DEFAULT NULL COMMENT '门店所属区域',
  `bus_picture_id` int(11) DEFAULT NULL COMMENT '门店公车图片ID',
  `bus_url` varchar(1024) DEFAULT NULL COMMENT '图片utl',
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `backup1` varchar(1024) DEFAULT NULL,
  `backup2` varchar(1024) DEFAULT NULL,
  `backup3` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='天虹门店';

-- ----------------------------
-- Records of t_market
-- ----------------------------
INSERT INTO `t_market` VALUES ('1', null, '厦门天虹', '厦门汇腾天虹于2003年9月12日开业，是天虹在全国开设的第9家分店，也是天虹在东南区的第一家分店。位于嘉禾路323号，北临仙岳路，南与湖滨北路交汇，商场核心商圈辐射江头、松柏等高档商圈。\n汇腾天虹“百货+超市”的经营模式将为厦门市民带来全新的一站式购物体验，经营品类主要包括：化妆品、鞋类、超市、服装、皮具箱包、钟表首饰、儿童用品、床上用品、体育用品、摄像器材等商品。\n商场一直致力于保持服务领先的优势，免费提供多项便民服务，同时提供钟表维修、机器修鞋、改缝裤脚等专业服务，送货服务范围更广、更便捷了', null, null, '1476257271844.png', '2016-08-25 21:16:50', '1', '2016-10-12 15:27:52', '1', '0', '0755-21548965', '南山登良路天虹总部', null);
INSERT INTO `t_market` VALUES ('3', null, '常兴天虹', '常兴天虹于2003年9月12日开业，是天虹在全国开设的第9家分店，也是天虹在东南区的第一家分店。位于嘉禾路323号，北临仙岳路，南与湖滨北路交汇，商场核心商圈辐射江头、松柏等高档商圈。\n汇腾天虹“百货+超市”的经营模式将为厦门市民带来全新的一站式购物体验，经营品类主要包括：化妆品、鞋类、超市、服装、皮具箱包、钟表首饰、儿童用品、床上用品、体育用品、摄像器材等商品。\n商场一直致力于保持服务领先的优势，免费提供多项便民服务，同时提供钟表维修、机器修鞋、改缝裤脚等专业服务，送货服务范围更广、更便捷了。', null, null, '1476257284914.png', '2016-08-26 20:49:36', '1', '2016-10-12 15:28:06', '1', '0', '', '', null);

-- ----------------------------
-- Table structure for `t_market_news`
-- ----------------------------
DROP TABLE IF EXISTS `t_market_news`;
CREATE TABLE `t_market_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `market_id` int(11) DEFAULT NULL,
  `title` varchar(1024) DEFAULT NULL COMMENT '标题',
  `type` tinyint(4) DEFAULT NULL COMMENT '1-新闻，2-活动',
  `content` text COMMENT '门店展示内容',
  `source` varchar(1024) DEFAULT NULL COMMENT '新闻来源',
  `path` varchar(1024) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `backup1` varchar(1024) DEFAULT NULL,
  `backup2` varchar(1024) DEFAULT NULL,
  `backup3` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_market_news
-- ----------------------------
INSERT INTO `t_market_news` VALUES ('1', '1', '兰芝“父亲节”特别优惠 欧珀莱美丽嘉年华', '1', '<p>兰芝“父亲节”特别优惠 欧珀莱美丽嘉年华厦门汇腾天虹于2003年9月12日开业，是天虹在全国开设的第9家分店，也是天虹在东南区的第一家分店。位于嘉禾路323号，北临仙岳路，南与湖滨北路交汇，商场核心商圈辐射江头、松柏等高档商圈。</p><p style=\"padding: 0px; margin: 0px; position: relative; font-size: 16px; color: rgb(89, 87, 87); line-height: 28px; font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">汇腾天虹“百货+超市”的经营模式将为厦门市民带来全新的一站式购物体验，经营品类主要包括：化妆品、鞋类、超市、服装、皮具箱包、钟表首饰、儿童用品、床上用品、体育用品、摄像器材等商品。</p>', null, '1476168658514.png', '2016-08-26 20:53:51', '1', '2016-10-11 14:50:58', '1', '0', null, null, null);
INSERT INTO `t_market_news` VALUES ('15', '1', '第一次门店活动厦门', '2', '<p>第一次门店活动厦门\n\n<span style=\"color: rgb(89, 87, 87); font-family: &quot; Microsoft Yahei&quot;, Arial, Simsun; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;\" data-fr-verified=\"true\">汇腾天虹“百货+超市”的经营模式将为厦门市民带来全新的一站式购物体验，经营品类主要包括：化妆品、鞋类、超市、服装、皮具箱包、钟表首饰、儿童用品、床上用品、体育用品、摄像器材等商品。</span>\n\n<br></p>', null, '1476167260132.png', '2016-08-26 22:10:21', '1', '2016-10-11 14:27:40', '1', '0', null, null, null);
INSERT INTO `t_market_news` VALUES ('16', '1', '第二', '1', '<p>fr兰芝“父亲节”特别优惠 欧珀莱美丽嘉年华厦门汇腾天虹于2003年9月12日开业，是天虹在全国开设的第9家分店，也是天虹在东南区的第一家分店。位于嘉禾路323号，北临仙岳路，南与湖滨北路交汇，商场核心商圈辐射江头、松柏等高档商圈。</p><p style=\"padding: 0px; margin: 0px; position: relative; font-size: 16px; color: rgb(89, 87, 87); line-height: 28px; font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">汇腾天虹“百货+超市”的经营模式将为厦门市民带来全新的一站式购物体验，经营品类主要包括：化妆品、鞋类、超市、服装、皮具箱包、钟表首饰、儿童用品、床上用品、体育用品、摄像器材等商品。</p>', null, '1472263397987.png', '2016-08-27 10:03:18', '1', '2016-08-27 10:03:34', '1', '0', null, null, null);
INSERT INTO `t_market_news` VALUES ('17', '1', '第三次', '1', '<p>123兰芝“父亲节”特别优惠 欧珀莱美丽嘉年华厦门汇腾天虹于2003年9月12日开业，是天虹在全国开设的第9家分店，也是天虹在东南区的第一家分店。位于嘉禾路323号，北临仙岳路，南与湖滨北路交汇，商场核心商圈辐射江头、松柏等高档商圈。</p><p style=\"padding: 0px; margin: 0px; position: relative; font-size: 16px; color: rgb(89, 87, 87); line-height: 28px; font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">汇腾天虹“百货+超市”的经营模式将为厦门市民带来全新的一站式购物体验，经营品类主要包括：化妆品、鞋类、超市、服装、皮具箱包、钟表首饰、儿童用品、床上用品、体育用品、摄像器材等商品。</p>', null, '1472263495119.png', '2016-08-27 10:04:55', '1', '2016-08-27 10:05:03', '1', '0', null, null, null);
INSERT INTO `t_market_news` VALUES ('18', '1', '常兴天虹一', '2', '<p>ABC兰芝“父亲节”特别优惠 欧珀莱美丽嘉年华厦门汇腾天虹于2003年9月12日开业，是天虹在全国开设的第9家分店，也是天虹在东南区的第一家分店。位于嘉禾路323号，北临仙岳路，南与湖滨北路交汇，商场核心商圈辐射江头、松柏等高档商圈。</p><p style=\"padding: 0px; margin: 0px; position: relative; font-size: 16px; color: rgb(89, 87, 87); line-height: 28px; font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">汇腾天虹“百货+超市”的经营模式将为厦门市民带来全新的一站式购物体验，经营品类主要包括：化妆品、鞋类、超市、服装、皮具箱包、钟表首饰、儿童用品、床上用品、体育用品、摄像器材等商品。</p>', null, '1472263519023.png', '2016-08-27 10:05:19', '1', '2016-08-27 10:05:36', '1', '0', null, null, null);
INSERT INTO `t_market_news` VALUES ('19', '1', '厦门测试测试1', '1', '<p>厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1厦门测试测试1<img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://192.168.163.114:8180/th-admin/download/png?fileName=1476156524668.png\" width=\"300\"><br></p>', null, '1476156560806.png', '2016-10-11 11:29:20', '1', '2016-10-11 11:29:27', '1', '0', null, null, null);
INSERT INTO `t_market_news` VALUES ('20', '3', '常兴测试测试1', '1', '<p>常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1常兴测试测试1<img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://192.168.163.114:8180/th-admin/download/png?fileName=1476156660107.png\" width=\"300\"><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://192.168.163.114:8180/th-admin/download/png?fileName=1476156670634.png\" width=\"300\"><br></p>', null, '1476156642839.png', '2016-10-11 11:30:42', '1', '2016-10-11 11:31:12', '1', '0', null, null, null);

-- ----------------------------
-- Table structure for `t_market_suggest`
-- ----------------------------
DROP TABLE IF EXISTS `t_market_suggest`;
CREATE TABLE `t_market_suggest` (
  `id` int(11) NOT NULL,
  `market_id` int(11) DEFAULT NULL COMMENT '门店ID',
  `market_name` varchar(255) DEFAULT NULL COMMENT '门店名称',
  `type` varchar(255) DEFAULT NULL COMMENT '建议类型',
  `user_name` varchar(1024) DEFAULT NULL COMMENT '用户名称',
  `com_name` varchar(1024) DEFAULT NULL COMMENT '公司名称',
  `phone` varchar(1024) DEFAULT NULL COMMENT '电话',
  `city` varchar(255) DEFAULT NULL COMMENT '城市',
  `email` varchar(1024) DEFAULT NULL COMMENT '邮件',
  `content` text COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `backup1` varchar(1024) DEFAULT NULL,
  `backup2` varchar(1024) DEFAULT NULL,
  `backup3` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='意见反馈';

-- ----------------------------
-- Records of t_market_suggest
-- ----------------------------

-- ----------------------------
-- Table structure for `t_menu`
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '菜单名',
  `link` varchar(1024) DEFAULT NULL,
  `url` varchar(1024) DEFAULT NULL COMMENT '菜单URL',
  `level` tinyint(4) DEFAULT NULL COMMENT '菜单等级',
  `parent_id` int(11) DEFAULT NULL COMMENT '父菜单',
  `sort` tinyint(4) DEFAULT NULL COMMENT '排序',
  `is_show` tinyint(4) DEFAULT NULL COMMENT '前台是否显示',
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `backup1` varchar(1024) DEFAULT NULL,
  `backup2` varchar(1024) DEFAULT NULL,
  `backup3` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('1', '关于天虹', null, null, '1', '0', '1', '1', '2016-07-13 16:03:05', '1', null, null, '1', null, null, null);
INSERT INTO `t_menu` VALUES ('2', '企业文化', null, null, '1', '0', '3', '1', '2016-07-13 16:03:40', '1', null, null, '1', null, null, null);
INSERT INTO `t_menu` VALUES ('3', '集团业务', null, null, '1', '0', '2', '1', '2016-07-13 16:03:05', '1', null, null, '1', null, null, null);
INSERT INTO `t_menu` VALUES ('4', '新闻中心', null, null, '1', '0', '4', '1', '2016-07-13 16:03:05', '1', null, null, '1', null, null, null);
INSERT INTO `t_menu` VALUES ('5', '人力资源', null, null, '1', '0', '5', '1', '2016-07-13 16:03:05', '1', null, null, '1', null, null, null);
INSERT INTO `t_menu` VALUES ('6', '招商采购', null, null, '1', '0', '6', '1', '2016-07-13 16:03:05', '1', null, null, '1', null, null, null);
INSERT INTO `t_menu` VALUES ('7', '投资者关系', null, null, '1', '0', '7', '1', '2016-07-13 16:03:05', '1', null, null, '1', null, null, null);
INSERT INTO `t_menu` VALUES ('8', '公司概况', null, '/menu/news/detail', '2', '1', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('9', '多元业务', null, null, '2', '1', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('10', '发展历程', null, null, '2', '1', '3', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('11', '发展战略', null, null, '2', '1', '4', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('12', '荣誉奖项', null, null, '2', '1', '5', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('13', '天虹置业', null, null, '1', '0', '8', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('14', '微喔便利店', null, null, '3', '50', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('15', '天虹虹领巾', null, null, '3', '50', '3', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('16', '天虹小额贷', null, null, '3', '51', '4', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('17', '天虹商场', null, null, '3', '50', '5', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('18', '君尚百货', null, null, '3', '50', '6', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('19', '天虹商学院', null, null, '3', '9', '7', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('20', '购物中心', null, null, '3', '50', '8', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('21', '企业文化', null, null, '2', '2', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('22', '宣传片', null, null, '2', '2', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('23', '电子期刊', null, null, '2', '2', '3', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('24', '视频中心', null, null, '2', '2', '4', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('25', '社会责任', null, null, '2', '2', '5', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('26', '企业使命', null, null, '3', '21', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('27', '企业愿景', null, null, '3', '21', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('28', '企业价值观', null, null, '3', '21', '3', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('29', '社会公益', null, null, '3', '25', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('30', '员工活动', null, null, '3', '25', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('31', '环境保护', null, null, '3', '25', '3', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('32', '公司新闻', null, '/menu/news/list?menuId=32', '2', '4', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('33', '媒体视角', null, null, '2', '4', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('34', '天虹商学院', null, null, '2', '5', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('35', '人在天虹', null, null, '2', '5', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('36', '社会招聘', null, null, '2', '5', '3', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('37', '校园招聘', null, null, '2', '5', '4', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('38', '商学院简介', null, null, '3', '34', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('39', '培训中心', null, null, '3', '34', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('40', '创新中心', null, null, '3', '34', '3', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('41', '同济大学MBA项目', null, null, '3', '34', '4', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('42', '场地租赁', null, null, '3', '34', '5', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('43', '用户管理', null, '/menu/user', '1', '0', '10', '0', '2016-07-14 22:20:02', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('44', '权限管理', null, '', '1', '0', '12', '0', '2016-07-19 14:57:01', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('45', '角色管理', null, '/authmanager/role', '2', '44', '1', '0', '2016-07-19 14:58:09', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('46', '自有品牌', null, null, '2', '1', '6', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('47', '菲尔芙', null, null, '3', '46', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('48', '天优', null, null, '3', '46', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('49', '奥百思', null, null, '3', '46', '3', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('50', '商业零售', null, null, '3', '9', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('51', '投资与金融', null, null, '3', '9', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('52', '地产开发与经营', null, null, '3', '9', '3', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('53', '人才理念', null, null, '3', '35', '1', '1', '2016-07-20 15:09:25', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('54', '职位搜索', null, null, '3', '36', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('55', '在招职位', null, null, '3', '36', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('56', '常见问题', null, null, '3', '36', '3', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('57', '登陆注册', null, null, '3', '36', '4', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('58', '宣讲安排', null, null, '3', '37', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('59', '最新公告', null, null, '3', '37', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('60', '职位分类', null, null, '3', '37', '3', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('61', '在线交流', null, null, '3', '37', '4', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('62', '登陆注册', null, null, '3', '37', '5', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('63', '招商中心', null, null, '2', '6', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('64', '成果展示', null, null, '2', '6', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('65', '品牌自荐', null, null, '2', '6', '3', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('66', '职能简介', null, null, '3', '63', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('67', '招商信息', null, null, '3', '63', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('68', '招商流程', null, null, '3', '63', '3', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('69', '招商动态', null, null, '3', '63', '4', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('70', '招商热线', null, null, '3', '63', '5', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('71', '品牌展示', null, null, '3', '64', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('72', '项目展示', null, null, '3', '64', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('73', '界面登陆', null, null, '3', '65', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('74', '自荐表', null, null, '3', '65', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('75', '展示图', null, null, '2', '7', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('76', '公司基本资料', null, null, '2', '7', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('77', '公司治理', null, null, '2', '7', '3', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('78', '定期报告', null, null, '2', '7', '4', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('79', '临时公告', null, null, '2', '7', '5', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('80', '股东回报', null, null, '2', '7', '6', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('81', '宣传与保护', null, null, '2', '7', '7', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('82', '互动交流', null, null, '2', '7', '8', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('83', '公司治理架构图', null, null, '3', '77', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('84', '公司高管', null, null, '3', '77', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('85', '公司章程', null, null, '3', '77', '3', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('86', '公司制度', null, '/menu/file/list?menuId=86', '3', '77', '4', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('87', '外链', null, null, '3', '78', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('88', '外链', null, null, '3', '79', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('89', '利润分配', null, null, '3', '80', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('90', '分红动态', null, null, '3', '80', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('91', '热点关注', null, null, '3', '81', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('92', '法律法规', null, null, '3', '81', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('93', '公益教育', null, null, '3', '81', '3', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('94', '联系方式', null, null, '3', '82', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('95', '投资者交流', null, null, '3', '82', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('96', '商业零售', null, null, '2', '3', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('97', '投资与金融', null, null, '2', '3', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('98', '地产开发与投资', null, null, '2', '3', '3', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('99', '天虹商场', null, null, '3', '96', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('100', '君尚百货', null, null, '3', '96', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('101', '购物中心', null, null, '3', '96', '3', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('102', '微喔便利店', null, null, '3', '96', '4', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('103', '天虹虹领巾', null, null, '3', '96', '5', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('104', '天虹小额贷', null, null, '3', '97', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('105', '天虹置业', null, null, '3', '98', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('106', '首页', '/home/index', '/menu/news/detail', '2', '13', '1', '1', '2016-08-16 09:48:15', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('107', '案例展示', '/home/case/index', null, '2', '13', '2', '1', '2016-08-16 09:48:15', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('108', '在建项目', '/home/case/index', null, '2', '13', '3', '1', '2016-08-16 09:48:15', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('109', '项目合作', '/home/item/index', null, '2', '13', '4', '1', '2016-08-16 09:48:15', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('110', '联系我们', '/home/contact/index', null, '2', '13', '5', '1', '2016-08-16 09:48:15', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('111', '菜单管理', null, '/authmanager/menu', '2', '44', '2', '0', '2016-08-16 10:30:31', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('114', '南昌·九洲天虹广场', '', '', '3', '107', '1', '1', '2016-08-16 11:57:26', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('115', '苏州·天虹品上中心', '', '', '3', '107', '3', '1', '2016-08-16 12:00:56', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('116', '吉安·天虹购物中心', '', '', '3', '107', '2', '1', '2016-08-16 12:12:29', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('117', '项目介绍', '/content/get', '/menu/news/detail', '4', '114', '1', '1', '2016-08-17 11:00:45', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('118', '项目图片', '/picture/get', '/menu/news/detail', '4', '114', '2', '1', '2016-08-17 11:28:00', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('119', '区位交通', '/content/get', '/menu/news/detail', '4', '114', '3', '1', '2016-08-17 11:31:52', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('120', '项目介绍-吉安', '/content/get', '/menu/news/detail', '4', '116', '1', '1', '2016-08-17 18:33:15', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('121', '项目图片-吉安', '/picture/get', '/menu/news/detail', '4', '116', '2', '1', '2016-08-17 18:33:38', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('122', '区位交通-吉安', '/content/get', '/menu/news/detail', '4', '116', '3', '1', '2016-08-17 18:34:03', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('123', '项目简介-连发', '/content/get', '/menu/news/detail', '4', '125', '1', '1', '2016-08-17 18:50:01', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('124', '项目图片-连发', '/picture/get', '/menu/news/detail', '4', '125', '2', '1', '2016-08-17 18:50:24', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('125', '连发广场', '', '', '3', '108', '3', '1', '2016-08-17 19:04:48', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('126', '商业配套', '/content/get', '/menu/news/detail', '4', '125', '3', '1', '2016-08-17 19:12:13', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('127', '南昌·九洲天虹广场', '/content/item/get', '/menu/news/detail', '3', '109', '1', '1', '2016-08-17 19:34:55', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('128', '苏州·天虹品上中心', '/content/item/get', '/menu/news/detail', '3', '109', '2', '1', '2016-08-17 19:35:13', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('129', '厦门会展北商务综合体', '/content/item/get', '/menu/news/detail', '3', '109', '3', '1', '2016-08-17 19:37:32', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('130', '联系方式', '/content/contact/index', '/menu/news/detail', '3', '110', '1', '1', '2016-08-18 16:44:22', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('131', '在线留言', '/content/contact/message', '/contact/list', '3', '110', '2', '1', '2016-08-18 16:45:04', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('132', '自有品牌', '/brand/list?menuId=132', '', '1', '0', '9', '1', '2016-08-19 11:52:20', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('133', '菲尔芙', '', '/menu/news/detail', '2', '132', '1', '1', '2016-08-19 14:31:06', '1', null, null, '0', 'FIFO', null, null);
INSERT INTO `t_menu` VALUES ('134', '天   优', '', '/menu/news/detail', '2', '132', '3', '1', '2016-08-19 14:31:50', '1', null, null, '0', 'teemful', null, null);
INSERT INTO `t_menu` VALUES ('135', '奥百思', '', '/menu/news/detail', '2', '132', '4', '1', '2016-08-19 14:32:06', '1', null, null, '0', 'ALBST', null, null);
INSERT INTO `t_menu` VALUES ('136', '天口味', '', '/menu/news/detail', '2', '132', '5', '1', '2016-08-19 14:32:29', '1', null, null, '0', 'TOPWELL', null, null);
INSERT INTO `t_menu` VALUES ('137', '首图', '', '/menu/news/detail', '2', '132', '2', '0', '2016-08-19 14:43:41', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('138', '虹领巾', '/app/list?menuId=138', '', '1', '0', '11', '1', '2016-08-19 15:51:46', '1', '2016-08-19 15:52:07', '1', '1', '', null, null);
INSERT INTO `t_menu` VALUES ('139', '首页', '', '/menu/news/detail', '2', '138', '1', '1', '2016-08-19 15:52:23', '1', null, null, '1', '', null, null);
INSERT INTO `t_menu` VALUES ('140', '关于我们', '', '/menu/news/detail', '3', '138', '2', '1', '2016-08-19 15:52:33', '1', null, null, '1', '', null, null);
INSERT INTO `t_menu` VALUES ('141', 'APP下载专区', '', '/menu/news/detail', '4', '138', '3', '1', '2016-08-19 15:53:17', '1', null, null, '1', '', null, null);
INSERT INTO `t_menu` VALUES ('142', '商务合作', '', '/menu/news/detail', '5', '138', '4', '1', '2016-08-19 15:53:29', '1', null, null, '1', '', null, null);
INSERT INTO `t_menu` VALUES ('143', '联系我们', '', '/menu/news/detail', '6', '138', '5', '1', '2016-08-19 15:53:39', '1', null, null, '1', '', null, null);
INSERT INTO `t_menu` VALUES ('149', '门店管理', '', '', '1', '0', '13', null, '2016-08-25 20:38:58', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('150', '门店介绍', '', '', '2', '149', '1', null, '2016-08-25 20:39:17', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('151', '品质管理', '', '', '2', '149', '2', null, '2016-08-25 20:39:25', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('152', '会员专区', '', '', '2', '149', '3', null, '2016-08-25 20:39:39', '1', null, null, '1', '', null, null);
INSERT INTO `t_menu` VALUES ('153', '门店列表', '', '/market/jsp', '2', '149', '4', null, '2016-08-25 20:39:53', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('154', '门店新闻', '', '/marketnews/news', '3', '150', '1', null, '2016-08-25 21:23:37', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('155', '门店活动', '', '/marketnews/activity', '3', '150', '2', null, '2016-08-25 21:23:45', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('156', '品质管理介绍', '', '/menu/news/detail', '3', '151', '1', null, '2016-08-25 21:24:40', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('157', '月度检验报告', '', '', '3', '151', '2', null, '2016-08-25 21:24:50', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('158', '会员入会', '', '', '3', '152', '1', null, '2016-08-25 21:25:25', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('159', '会员升降级制度', '', '', '3', '152', '2', null, '2016-08-25 21:25:33', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('160', 'VIP卡积分使用有效期', '', '', '3', '152', '3', null, '2016-08-25 21:25:42', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('161', '会员权益', '', '', '3', '152', '4', null, '2016-08-25 21:25:50', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('162', '天虹O2OStore', '/store/index?menuId=162', '', '1', '0', '14', '1', '2016-08-31 17:24:00', '1', '2016-08-31 20:42:50', '1', '0', '', null, null);
INSERT INTO `t_menu` VALUES ('163', '首页', '/store/index', '/store/index', '2', '162', '1', '1', '2016-08-31 17:24:15', '1', '2016-08-31 20:43:14', '1', '0', '', null, null);
INSERT INTO `t_menu` VALUES ('164', '商品', '/store/product/index', '/storeproduct/storeproduct-list', '2', '162', '2', '1', '2016-08-31 17:25:16', '1', '2016-08-31 20:43:19', '1', '0', '', null, null);
INSERT INTO `t_menu` VALUES ('165', '最新活动', '/store/newactivity/index', '/newactivity/newactivity-info', '2', '162', '3', '1', '2016-08-31 17:25:54', '1', '2016-08-31 20:43:27', '1', '0', '', null, null);
INSERT INTO `t_menu` VALUES ('166', '新品上市', '/store/newproduct/index', '/newproduct/newproduct-list', '2', '162', '4', '1', '2016-08-31 17:26:02', '1', '2016-08-31 20:43:24', '1', '0', '', null, null);
INSERT INTO `t_menu` VALUES ('167', '预购专区', '/store/prebuy/index', '/prebuy/prebuy-list', '2', '162', '5', '1', '2016-08-31 17:26:11', '1', '2016-08-31 20:44:19', '1', '0', '', null, null);
INSERT INTO `t_menu` VALUES ('168', '便利服务', '/store/servicejoinabout/index', '/newactivity/newactivity-info', '2', '162', '6', '1', '2016-08-31 17:26:21', '1', '2016-08-31 20:44:15', '1', '0', '', null, null);
INSERT INTO `t_menu` VALUES ('169', '加盟我们', '/store/servicejoinabout/index', '/newactivity/newactivity-info', '2', '162', '7', '1', '2016-08-31 17:26:31', '1', '2016-08-31 20:44:24', '1', '0', '', null, null);
INSERT INTO `t_menu` VALUES ('170', '关于我们', '/store/servicejoinabout/index', '/newactivity/newactivity-info', '2', '162', '8', '1', '2016-08-31 17:26:40', '1', '2016-08-31 20:44:27', '1', '0', '', null, null);
INSERT INTO `t_menu` VALUES ('171', '分类', '', '/category/category-list', '2', '162', '9', '0', '2016-08-31 20:45:47', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('172', 'WEB前台', '', '', '1', '0', '16', '1', '2016-09-19 20:14:38', '1', null, null, '0', 'web', null, null);
INSERT INTO `t_menu` VALUES ('173', '首页', '/web/index', '/menu/news/detail', '2', '172', '1', '1', '2016-09-19 20:21:32', '1', null, null, '0', 'index', null, null);
INSERT INTO `t_menu` VALUES ('174', '关于天虹', '/web/about/index', '', '2', '172', '2', '1', '2016-09-19 20:22:06', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('175', '多元业务', '/web/business/index', '', '2', '172', '3', '1', '2016-09-19 20:22:25', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('176', '企业文化', '/web/culture/index', '', '2', '172', '4', '1', '2016-09-19 20:22:35', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('177', '人力资源', '/web/staff/index', '', '2', '172', '5', '1', '2016-09-19 20:22:44', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('178', '招商采购', '/web/investment/index', '', '2', '172', '6', '1', '2016-09-19 20:22:53', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('179', '新闻中心', '/web/newscenter/index', '/web/newscenter/index', '2', '172', '7', '1', '2016-09-19 20:23:07', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('180', '投资者关系', '/web/investor/index', '', '2', '172', '8', '1', '2016-09-19 20:23:14', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('181', '公司概括', '/web/about/intro', '/menu/news/detail', '3', '174', '1', '1', '2016-09-19 20:23:36', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('182', '发展历程', '/web/about/history', '/web/about/history/index', '3', '174', '2', '1', '2016-09-19 20:23:50', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('183', '发展战略', '/web/about/strategy', '', '3', '174', '3', '1', '2016-09-19 20:24:01', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('184', '荣誉奖项', '/web/about/awards', '/menu/news/detail', '3', '174', '4', '1', '2016-09-19 20:24:12', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('185', '自有品牌', '/brand/list', '', '3', '174', '5', '1', '2016-09-19 20:24:30', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('186', '天虹小额贷', 'https://f.tianhong.cn/', '/menu/news/detail', '3', '175', '1', '1', '2016-09-19 20:25:40', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('187', '天虹商场', '/market/index', '/menu/news/detail', '3', '175', '2', '1', '2016-09-19 20:25:47', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('188', '君尚百货', 'http://www.dreams-on.com/', '/menu/news/detail', '3', '175', '3', '1', '2016-09-19 20:25:57', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('189', '购物中心', '/shopping/index', '/menu/news/detail', '3', '175', '4', '1', '2016-09-19 20:26:08', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('190', '微喔便利店', '/store/index', '/menu/news/detail', '3', '175', '5', '1', '2016-09-19 20:30:09', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('191', '天虹红领巾', '/app/list', '/menu/news/detail', '3', '175', '6', '1', '2016-09-19 20:30:14', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('192', '天虹置业', '/home/index', '/menu/news/detail', '3', '175', '7', '1', '2016-09-19 20:30:20', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('193', '企业文化', '/web/culture/index2', '/menu/news/detail', '3', '176', '1', '1', '2016-09-19 20:30:38', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('194', '宣传片', '/web/culture/trailer', '/web/culture/trailer/index', '3', '176', '2', '1', '2016-09-19 20:30:44', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('195', '电子期刊', '/web/culture/ejournals', '/pdf/index', '3', '176', '3', '1', '2016-09-19 20:30:50', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('196', '视频中心', '/web/culture/video', '/web/culture/video/index', '3', '176', '4', '1', '2016-09-19 20:30:56', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('197', '社会责任', '/web/culture/public', '/web/culture/public/index', '3', '176', '5', '1', '2016-09-19 20:31:02', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('198', '招商中心', '/web/investment/business', '/web/investment/center', '3', '178', '1', '1', '2016-09-19 20:31:22', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('199', '展示成果', '/web/investment/show', '/web/investment/index', '3', '178', '2', '1', '2016-09-19 20:31:28', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('200', '实时行情', '/web/investor/quotation', '', '3', '180', '1', '1', '2016-09-19 20:34:06', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('201', '基本资料', '/web/investor/basedata', '/menu/content/contenttable', '3', '180', '2', '1', '2016-09-19 20:34:12', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('202', '公司治理', '/web/companymanager/index', '/web/investor/companyManage', '3', '180', '3', '1', '2016-09-19 20:34:19', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('203', '定期报告', 'http://www.cninfo.com.cn/cninfo-new/index', '', '3', '180', '4', '1', '2016-09-19 20:34:24', '1', '2016-09-19 20:44:51', '1', '0', '', null, null);
INSERT INTO `t_menu` VALUES ('204', '临时公告', 'http://www.cninfo.com.cn/cninfo-new/index', '', '3', '180', '5', '1', '2016-09-19 20:34:30', '1', '2016-09-19 20:45:40', '1', '0', '', null, null);
INSERT INTO `t_menu` VALUES ('205', '股东回报', '/web/companymanager/profit', '/web/investor/profit', '3', '180', '6', '1', '2016-09-19 20:34:36', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('206', '宣传与保护', '/web/companymanager/protect', '/web/investor/protect', '3', '180', '7', '1', '2016-09-19 20:34:48', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('207', '互动交流', '/web/investor/communication', '/contact/list', '3', '180', '8', '1', '2016-09-19 20:34:54', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('208', '天虹商学院', '/web/staff/school', '', '3', '177', '1', '1', '2016-10-08 14:31:59', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('209', '人在天虹', '/web/staff/talent', '', '3', '177', '2', '1', '2016-10-08 14:32:21', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('210', '社会招聘', 'http://szrainbowhr.hirede.com/CareerSite/Index', '', '3', '177', '3', '1', '2016-10-08 14:32:30', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('211', '校园招聘', 'http://szrainbowhr.hirede.com/CareerSite/CampusRecruit', '', '3', '177', '4', '1', '2016-10-08 14:32:37', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('212', '公益活动', '', '/web/culture/commonweal/index', '4', '197', '1', '0', '2016-10-10 21:21:08', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('213', '员工活动', '', '/web/culture/public/index', '4', '197', '2', '0', '2016-10-10 21:21:25', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('214', '社会责任报告', '', '/web/culture/public/index', '4', '197', '3', '0', '2016-10-10 22:47:13', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('215', '职能简介', '', '/menu/news/detail', '4', '198', '1', '0', '2016-10-11 09:39:03', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('216', '招商信息', '', '/web/investment/investmentinfo', '4', '198', '2', '0', '2016-10-11 09:39:16', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('217', '招商动态', '', '/web/culture/commonweal/index', '4', '198', '3', '0', '2016-10-11 09:39:25', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('218', '招商热线', '', '/web/investment/investmenthotline/index', '4', '198', '4', '0', '2016-10-11 09:39:39', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('219', '供应商自荐', '', '/web/investment/investmentcover/index', '4', '198', '5', '0', '2016-10-11 09:39:57', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('220', '商学院简介', '', '/menu/news/detail', '4', '208', '1', '1', '2016-10-16 19:20:59', '1', null, null, '0', 'BUSINESS SCHOOL PROFILE', null, null);
INSERT INTO `t_menu` VALUES ('221', '培训中心', '', '/menu/news/detail', '4', '208', '2', '1', '2016-10-16 19:21:24', '1', null, null, '0', 'TRAINING CENTER', null, null);
INSERT INTO `t_menu` VALUES ('222', '同济大学MBA项目', '', '/menu/news/detail', '4', '208', '4', '1', '2016-10-16 19:21:58', '1', null, null, '0', 'MBA PROJECT', null, null);
INSERT INTO `t_menu` VALUES ('223', '场地租赁', '', '/menu/news/detail', '4', '208', '5', '1', '2016-10-16 19:22:27', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('224', '创新中心', '', '/menu/content/contenttext', '4', '208', '3', '1', '2016-10-16 19:43:01', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('225', 'E-learnning系统', '', '/menu/content/contenttext', '5', '224', '1', '1', '2016-10-16 19:45:41', '1', '2016-10-16 19:45:56', '1', '0', '', null, null);
INSERT INTO `t_menu` VALUES ('226', 'KMS系统', '', '/menu/content/contenttext', '5', '224', '2', '1', '2016-10-16 19:46:13', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('227', '创新大赛', '', '/menu/content/contenttext', '5', '224', '3', '1', '2016-10-16 19:47:06', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('228', '人才理念', '', '', '4', '209', '1', '1', '2016-10-16 19:48:11', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('229', '培养晋升', '', '', '4', '209', '2', '1', '2016-10-16 19:48:19', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('230', '薪酬福利', '', '', '4', '209', '3', '1', '2016-10-16 19:48:25', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('231', '培训中心1', '', '/menu/news/detail', '5', '228', '1', '1', '2016-10-16 19:48:37', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('232', '培训中心2', '', '/menu/news/detail', '5', '228', '2', '1', '2016-10-16 19:48:47', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('233', '知识管理体系', '', '/menu/content/contenttext', '5', '229', '1', '1', '2016-10-16 19:49:19', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('234', '优才计划', '', '/menu/content/contenttext', '5', '229', '2', '1', '2016-10-16 19:50:18', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('235', '新秀动力营', '', '/menu/content/contenttext', '5', '229', '3', '1', '2016-10-16 19:50:42', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('236', '天虹商学院', '', '/menu/content/contenttext', '5', '229', '4', '1', '2016-10-16 19:51:06', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('237', '完善的福利制度 .01', '', '/menu/content/contenttext', '5', '230', '1', '1', '2016-10-16 19:51:31', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('238', '有竞争的薪酬 .02', '', '/menu/content/contenttext', '5', '230', '2', '1', '2016-10-16 19:51:41', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('239', '其他福利 .03', '', '/menu/content/contenttext', '5', '230', '3', '1', '2016-10-16 19:51:52', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('240', '04. 完善的福利制度', '', '/menu/content/contenttext', '5', '230', '4', '1', '2016-10-16 19:52:04', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('241', '05. 有竞争的薪酬', '', '/menu/content/contenttext', '5', '230', '5', '1', '2016-10-16 19:52:14', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('242', '06. 其他福利', '', '/menu/content/contenttext', '5', '230', '6', '1', '2016-10-16 19:52:26', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('243', '场地介绍', '', '/menu/content/contenttext', '5', '223', '1', '1', '2016-10-16 19:59:25', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('244', '租赁方式', '', '/menu/content/contenttext', '5', '223', '2', '1', '2016-10-16 19:59:38', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('245', '图片', '', '/menu/news/detail', '4', '207', '1', '0', '2016-10-18 19:45:13', '1', '2016-10-18 19:45:23', '1', '0', '', null, null);
INSERT INTO `t_menu` VALUES ('246', '联系方式', '', '/web/investor/contact', '4', '207', '2', '0', '2016-10-18 19:45:44', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('247', '组织架构', '', '/menu/news/detail', '4', '202', '1', '1', '2016-10-18 21:16:24', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('248', '公司制度', '', '/web/companymanager/system', '4', '202', '3', '1', '2016-10-18 21:18:45', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('249', '利润分配', '', '/web/partnerbonus/profit', '4', '202', '3', '1', '2016-10-18 21:19:06', '1', '2016-10-18 21:20:05', '1', '1', '', null, null);
INSERT INTO `t_menu` VALUES ('250', '分红动态', '', '/web/culture/commonweal/index', '4', '202', '4', '1', '2016-10-18 21:19:45', '1', '2016-10-18 21:20:01', '1', '1', '', null, null);
INSERT INTO `t_menu` VALUES ('251', '分红动态', '', '/web/culture/commonweal/index', '4', '205', '2', '1', '2016-10-18 21:20:30', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('252', '利润分配', '', '/web/partnerbonus/profit', '4', '205', '1', '1', '2016-10-18 21:20:41', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('253', '热点关注', '', '/web/culture/commonweal/index', '4', '206', '1', '1', '2016-10-18 21:21:11', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('254', '法律法规', '', '/web/culture/commonweal/index', '4', '206', '2', '1', '2016-10-18 21:21:27', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('255', '公益教育', '', '/web/culture/commonweal/index', '4', '206', '3', '1', '2016-10-18 21:21:46', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('256', '公司高管', '', '/web/companymanager/seniorexecutive', '4', '202', '2', '1', '2016-10-25 09:34:00', '1', '2016-10-25 09:38:01', '1', '0', '', null, null);
INSERT INTO `t_menu` VALUES ('257', '董事', '', '/web/companymanager/seniorexecutive', '5', '256', '1', '1', '2016-10-25 15:10:34', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('258', '监事', '', '/web/companymanager/seniorexecutive', '5', '256', '2', '1', '2016-10-25 15:10:44', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('259', '购物中心', '', '', '1', '0', '15', '1', '2016-10-26 11:44:18', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('260', '首页', '', '', '2', '259', '1', '1', '2016-10-26 11:44:34', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('261', '资讯中心', '', '', '2', '259', '2', '1', '2016-10-26 11:44:49', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('262', '娱乐风尚', '', '', '2', '259', '3', '1', '2016-10-26 11:45:02', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('263', '服务中心', '', '', '2', '259', '4', '1', '2016-10-26 11:45:10', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('264', '品牌招商', '', '/menu/news/detail', '2', '259', '5', '1', '2016-10-26 11:45:25', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('265', '关于我们', '', '', '2', '259', '6', '1', '2016-10-26 11:45:32', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('266', '促销信息', '', '/shopping/infocenter/index', '3', '261', '1', '1', '2016-10-26 11:45:51', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('267', '商户优惠', '', '/shopping/infocenter/index', '3', '261', '2', '1', '2016-10-26 11:46:02', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('268', '新闻资讯', '', '/shopping/infocenter/index', '3', '261', '3', '1', '2016-10-26 11:46:10', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('269', '特色美食', '', '', '3', '262', '1', '1', '2016-10-26 11:46:35', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('270', '休闲娱乐', '', '', '3', '262', '2', '1', '2016-10-26 11:46:46', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('271', '潮流风尚', '', '', '3', '262', '3', '1', '2016-10-26 11:46:57', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('272', '客服平台', '', '', '3', '263', '1', '1', '2016-10-26 11:47:17', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('273', '常见问题', '', '/web/culture/commonweal/index', '3', '263', '2', '1', '2016-10-26 11:47:28', '1', '2016-10-26 12:08:31', '1', '0', '', null, null);
INSERT INTO `t_menu` VALUES ('274', '泊车服务', '', '/menu/news/detail', '3', '263', '3', '1', '2016-10-26 11:47:37', '1', '2016-10-26 12:08:16', '1', '0', '', null, null);
INSERT INTO `t_menu` VALUES ('275', '公司简介', '', '/menu/news/detail', '3', '265', '1', '1', '2016-10-26 11:48:26', '1', '2016-10-26 12:08:58', '1', '0', '', null, null);
INSERT INTO `t_menu` VALUES ('276', '诚聘英才', '', '', '3', '265', '2', '1', '2016-10-26 11:48:38', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('277', '联系我们', '', '/web/investor/contact', '3', '265', '3', '1', '2016-10-26 11:48:46', '1', '2016-10-26 12:11:21', '1', '0', '', null, null);
INSERT INTO `t_menu` VALUES ('278', '轮换图', '', '/menu/news/detail', '3', '260', '1', '1', '2016-10-26 11:54:01', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('279', '普通图', '', '/menu/news/detail', '3', '260', '2', '1', '2016-10-26 11:54:16', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('280', '轮换图', '', '/menu/news/detail', '4', '269', '1', '1', '2016-10-26 12:01:52', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('281', '活动资讯', '', '/shopping/infocenter/index', '4', '269', '2', '1', '2016-10-26 12:02:04', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('282', '分页广告图', '', '/menu/news/detail', '4', '269', '3', '1', '2016-10-26 12:02:29', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('283', '轮换图', '', '/menu/news/detail', '4', '270', '1', '1', '2016-10-26 12:03:11', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('284', '活动资讯', '', '/shopping/infocenter/index', '4', '270', '2', '1', '2016-10-26 12:03:26', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('285', '分页广告图', '', '/menu/news/detail', '4', '270', '3', '1', '2016-10-26 12:03:37', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('286', '轮换图', '', '/menu/news/detail', '4', '271', '1', '1', '2016-10-26 12:03:59', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('287', '活动资讯', '', '/shopping/infocenter/index', '4', '271', '2', '1', '2016-10-26 12:04:11', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('288', '分页广告图', '', '/menu/news/detail', '4', '271', '3', '1', '2016-10-26 12:04:20', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('289', '深圳福田天虹购物中心线上客服服务', '', '/web/culture/commonweal/index', '4', '272', '1', '1', '2016-10-26 12:06:10', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('290', '深圳宝安天虹购物中心场内服务', '', '/web/culture/commonweal/index', '4', '272', '2', '1', '2016-10-26 12:06:24', '1', '2016-10-26 12:06:55', '1', '0', '', null, null);
INSERT INTO `t_menu` VALUES ('291', '深圳南山天虹购物中心线上客服服务', '', '/web/culture/commonweal/index', '4', '272', '3', '1', '2016-10-26 12:06:43', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('292', '常见问题', '', '/web/culture/commonweal/index', '4', '273', '1', '1', '2016-10-26 12:07:33', '1', '2016-10-26 12:08:26', '1', '1', '', null, null);
INSERT INTO `t_menu` VALUES ('293', '联系方式', '', '/shopping/aboutus/index', '4', '277', '2', '1', '2016-10-26 14:38:47', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('294', '图片', '', '/menu/news/detail', '4', '277', '1', '1', '2016-10-26 14:39:00', '1', null, null, '0', '', null, null);

-- ----------------------------
-- Table structure for `t_news_center`
-- ----------------------------
DROP TABLE IF EXISTS `t_news_center`;
CREATE TABLE `t_news_center` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(1024) DEFAULT NULL,
  `source` varchar(1024) DEFAULT NULL,
  `news_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `picture` varchar(1024) DEFAULT NULL,
  `url` varchar(1024) DEFAULT NULL,
  `content` text,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `backup1` varchar(1024) DEFAULT NULL,
  `backup2` varchar(1024) DEFAULT NULL,
  `backup3` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='新闻中心';

-- ----------------------------
-- Records of t_news_center
-- ----------------------------
INSERT INTO `t_news_center` VALUES ('1', '179', '公司新闻', '天虹荣获2015年第五届“中国食品健康七星奖-品质卓越奖”', null, '2016-08-12 00:00:00', '1474449920576.png', null, '<p>\n\n<span style=\"color: rgb(102, 102, 102); font-family: &quot; Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\" data-fr-verified=\"true\">4月12日，由艺康集团和第一财经联合主办、中国食品科学技术学会提供技术支持，中国连锁经营协会担任行业合作伙伴的第五届“中国食品健康七星奖”在北京揭晓，本届七星奖共评选出29家标杆企业，分享了“...</span>\n\n<br></p>', '2016-09-21 15:24:23', '1', '2016-09-21 17:42:11', '1', '0', null, null, null);
INSERT INTO `t_news_center` VALUES ('2', '179', '新闻头条', '新年加马力，横岗天虹春节给力钜献！', null, '2016-09-21 00:00:00', '1474450078723.png', null, '<p>\n\n<span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot; Lucida Console&quot;, monospace; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\" data-fr-verified=\"true\">新年加马力！横岗天虹1月23日至30日百货秋冬新品1元起换3.5倍，部分换3倍/2.5倍/2倍！天神马都是好礼...</span>\n\n<br></p>', '2016-09-21 15:27:18', '1', '2016-09-21 17:27:59', '1', '0', null, null, null);
INSERT INTO `t_news_center` VALUES ('3', '179', '新闻头条', '中国食品健康七星奖-', null, '2016-09-21 00:00:00', '1477461685737.png', null, '<p>\n\n<span style=\"color: rgb(0, 0, 0); font-family: &quot; Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\" data-fr-verified=\"true\">&nbsp;&nbsp;&nbsp;在食品安全的道路上，天虹制定了实施“打造商品质量领先”的发展战略，确立商品质量管理至高的战略定位，为商品质量管理文化的建设、商品质量管理相关要求的实施奠定坚实基础。把食品安全贯穿到各相关部门、岗位的工作中，严格执行《食品安全法》等法规和标准，不断总结、改善食品安全工作，不断探索和完善食品安全管理体系，不断创新和超越自我，引导顾客健康消费</span>\n\n<br></p>', '2016-09-21 15:46:26', '1', '2016-10-26 14:01:27', '1', '0', null, null, null);
INSERT INTO `t_news_center` VALUES ('4', '179', '媒体视角', '天虹荣获2015年第五届', null, '2016-09-21 00:00:00', '1474450301405.png', null, '<p>\n\n<span style=\"color: rgb(0, 0, 0); font-family: &quot; Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\" data-fr-verified=\"true\">康集团和第一财经联合主办、中国食品科学技术学会提供技术支持，中国连锁经营协会担任行业合作伙伴的第五届“中国食品健康七星奖”在北京揭晓，本届七星奖共评选出29家标杆企业，分享了“供应链管理奖”、“社会责任奖”、“品质卓越奖”和“健康引领奖”四项殊荣。天虹自2014年开始参加评选以来，连续两年获得“品质卓越奖”。</span>\n\n<br></p>', '2016-09-21 15:46:45', '1', '2016-09-21 17:31:42', '1', '0', null, null, null);
INSERT INTO `t_news_center` VALUES ('5', '179', '公司新闻', '2015年第五届', null, '2016-09-21 00:00:00', null, null, '<p>\n\n<span style=\"color: rgb(0, 0, 0); font-family: &quot; Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\" data-fr-verified=\"true\">&nbsp; 2016年，天虹将继续提升食品安全顾客感知、夯实质量基础，增强培训及人员专业性培养，继续大力推进ISO22000食品安全管理体系，打造质量领先。</span>\n\n<br></p>', '2016-09-21 15:47:02', '1', null, null, '0', null, null, null);
INSERT INTO `t_news_center` VALUES ('6', '179', '公司新闻', '天虹商场', null, '2016-09-21 00:00:00', null, null, '<p>\n\n<span style=\"color: rgb(0, 0, 0); font-family: &quot; Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\" data-fr-verified=\"true\">品质量管理相关要求的实施奠定坚实基础。把食品安全贯穿到各相关部门、岗位的工作中，严格执行《食品安全法》等法规和标准，不断总结、改善食品安全工作，不断探索和完善食品安全管理体系，不断创新和超越自我，引导顾客健康消费，致力于成为全国质量领先的零售企业，持续追求品质卓越，引领健康，为顾客提供安全、健康的产品！</span>\n\n<br></p>', '2016-09-21 15:47:25', '1', null, null, '0', null, null, null);
INSERT INTO `t_news_center` VALUES ('7', '179', '媒体视角', '四项殊荣', null, '2016-09-21 00:00:00', null, null, '<p>四项殊荣\n\n<span data-fr-verified=\"true\" style=\"color: rgb(0, 0, 0); font-family: &quot; Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\">全的道路上，天虹制定了实施“打造商品质量领先”的发展战略，确立商品质量管理至高的战略定位，为商品质量管理文化的建设、商品质量管理相关要求的实施奠定坚实基础。把食品安全贯穿到各相关部门、岗位的工作中，严格执行《食品安全法》等法规和标准，不断总结、改善食品安全工作，不断探索和完善食品安全管理体系，不断创新和超越自我，引导顾客健康消费，致力于成为全国质量领先的零售企业，持续追求品质卓越，引领健康，为顾客提供安全、健康的产品！</span>\n\n<br></p>', '2016-09-21 15:47:43', '1', null, null, '0', null, null, null);
INSERT INTO `t_news_center` VALUES ('8', '179', '新闻头条', '荣获2015年第五届“中国食品健康七星奖-品质卓越奖”', null, '2016-08-01 00:00:00', null, null, '<p style=\"padding: 0px; margin: 0px; color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">4月12日，由艺康集团和第一财经联合主办、中国食品科学技术学会提供技术支持，中国连锁经营协会担任行业合作伙伴的第五届“中国食品健康七星奖”在北京揭晓，本届七星奖共评选出29家标杆企业，分享了“供应链管理奖”、“社会责任奖”、“品质卓越奖”和“健康引领奖”四项殊荣。天虹自2014年开始参加评选以来，连续两年获得“品质卓越奖”。</p><p><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1474444219094.png\" width=\"603\"></p><p style=\"padding: 0px; margin: 0px; color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><br></p><p style=\"padding: 0px; margin: 0px; color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在食品安全的道路上，天虹制定了实施“打造商品质量领先”的发展战略，确立商品质量管理至高的战略定位，为商品质量管理文化的建设、商品质量管理相关要求的实施奠定坚实基础。把食品安全贯穿到各相关部门、岗位的工作中，严格执行《食品安全法》等法规和标准，不断总结、改善食品安全工作，不断探索和完善食品安全管理体系，不断创新和超越自我，引导顾客健康消费，致力于成为全国质量领先的零售企业，持续追求品质卓越，引领健康，为顾客提供安全、健康的产品！</p><p style=\"padding: 0px; margin: 0px; color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2016年，天虹将继续提升食品安全顾客感知、夯实质量基础，增强培训及人员专业性培养，继续大力推进ISO22000食品安全管理体系，打造质量领先。</p>', '2016-09-21 15:50:22', '1', null, null, '0', null, null, null);
INSERT INTO `t_news_center` VALUES ('9', '179', '新闻头条', '测试一', '天虹', '2016-09-21 00:00:00', '1474449886852.png', null, '<ol style=\"margin: 0px; padding: 0px; list-style: none; overflow: hidden; color: rgb(102, 102, 102); font-family: arial, 宋体; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(249, 249, 249);\">\n  <li><p style=\"margin: 0px; padding: 0px; font-family: arial, 宋体; font-size: 14px; color: rgb(51, 51, 51); line-height: 22px;\"><span high-light-id=\"w_0,w_13\" data-fr-verified=\"true\">她</span><span high-light-id=\"w_1,w_14,w_15\" data-fr-verified=\"true\">编选</span><span high-light-id=\"w_2\" data-fr-verified=\"true\">了</span><span high-light-id=\"w_3,w_4,w_16\" data-fr-verified=\"true\">这本</span><span high-light-id=\"w_5,w_17\" data-fr-verified=\"true\">媒体</span><span high-light-id=\"w_6,w_18\" data-fr-verified=\"true\">研究</span><span high-light-id=\"w_7,w_8,w_9,w_19,w_20\" data-fr-verified=\"true\">季刊——《</span><span high-light-id=\"w_10,w_21\" data-fr-verified=\"true\">银幕</span><span high-light-id=\"w_11,w_19\" data-fr-verified=\"true\">》</span><span high-light-id=\"w_12,w_22\" data-fr-verified=\"true\">。</span></p><p style=\"margin: 0px; padding: 0px; font-family: arial, 宋体; font-size: 14px; color: rgb(51, 51, 51); line-height: 22px;\"><span high-light-id=\"w_0,w_13\" data-fr-verified=\"true\">She<span data-fr-verified=\"true\">&nbsp;</span></span><span high-light-id=\"w_1,w_14,w_15\" data-fr-verified=\"true\">has<span data-fr-verified=\"true\">&nbsp;</span></span><span high-light-id=\"w_1,w_14,w_15\" data-fr-verified=\"true\">edited<span data-fr-verified=\"true\">&nbsp;</span></span><span high-light-id=\"w_3,w_4,w_16\" data-fr-verified=\"true\">the<span data-fr-verified=\"true\">&nbsp;</span></span><span high-light-id=\"w_5,w_17\" data-fr-verified=\"true\">media<span data-fr-verified=\"true\">&nbsp;</span></span><span high-light-id=\"w_6,w_18\" data-fr-verified=\"true\">studies<span data-fr-verified=\"true\">&nbsp;</span></span><span high-light-id=\"w_11,w_19\" data-fr-verified=\"true\">quarterly</span><span high-light-id=\"w_7,w_8,w_9,w_19,w_20\" data-fr-verified=\"true\">,<span data-fr-verified=\"true\">&nbsp;</span></span><span high-light-id=\"w_10,w_21\" data-fr-verified=\"true\">Screen</span><span high-light-id=\"w_12,w_22\" data-fr-verified=\"true\">.</span><span data-fr-verified=\"true\">&nbsp;</span></p><p><a>《柯林斯高阶英汉双解学习词典》</a></p></li>\n\n  <li><label>2</label><p style=\"margin: 0px; padding: 0px; font-family: arial, 宋体; font-size: 14px; color: rgb(51, 51, 51); line-height: 22px;\"><span high-light-id=\"w_46,w_62\" data-fr-verified=\"true\">我们</span><span high-light-id=\"w_47,w_63,w_64\" data-fr-verified=\"true\">发现</span><span high-light-id=\"w_48,w_65\" data-fr-verified=\"true\">电视</span><span high-light-id=\"w_49,w_66\" data-fr-verified=\"true\">和</span><span high-light-id=\"w_50,w_67\" data-fr-verified=\"true\">广播</span><span high-light-id=\"w_51,w_68,w_69\" data-fr-verified=\"true\">引发</span><span high-light-id=\"w_52\" data-fr-verified=\"true\">的</span><span high-light-id=\"w_53,w_73\" data-fr-verified=\"true\">投诉</span><span high-light-id=\"w_54,w_74,w_75\" data-fr-verified=\"true\">比</span><span high-light-id=\"w_55,w_77\" data-fr-verified=\"true\">印刷</span><span high-light-id=\"w_56,w_78\" data-fr-verified=\"true\">媒体</span><span high-light-id=\"w_57,w_58,w_59,w_70,w_71,w_72\" data-fr-verified=\"true\">要</span><span high-light-id=\"w_57,w_58,w_59,w_70,w_71,w_72\" data-fr-verified=\"true\">少</span><span high-light-id=\"w_57,w_58,w_59,w_70,w_71,w_72\" data-fr-verified=\"true\">多</span><span high-light-id=\"w_60\" data-fr-verified=\"true\">了</span><span high-light-id=\"w_61,w_79\" data-fr-verified=\"true\">。</span></p><p style=\"margin: 0px; padding: 0px; font-family: arial, 宋体; font-size: 14px; color: rgb(51, 51, 51); line-height: 22px;\"><span high-light-id=\"w_46,w_62\" data-fr-verified=\"true\">We<span data-fr-verified=\"true\">&nbsp;</span></span><span high-light-id=\"w_47,w_63,w_64\" data-fr-verified=\"true\">found<span data-fr-verified=\"true\">&nbsp;</span></span><span high-light-id=\"w_47,w_63,w_64\" data-fr-verified=\"true\">that<span data-fr-verified=\"true\">&nbsp;</span></span><span high-light-id=\"w_48,w_65\" data-fr-verified=\"true\">television<span data-fr-verified=\"true\">&nbsp;</span></span><span high-light-id=\"w_49,w_66\" data-fr-verified=\"true\">and<span data-fr-verified=\"true\">&nbsp;</span></span><span high-light-id=\"w_50,w_67\" data-fr-verified=\"true\">radio<span data-fr-verified=\"true\">&nbsp;</span></span><span high-light-id=\"w_51,w_68,w_69\" data-fr-verified=\"true\">gave<span data-fr-verified=\"true\">&nbsp;</span></span><span high-light-id=\"w_51,w_68,w_69\" data-fr-verified=\"true\">rise<span data-fr-verified=\"true\">&nbsp;</span></span><span high-light-id=\"w_57,w_58,w_59,w_70,w_71,w_72\" data-fr-verified=\"true\">to<span data-fr-verified=\"true\">&nbsp;</span></span><span high-light-id=\"w_57,w_58,w_59,w_70,w_71,w_72\" data-fr-verified=\"true\">far<span data-fr-verified=\"true\">&nbsp;</span></span><span high-light-id=\"w_57,w_58,w_59,w_70,w_71,w_72\" data-fr-verified=\"true\">fewer<span data-fr-verified=\"true\">&nbsp;</span></span><span high-light-id=\"w_53,w_73\" data-fr-verified=\"true\">complaints<span data-fr-verified=\"true\">&nbsp;</span></span><span high-light-id=\"w_54,w_74,w_75\" data-fr-verified=\"true\">than<span data-fr-verified=\"true\">&nbsp;</span></span><span high-light-id=\"w_54,w_74,w_75\" data-fr-verified=\"true\">did<span data-fr-verified=\"true\">&nbsp;</span></span><span high-light-id=\"\" data-fr-verified=\"true\">the</span><span high-light-id=\"w_55,w_77\" data-fr-verified=\"true\">printed<span data-fr-verified=\"true\">&nbsp;</span></span><span high-light-id=\"w_56,w_78\" data-fr-verified=\"true\">media</span><span high-light-id=\"w_61,w_79\" data-fr-verified=\"true\">.</span><span data-fr-verified=\"true\">&nbsp;</span></p><p><a>《柯林斯高阶英汉双解学习词典》</a></p></li>\n\n  <li><label>3</label><p style=\"margin: 0px; padding: 0px; font-family: arial, 宋体; font-size: 14px; color: rgb(51, 51, 51); line-height: 22px;\"><span high-light-id=\"w_114,w_127,w_128\" data-fr-verified=\"true\">珍妮·杰克逊</span><span high-light-id=\"w_115,w_129\" data-fr-verified=\"true\">的</span><span high-light-id=\"w_116,w_130\" data-fr-verified=\"true\">新</span><span high-light-id=\"w_117,w_131\" data-fr-verified=\"true\">专辑</span><span high-light-id=\"w_118,w_119,w_132,w_133\" data-fr-verified=\"true\">已经</span><span high-light-id=\"w_118,w_119,w_132,w_133\" data-fr-verified=\"true\">在</span><span high-light-id=\"w_120,w_138\" data-fr-verified=\"true\">媒体</span><span high-light-id=\"w_121\" data-fr-verified=\"true\">上</span><span high-light-id=\"w_122\" data-fr-verified=\"true\">进行</span><span high-light-id=\"w_123,w_136\" data-fr-verified=\"true\">了</span><span high-light-id=\"w_124,w_137\" data-fr-verified=\"true\">大规模</span><span high-light-id=\"w_125,w_126,w_139\" data-fr-verified=\"true\">宣传</span><span high-light-id=\"w_125,w_126,w_139\" data-fr-verified=\"true\">。</span></p></li>\n</ol>', '2016-09-21 17:25:11', '1', null, null, '0', null, null, null);
INSERT INTO `t_news_center` VALUES ('10', '199', '品牌展示', '菲尔芙', '', '2016-09-21 00:00:00', '1476252800574.png', null, '<p>\n\n<span style=\"color: rgb(102, 102, 102); font-family: &quot; Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 22px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;\" data-fr-verified=\"true\">菲尔芙是天虹商场旗下的自有品牌，主要产品为日用品。该品牌上市以来，销量一直平平。但资源是有限的，天虹旗下自有品牌众多，菲尔芙应该占据一个怎样的位置？市场是否饱和，是保留菲尔芙还是将资源转移到其他品牌身上？这都涉及整个企业的品牌组合管理问题。究竟要打一套怎样的品牌组合拳？基于前期天虹天优品牌与南风盛世合作后反馈效果极佳，天虹再次找到了南风盛世</span>\n\n<br></p>', '2016-09-21 20:13:49', '1', '2016-10-12 14:13:23', '1', '0', null, null, null);
INSERT INTO `t_news_center` VALUES ('11', '199', '品牌展示', '天优', '', '2016-09-21 00:00:00', '1476252813962.png', null, '<p>\n\n<span style=\"color: rgb(102, 102, 102); font-family: &quot; Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 22px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;\" data-fr-verified=\"true\">天佑是天虹商场旗下的自有品牌，主要产品为日用品。该品牌上市以来，销量一直平平。但资源是有限的，天虹旗下自有品牌众多，菲尔芙应该占据一个怎样的位置？市场是否饱和，是保留菲尔芙还是将资源转移到其他品牌身上？这都涉及整个企业的品牌组合管理问题。究竟要打一套怎样的品牌组合拳？基于前期天虹天优品牌与南风盛世合作后反馈效果极佳，天虹再次找到了南风盛世…</span>\n<img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://192.168.163.114:8180/th-admin/download/png?fileName=1476252826384.png\" width=\"300\">\n<br></p>', '2016-09-21 20:14:30', '1', '2016-10-12 14:13:47', '1', '0', null, null, null);
INSERT INTO `t_news_center` VALUES ('12', '199', '项目展示', '项目天佑', '', '2016-09-21 00:00:00', '1474460392852.png', null, '<p>\n\n<span style=\"color: rgb(102, 102, 102); font-family: &quot; Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 22px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;\" data-fr-verified=\"true\">虹商场旗下的自有品牌，主要产品为日用品。该品牌上市以来，销量一直平平。但资源是有限的，天虹旗下自有品牌众多，菲尔芙应该占据一个怎样的位置？市场是否饱和，是保留菲尔芙还是将资源转移到其他品牌身上？这都涉及整个企业的品牌组合管理问题。究竟要打一套怎样的品牌组合拳？基于前期天虹天优品牌</span>\n\n<br></p>', '2016-09-21 20:20:00', '1', null, null, '0', null, null, null);
INSERT INTO `t_news_center` VALUES ('13', '266', null, '促销信息活动001', '', '2016-10-17 00:00:00', null, null, '<p>\n\n首度引入国内的泰国精品度假酒店阿玛瑞酒店\n\n</p><p>十一节日期间，各商家比着打折让利销售的行为让人担忧，认为从表面上看起来红红火火的假日销售，只是消费者将昨天、明天或下个月的消费集中在几天内进行。为了引导消费，激发节日冲动性消费，并且要想在十一期间取得较好的销售业绩和较有影响力的社会效应，提升xx商城的企业形象及以文经商的特点，xx应该举办与节日相应的各种活动，推出文化营销，使营销过程与文化享受有机结合起来，使消费者在享受多元化服务的同时，增加随机消费的欲望。从本质上区别与其他商家大同小异的一味让利打折手段来带动假日消费，真正意义上从社会角度提升xx的形象，树立高层次的文化消费来吸引消费者，笼络高层次的消费群体，展现名店风范。</p><p><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1477463003263.png\" width=\"300\"></p><p>\n\n<span style=\"color: rgb(51, 51, 51); font-family: &quot; 思源黑体 CN&quot;; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\" data-fr-verified=\"true\">十一节日期间，各商家比着打折让利销售的行为让人担忧，认为从表面上看起来红红火火的假日销售，只是消费者将昨天、明天或下个月的消费集中在几天内进行。为了引导消费，激发节日冲动性消费，并且要想在十一期间取得较好的销售业绩和较有影响力的社会效应，提升xx商城的企业形象及以文经商的特点，xx应该举办与节日相应的各种活动，推出文化营销，使营销过程与文化享受有机结合起来，使消费者在享受多元化服务的同时，增加随机消费的欲望。从本质上区别与其他商家大同小异的一味让利打折手段来带动假日消费，真正意义上从社会角度提升xx的形象，树立高层次的文化消费来吸引消费者，笼络高层次的消费群体，展现名店风范。</span>\n\n<br></p><p><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1477463023144.png\" width=\"300\"></p><p><br></p>', '2016-10-26 14:23:44', '1', '2016-10-26 14:23:54', '1', '0', null, null, null);
INSERT INTO `t_news_center` VALUES ('14', '266', null, '促销信息活动002', '', '2016-10-26 00:00:00', null, null, '<p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">首度引入国内的泰国精品度假酒店阿玛瑞酒店</p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">十一节日期间，各商家比着打折让利销售的行为让人担忧，认为从表面上看起来红红火火的假日销售，只是消费者将昨天、明天或下个月的消费集中在几天内进行。为了引导消费，激发节日冲动性消费，并且要想在十一期间取得较好的销售业绩和较有影响力的社会效应，提升xx商城的企业形象及以文经商的特点，xx应该举办与节日相应的各种活动，推出文化营销，使营销过程与文化享受有机结合起来，使消费者在享受多元化服务的同时，增加随机消费的欲望。从本质上区别与其他商家大同小异的一味让利打折手段来带动假日消费，真正意义上从社会角度提升xx的形象，树立高层次的文化消费来吸引消费者，笼络高层次的消费群体，展现名店风范。</p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><img data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1477463003263.png\" width=\"300\" class=\"fr-fin\"></p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><span data-fr-verified=\"true\" style=\"box-sizing: content-box; line-height: 24px; color: rgb(51, 51, 51); font-family: &quot; 思源黑体 CN&quot;; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; display: inline !important; background-color: rgb(255, 255, 255);\">十一节日期间，各商家比着打折让利销售的行为让人担忧，认为从表面上看起来红红火火的假日销售，只是消费者将昨天、明天或下个月的消费集中在几天内进行。为了引导消费，激发节日冲动性消费，并且要想在十一期间取得较好的销售业绩和较有影响力的社会效应，提升xx商城的企业形象及以文经商的特点，xx应该举办与节日相应的各种活动，推出文化营销，使营销过程与文化享受有机结合起来，使消费者在享受多元化服务的同时，增加随机消费的欲望。从本质上区别与其他商家大同小异的一味让利打折手段来带动假日消费，真正意义上从社会角度提升xx的形象，树立高层次的文化消费来吸引消费者，笼络高层次的消费群体，展现名店风范。</span><span data-fr-verified=\"true\">&nbsp;</span><br></p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><img data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1477463023144.png\" width=\"300\" class=\"fr-fin\"></p>', '2016-10-26 14:24:20', '1', null, null, '0', null, null, null);
INSERT INTO `t_news_center` VALUES ('15', '266', null, '促销信息活动003', '', '2016-10-26 00:00:00', null, null, '<p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">首度引入国内的泰国精品度假酒店阿玛瑞酒店</p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">十一节日期间，各商家比着打折让利销售的行为让人担忧，认为从表面上看起来红红火火的假日销售，只是消费者将昨天、明天或下个月的消费集中在几天内进行。为了引导消费，激发节日冲动性消费，并且要想在十一期间取得较好的销售业绩和较有影响力的社会效应，提升xx商城的企业形象及以文经商的特点，xx应该举办与节日相应的各种活动，推出文化营销，使营销过程与文化享受有机结合起来，使消费者在享受多元化服务的同时，增加随机消费的欲望。从本质上区别与其他商家大同小异的一味让利打折手段来带动假日消费，真正意义上从社会角度提升xx的形象，树立高层次的文化消费来吸引消费者，笼络高层次的消费群体，展现名店风范。</p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><img data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1477463003263.png\" width=\"300\" class=\"fr-fin\"></p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><span data-fr-verified=\"true\" style=\"box-sizing: content-box; line-height: 24px; color: rgb(51, 51, 51); font-family: &quot; 思源黑体 CN&quot;; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; display: inline !important; background-color: rgb(255, 255, 255);\">十一节日期间，各商家比着打折让利销售的行为让人担忧，认为从表面上看起来红红火火的假日销售，只是消费者将昨天、明天或下个月的消费集中在几天内进行。为了引导消费，激发节日冲动性消费，并且要想在十一期间取得较好的销售业绩和较有影响力的社会效应，提升xx商城的企业形象及以文经商的特点，xx应该举办与节日相应的各种活动，推出文化营销，使营销过程与文化享受有机结合起来，使消费者在享受多元化服务的同时，增加随机消费的欲望。从本质上区别与其他商家大同小异的一味让利打折手段来带动假日消费，真正意义上从社会角度提升xx的形象，树立高层次的文化消费来吸引消费者，笼络高层次的消费群体，展现名店风范。</span><span data-fr-verified=\"true\">&nbsp;</span><br></p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><img data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1477463023144.png\" width=\"300\" class=\"fr-fin\"></p>', '2016-10-26 14:24:30', '1', null, null, '0', null, null, null);
INSERT INTO `t_news_center` VALUES ('16', '266', null, '促销信息活动00144', '', '2016-10-26 00:00:00', null, null, '<p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">首度引入国内的泰国精品度假酒店阿玛瑞酒店</p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">十一节日期间，各商家比着打折让利销售的行为让人担忧，认为从表面上看起来红红火火的假日销售，只是消费者将昨天、明天或下个月的消费集中在几天内进行。为了引导消费，激发节日冲动性消费，并且要想在十一期间取得较好的销售业绩和较有影响力的社会效应，提升xx商城的企业形象及以文经商的特点，xx应该举办与节日相应的各种活动，推出文化营销，使营销过程与文化享受有机结合起来，使消费者在享受多元化服务的同时，增加随机消费的欲望。从本质上区别与其他商家大同小异的一味让利打折手段来带动假日消费，真正意义上从社会角度提升xx的形象，树立高层次的文化消费来吸引消费者，笼络高层次的消费群体，展现名店风范。</p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><img data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1477463003263.png\" width=\"300\" class=\"fr-fin\"></p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><span data-fr-verified=\"true\" style=\"box-sizing: content-box; line-height: 24px; color: rgb(51, 51, 51); font-family: &quot; 思源黑体 CN&quot;; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; display: inline !important; background-color: rgb(255, 255, 255);\">十一节日期间，各商家比着打折让利销售的行为让人担忧，认为从表面上看起来红红火火的假日销售，只是消费者将昨天、明天或下个月的消费集中在几天内进行。为了引导消费，激发节日冲动性消费，并且要想在十一期间取得较好的销售业绩和较有影响力的社会效应，提升xx商城的企业形象及以文经商的特点，xx应该举办与节日相应的各种活动，推出文化营销，使营销过程与文化享受有机结合起来，使消费者在享受多元化服务的同时，增加随机消费的欲望。从本质上区别与其他商家大同小异的一味让利打折手段来带动假日消费，真正意义上从社会角度提升xx的形象，树立高层次的文化消费来吸引消费者，笼络高层次的消费群体，展现名店风范。</span><span data-fr-verified=\"true\">&nbsp;</span><br></p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><img data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1477463023144.png\" width=\"300\" class=\"fr-fin\"></p>', '2016-10-26 14:24:45', '1', null, null, '0', null, null, null);
INSERT INTO `t_news_center` VALUES ('17', '266', null, '促销信息活动001555', '', '2016-10-26 00:00:00', null, null, '<p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">首度引入国内的泰国精品度假酒店阿玛瑞酒店</p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">十一节日期间，各商家比着打折让利销售的行为让人担忧，认为从表面上看起来红红火火的假日销售，只是消费者将昨天、明天或下个月的消费集中在几天内进行。为了引导消费，激发节日冲动性消费，并且要想在十一期间取得较好的销售业绩和较有影响力的社会效应，提升xx商城的企业形象及以文经商的特点，xx应该举办与节日相应的各种活动，推出文化营销，使营销过程与文化享受有机结合起来，使消费者在享受多元化服务的同时，增加随机消费的欲望。从本质上区别与其他商家大同小异的一味让利打折手段来带动假日消费，真正意义上从社会角度提升xx的形象，树立高层次的文化消费来吸引消费者，笼络高层次的消费群体，展现名店风范。</p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><img data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1477463003263.png\" width=\"300\" class=\"fr-fin\"></p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><span data-fr-verified=\"true\" style=\"box-sizing: content-box; line-height: 24px; color: rgb(51, 51, 51); font-family: &quot; 思源黑体 CN&quot;; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; display: inline !important; background-color: rgb(255, 255, 255);\">十一节日期间，各商家比着打折让利销售的行为让人担忧，认为从表面上看起来红红火火的假日销售，只是消费者将昨天、明天或下个月的消费集中在几天内进行。为了引导消费，激发节日冲动性消费，并且要想在十一期间取得较好的销售业绩和较有影响力的社会效应，提升xx商城的企业形象及以文经商的特点，xx应该举办与节日相应的各种活动，推出文化营销，使营销过程与文化享受有机结合起来，使消费者在享受多元化服务的同时，增加随机消费的欲望。从本质上区别与其他商家大同小异的一味让利打折手段来带动假日消费，真正意义上从社会角度提升xx的形象，树立高层次的文化消费来吸引消费者，笼络高层次的消费群体，展现名店风范。</span><span data-fr-verified=\"true\">&nbsp;</span><br></p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><img data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1477463023144.png\" width=\"300\" class=\"fr-fin\"></p>', '2016-10-26 14:27:03', '1', null, null, '0', null, null, null);
INSERT INTO `t_news_center` VALUES ('18', '267', null, '商家优惠活动001', '', '2016-10-26 00:00:00', null, null, '<p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">商家优惠首度引入国内的泰国精品度假酒店阿玛瑞酒店</p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">十一节日期间，各商家比着打折让利销售的行为让人担忧，认为从表面上看起来红红火火的假日销售，只是消费者将昨天、明天或下个月的消费集中在几天内进行。为了引导消费，激发节日冲动性消费，并且要想在十一期间取得较好的销售业绩和较有影响力的社会效应，提升xx商城的企业形象及以文经商的特点，xx应该举办与节日相应的各种活动，推出文化营销，使营销过程与文化享受有机结合起来，使消费者在享受多元化服务的同时，增加随机消费的欲望。从本质上区别与其他商家大同小异的一味让利打折手段来带动假日消费，真正意义上从社会角度提升xx的形象，树立高层次的文化消费来吸引消费者，笼络高层次的消费群体，展现名店风范。</p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><img data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1477463003263.png\" width=\"300\" class=\"fr-fin\"></p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><span data-fr-verified=\"true\" style=\"box-sizing: content-box; line-height: 24px; color: rgb(51, 51, 51); font-family: &quot; 思源黑体 CN&quot;; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; display: inline !important; background-color: rgb(255, 255, 255);\">十一节日期间，各商家比着打折让利销售的行为让人担忧，认为从表面上看起来红红火火的假日销售，只是消费者将昨天、明天或下个月的消费集中在几天内进行。为了引导消费，激发节日冲动性消费，并且要想在十一期间取得较好的销售业绩和较有影响力的社会效应，提升xx商城的企业形象及以文经商的特点，xx应该举办与节日相应的各种活动，推出文化营销，使营销过程与文化享受有机结合起来，使消费者在享受多元化服务的同时，增加随机消费的欲望。从本质上区别与其他商家大同小异的一味让利打折手段来带动假日消费，真正意义上从社会角度提升xx的形象，树立高层次的文化消费来吸引消费者，笼络高层次的消费群体，展现名店风范。</span><span data-fr-verified=\"true\">&nbsp;</span><br></p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><img data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1477463023144.png\" width=\"300\" class=\"fr-fin\"></p>', '2016-10-26 14:27:47', '1', null, null, '0', null, null, null);
INSERT INTO `t_news_center` VALUES ('19', '268', null, '新闻资讯001', '', '2016-10-26 00:00:00', null, null, '<p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">新闻资讯首度引入国内的泰国精品度假酒店阿玛瑞酒店</p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">十一节日期间，各商家比着打折让利销售的行为让人担忧，认为从表面上看起来红红火火的假日销售，只是消费者将昨天、明天或下个月的消费集中在几天内进行。为了引导消费，激发节日冲动性消费，并且要想在十一期间取得较好的销售业绩和较有影响力的社会效应，提升xx商城的企业形象及以文经商的特点，xx应该举办与节日相应的各种活动，推出文化营销，使营销过程与文化享受有机结合起来，使消费者在享受多元化服务的同时，增加随机消费的欲望。从本质上区别与其他商家大同小异的一味让利打折手段来带动假日消费，真正意义上从社会角度提升xx的形象，树立高层次的文化消费来吸引消费者，笼络高层次的消费群体，展现名店风范。</p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><img data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1477463003263.png\" width=\"300\" class=\"fr-fin\"></p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><span data-fr-verified=\"true\" style=\"box-sizing: content-box; line-height: 24px; color: rgb(51, 51, 51); font-family: &quot; 思源黑体 CN&quot;; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; display: inline !important; background-color: rgb(255, 255, 255);\">十一节日期间，各商家比着打折让利销售的行为让人担忧，认为从表面上看起来红红火火的假日销售，只是消费者将昨天、明天或下个月的消费集中在几天内进行。为了引导消费，激发节日冲动性消费，并且要想在十一期间取得较好的销售业绩和较有影响力的社会效应，提升xx商城的企业形象及以文经商的特点，xx应该举办与节日相应的各种活动，推出文化营销，使营销过程与文化享受有机结合起来，使消费者在享受多元化服务的同时，增加随机消费的欲望。从本质上区别与其他商家大同小异的一味让利打折手段来带动假日消费，真正意义上从社会角度提升xx的形象，树立高层次的文化消费来吸引消费者，笼络高层次的消费群体，展现名店风范。</span><span data-fr-verified=\"true\">&nbsp;</span><br></p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><img data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1477463023144.png\" width=\"300\" class=\"fr-fin\"></p>', '2016-10-26 14:28:18', '1', null, null, '0', null, null, null);
INSERT INTO `t_news_center` VALUES ('20', '281', null, '特色美食活动资讯001', '', '2016-10-26 00:00:00', null, null, '<p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">特色美食活动资讯首度引入国内的泰国精品度假酒店阿玛瑞酒店</p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">十一节日期间，各商家比着打折让利销售的行为让人担忧，认为从表面上看起来红红火火的假日销售，只是消费者将昨天、明天或下个月的消费集中在几天内进行。为了引导消费，激发节日冲动性消费，并且要想在十一期间取得较好的销售业绩和较有影响力的社会效应，提升xx商城的企业形象及以文经商的特点，xx应该举办与节日相应的各种活动，推出文化营销，使营销过程与文化享受有机结合起来，使消费者在享受多元化服务的同时，增加随机消费的欲望。从本质上区别与其他商家大同小异的一味让利打折手段来带动假日消费，真正意义上从社会角度提升xx的形象，树立高层次的文化消费来吸引消费者，笼络高层次的消费群体，展现名店风范。</p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><img data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1477463003263.png\" width=\"300\" class=\"fr-fin\"></p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><span data-fr-verified=\"true\" style=\"box-sizing: content-box; line-height: 24px; color: rgb(51, 51, 51); font-family: &quot; 思源黑体 CN&quot;; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; display: inline !important; background-color: rgb(255, 255, 255);\">十一节日期间，各商家比着打折让利销售的行为让人担忧，认为从表面上看起来红红火火的假日销售，只是消费者将昨天、明天或下个月的消费集中在几天内进行。为了引导消费，激发节日冲动性消费，并且要想在十一期间取得较好的销售业绩和较有影响力的社会效应，提升xx商城的企业形象及以文经商的特点，xx应该举办与节日相应的各种活动，推出文化营销，使营销过程与文化享受有机结合起来，使消费者在享受多元化服务的同时，增加随机消费的欲望。从本质上区别与其他商家大同小异的一味让利打折手段来带动假日消费，真正意义上从社会角度提升xx的形象，树立高层次的文化消费来吸引消费者，笼络高层次的消费群体，展现名店风范。</span><span data-fr-verified=\"true\">&nbsp;</span><br></p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><img data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1477463023144.png\" width=\"300\" class=\"fr-fin\"></p>', '2016-10-26 14:29:21', '1', null, null, '0', null, null, null);
INSERT INTO `t_news_center` VALUES ('21', '284', null, '休闲娱乐活动资讯001', '', '2016-10-26 00:00:00', null, null, '<p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">休闲娱乐活动资讯首度引入国内的泰国精品度假酒店阿玛瑞酒店</p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">十一节日期间，各商家比着打折让利销售的行为让人担忧，认为从表面上看起来红红火火的假日销售，只是消费者将昨天、明天或下个月的消费集中在几天内进行。为了引导消费，激发节日冲动性消费，并且要想在十一期间取得较好的销售业绩和较有影响力的社会效应，提升xx商城的企业形象及以文经商的特点，xx应该举办与节日相应的各种活动，推出文化营销，使营销过程与文化享受有机结合起来，使消费者在享受多元化服务的同时，增加随机消费的欲望。从本质上区别与其他商家大同小异的一味让利打折手段来带动假日消费，真正意义上从社会角度提升xx的形象，树立高层次的文化消费来吸引消费者，笼络高层次的消费群体，展现名店风范。</p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><img data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1477463003263.png\" width=\"300\" class=\"fr-fin\"></p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><span data-fr-verified=\"true\" style=\"box-sizing: content-box; line-height: 24px; color: rgb(51, 51, 51); font-family: &quot; 思源黑体 CN&quot;; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; display: inline !important; background-color: rgb(255, 255, 255);\">十一节日期间，各商家比着打折让利销售的行为让人担忧，认为从表面上看起来红红火火的假日销售，只是消费者将昨天、明天或下个月的消费集中在几天内进行。为了引导消费，激发节日冲动性消费，并且要想在十一期间取得较好的销售业绩和较有影响力的社会效应，提升xx商城的企业形象及以文经商的特点，xx应该举办与节日相应的各种活动，推出文化营销，使营销过程与文化享受有机结合起来，使消费者在享受多元化服务的同时，增加随机消费的欲望。从本质上区别与其他商家大同小异的一味让利打折手段来带动假日消费，真正意义上从社会角度提升xx的形象，树立高层次的文化消费来吸引消费者，笼络高层次的消费群体，展现名店风范。</span><span data-fr-verified=\"true\">&nbsp;</span><br></p><p style=\"line-height: 1.41; text-align: justify; margin: 0px 0px 10px; word-break: break-all; box-sizing: content-box; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><img data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1477463023144.png\" width=\"300\" class=\"fr-fin\"></p>', '2016-10-26 14:31:33', '1', null, null, '0', null, null, null);

-- ----------------------------
-- Table structure for `t_picture`
-- ----------------------------
DROP TABLE IF EXISTS `t_picture`;
CREATE TABLE `t_picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menu_id` int(11) DEFAULT NULL COMMENT '菜单ID',
  `sort` tinyint(4) DEFAULT NULL COMMENT '排序',
  `title` varchar(1024) DEFAULT NULL COMMENT '标题',
  `url` varchar(1024) DEFAULT NULL COMMENT '链接(图片跳转链接)',
  `content` text COMMENT '图片跳转后内容',
  `picture_type` tinyint(4) DEFAULT NULL COMMENT '图片类型（banner、普通图片）1-banner,2-普通，3congtent里的图片',
  `path` varchar(1024) DEFAULT NULL COMMENT '图片存放路径',
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `backup1` varchar(1024) DEFAULT NULL,
  `backup2` varchar(1024) DEFAULT NULL,
  `backup3` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_picture
-- ----------------------------
INSERT INTO `t_picture` VALUES ('6', '8', '1', '', '', null, '1', '1469089904769.png', '2016-07-21 16:31:44', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('10', '8', '2', '', '', null, '1', '1469095612417.png', '2016-07-21 18:06:52', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('22', '120', '1', '', '', null, '1', '1471430070987.png', '2016-08-17 18:34:30', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('23', '121', '1', '', '', null, '1', '1471430451650.png', '2016-08-17 18:40:51', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('24', '121', '2', '', '', null, '1', '1471430453936.png', '2016-08-17 18:40:53', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('25', '121', '3', '', '', null, '1', '1471430456582.png', '2016-08-17 18:40:56', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('26', '121', '4', '', '', null, '1', '1471430459853.png', '2016-08-17 18:40:59', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('27', '121', '5', '', '', null, '1', '1471430463668.png', '2016-08-17 18:41:03', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('28', '121', '6', '', '', null, '1', '1471430468644.png', '2016-08-17 18:41:08', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('29', '121', '7', '', '', null, '1', '1471430471813.png', '2016-08-17 18:41:11', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('30', '121', '8', '', '', null, '1', '1471430476403.png', '2016-08-17 18:41:16', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('31', '121', '9', '', '', null, '1', '1471430488207.png', '2016-08-17 18:41:28', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('50', '130', '1', '', '', null, '1', '1471577263384.png', '2016-08-19 11:27:43', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('53', '130', '2', '天虹微信', '', null, '1', '1471577869116.png', '2016-08-19 11:37:49', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('54', '130', '3', '天虹微博', '', null, '1', '1471577885556.png', '2016-08-19 11:38:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('55', '137', '1', '', '', null, '1', '1471590520774.png', '2016-08-19 15:08:40', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('56', '133', '2', '', '', null, '1', '1471590571584.png', '2016-08-19 15:09:31', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('57', '133', '1', '', '', null, '1', '1471590581436.png', '2016-08-19 15:09:41', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('58', '133', '3', '', '', null, '1', '1471590588075.png', '2016-08-19 15:09:48', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('59', '133', '4', '', '', null, '1', '1471590592282.png', '2016-08-19 15:09:52', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('60', '134', '1', '', '', null, '1', '1471591420514.png', '2016-08-19 15:23:40', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('61', '134', '2', '', '', null, '1', '1471591422625.png', '2016-08-19 15:23:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('62', '134', '3', '', '', null, '1', '1471591427062.png', '2016-08-19 15:23:47', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('63', '139', '1', '', '', null, '1', '1471595312436.png', '2016-08-19 16:28:32', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('64', '139', '2', '', '', null, '1', '1471595322080.png', '2016-08-19 16:28:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('65', '139', '3', '', '', null, '1', '1471595330152.png', '2016-08-19 16:28:50', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('66', '139', '4', '', '', null, '1', '1471595336894.png', '2016-08-19 16:28:56', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('67', '139', '5', '', null, null, '1', '1471596019708.png', '2016-08-19 16:40:19', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('68', '140', '1', '', 'undefined', null, '1', '1471596122788.png', '2016-08-19 16:42:02', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('69', '140', '2', '海外购', 'undefined', null, '1', '1471596151251.png', '2016-08-19 16:42:31', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('70', '140', '3', '天虹到家', 'undefined', null, '1', '1471596160440.png', '2016-08-19 16:42:40', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('71', '140', '4', '优惠券', 'undefined', null, '1', '1471596167802.png', '2016-08-19 16:42:47', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('84', '173', '1', '', 'undefined', null, '1', '1474289288198.png', '2016-09-19 20:48:08', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('85', '173', '2', '', 'undefined', null, '1', '1474289415777.png', '2016-09-19 20:50:15', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('86', '173', '3', '', 'undefined', null, '1', '1474289422597.png', '2016-09-19 20:50:22', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('111', '196', '1', '天虹全渠道O2O,微信智慧商场的会员探索', null, null, '1', '<iframe frameborder=\"0\" width=\"640\" height=\"498\" src=\"http://v.qq.com/iframe/player.html?vid=p00204w9qo2&tiny=0&auto=0\" allowfullscreen></iframe>', '2016-10-08 20:41:31', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('112', '196', '2', '天虹礼物', null, null, '1', '<iframe frameborder=\"0\" width=\"640\" height=\"498\" src=\"http://v.qq.com/iframe/player.html?vid=k0303be7xg7&tiny=0&auto=0\" allowfullscreen></iframe>', '2016-10-08 20:42:28', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('113', '194', '1', '礼物', null, null, '1', '<iframe frameborder=\"0\" width=\"640\" height=\"498\" src=\"http://v.qq.com/iframe/player.html?vid=k0303be7xg7&tiny=0&auto=0\" allowfullscreen></iframe>', '2016-10-08 20:42:55', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('115', '181', '2', '', 'undefined', null, '1', '1476235741508.png', '2016-10-12 09:29:01', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('116', '184', '1', '', 'undefined', null, '1', '1476236566717.png', '2016-10-12 09:42:46', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('118', '184', '3', '11111111111', 'undefined', null, '1', '1476236702727.png', '2016-10-12 09:45:02', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('119', '184', '4', '', 'undefined', null, '1', '1476236841305.png', '2016-10-12 09:47:21', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('120', '193', '1', '', 'undefined', null, '1', '1476244599219.png', '2016-10-12 11:56:39', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('121', '195', '1', '201601期', '', '', '8', '', '2016-10-12 13:42:02', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('122', '195', '2', '201602', '', '', '8', '', '2016-10-12 13:42:33', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('123', '195', '3', '201603', '', '', '8', '', '2016-10-12 13:43:49', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('124', '215', '1', '111111111111', 'undefined', null, '1', '1476251640297.png', '2016-10-12 13:54:00', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('125', '216', '1', '滴答滴答滴答的', '中文.PDF', '这里不会乱码', '8', '1476252117272.png', '2016-10-12 14:02:10', '1', '2016-10-17 21:41:15', '1', '0', '2016-10-12', '嗲嗲渧嗲嗲吊', null);
INSERT INTO `t_picture` VALUES ('126', '216', '2', '2222222222', '2016bndzy.pdf', '2222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222', '8', '1476252300718.png', '2016-10-12 14:05:03', '1', null, null, '0', '2016-10-12', '222222222', null);
INSERT INTO `t_picture` VALUES ('127', '216', '3', '3333333333333333333333', '2016bndzy.pdf', '666666666666666666666', '8', '1476252379548.png', '2016-10-12 14:05:47', '1', '2016-10-12 14:06:52', '1', '0', '2016-10-12', '3333', null);
INSERT INTO `t_picture` VALUES ('128', '156', '1', '', 'undefined', null, '1', '1476256773292.png', '2016-10-12 15:19:33', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('133', '117', '1', '', 'undefined', null, '1', '1476258441423.png', '2016-10-12 15:47:21', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('134', '118', '1', '11111111111', 'undefined', null, '1', '1476258462927.png', '2016-10-12 15:47:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('135', '118', '2', '222222222', 'undefined', null, '1', '1476258468051.png', '2016-10-12 15:47:48', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('136', '118', '3', '33333333333', 'undefined', null, '1', '1476258473069.png', '2016-10-12 15:47:53', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('137', '119', '1', '', 'undefined', null, '1', '1476259257821.png', '2016-10-12 16:00:57', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('139', '163', '1', '', 'undefined', null, '1', '1476337942838.png', '2016-10-13 13:52:22', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('140', '163', '2', '', 'undefined', null, '1', '1476337954823.png', '2016-10-13 13:52:34', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('141', '163', '3', '', 'undefined', null, '1', '1476338830827.png', '2016-10-13 14:07:10', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('142', '163', '4', '', 'undefined', null, '1', '1476338857325.png', '2016-10-13 14:07:37', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('143', '163', '5', '', 'undefined', null, '1', '1476338869605.png', '2016-10-13 14:07:49', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('145', '165', '1', '', 'undefined', null, '1', '1476340411349.png', '2016-10-13 14:33:31', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('146', '166', '1', '', 'undefined', null, '1', '1476341350726.png', '2016-10-13 14:49:10', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('147', '166', '2', '', 'undefined', null, '1', '1476341359163.png', '2016-10-13 14:49:19', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('148', '165', '2', 'å²å²æ¸§å²å²å', 'undefined', null, '1', '1476341476777.png', '2016-10-13 14:51:16', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('149', '169', '1', '', 'undefined', null, '1', '1476342358407.png', '2016-10-13 15:05:58', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('150', '170', '1', '', 'undefined', null, '1', '1476342369185.png', '2016-10-13 15:06:09', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('151', '168', '1', '', 'undefined', null, '1', '1476345191349.png', '2016-10-13 15:53:11', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('152', '168', '2', '', 'undefined', null, '1', '1476345194517.png', '2016-10-13 15:53:14', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('153', '168', '3', '', 'undefined', null, '1', '1476345197375.png', '2016-10-13 15:53:17', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('154', '106', '1', '', 'undefined', null, '1', '1476428229182.png', '2016-10-14 14:57:09', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('155', '106', '2', '', 'undefined', null, '1', '1476428777406.png', '2016-10-14 15:06:17', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('156', '106', '3', '', 'undefined', null, '1', '1476428781457.png', '2016-10-14 15:06:21', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('157', '124', '1', '', 'undefined', null, '1', '1476429874461.png', '2016-10-14 15:24:34', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('158', '124', '2', '', 'undefined', null, '1', '1476429878255.png', '2016-10-14 15:24:38', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('159', '123', '1', '', 'undefined', null, '1', '1476430073409.png', '2016-10-14 15:27:53', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('160', '126', '1', '', 'undefined', null, '1', '1476430933886.png', '2016-10-14 15:42:13', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('161', '121', '10', '', 'undefined', null, '1', '1476617665122.png', '2016-10-16 19:34:25', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('162', '121', '11', '', 'undefined', null, '1', '1476617747152.png', '2016-10-16 19:35:47', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('163', '201', '1', '', 'undefined', null, '1', '1476623255236.png', '2016-10-16 21:07:35', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('164', '0', '1', '', 'undefined', null, '1', '1476626181746.png', '2016-10-16 21:56:21', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('165', '0', '2', '', 'undefined', null, '1', '1476626185788.png', '2016-10-16 21:56:25', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('166', '184', '5', '立志将公司塑造成全', 'undefined', null, '1', '1476707852393.png', '2016-10-17 20:37:34', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('167', '184', '6', '荣誉奖项', 'undefined', null, '1', '1476711760726.png', '2016-10-17 21:42:40', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('169', '245', '2', '', 'undefined', null, '1', '1476794511034.png', '2016-10-18 20:41:51', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('170', '247', '1', '', 'undefined', null, '1', '1477359574603.png', '2016-10-25 09:39:34', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('171', '248', '1', '2016年第一版', '51CTO下载-Lucene实战(第2版)PDF高清中文版.pdf', '天虹商场：2016年3月第一版公司章程天虹商场：2016年3月第一版公司章程', '8', '', '2016-10-25 09:53:37', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('172', '248', '2', '2016年第一版1', '中文.pdf', '天虹商场：2016年3月第一版公司章程天虹商场：2016年3月第二版公司章程', '8', '', '2016-10-25 15:16:51', '1', '2016-10-25 15:17:08', '1', '0', null, null, null);
INSERT INTO `t_picture` VALUES ('173', '248', '3', '2016年第一版13', '中文.pdf', '2016年第一版1333333333', '8', '', '2016-10-25 15:17:25', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('174', '248', '4', '2016年第一版144444444444', '中文.pdf', '2016年第一版14444444444444', '8', '', '2016-10-25 15:17:35', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('175', '248', '5', '2016年第一版15555555555555', '中文.pdf', '2016年第一版1555555555555', '8', '', '2016-10-25 15:17:48', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('176', '248', '6', '2016年第一版166666666', '中文.pdf', '2016年第一版1666666666', '8', '', '2016-10-25 15:17:59', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('177', '248', '7', '2016年第一版177777777', '中文.pdf', '2016年第一版17777777777', '8', '', '2016-10-25 15:18:16', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('178', '248', '8', '2016年第一版18888888888888', '中文.pdf', '2016年第一版188888888888888', '8', '', '2016-10-25 15:18:27', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('179', '247', '2', '法律法规内幕交易警示教育展电子展连接内幕交易警示法律法规内幕交易警示教育展电子展连接内幕交易警示', 'undefined', null, '1', '1477385141791.png', '2016-10-25 16:45:41', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('180', '278', '1', '', 'undefined', null, '1', '1477461502751.png', '2016-10-26 13:58:22', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('181', '278', '2', '', 'undefined', null, '1', '1477461505252.png', '2016-10-26 13:58:25', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('182', '279', '1', '', 'undefined', null, '1', '1477461513566.png', '2016-10-26 13:58:33', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('183', '279', '2', '', 'undefined', null, '1', '1477461524837.png', '2016-10-26 13:58:44', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('184', '279', '3', '', 'undefined', null, '1', '1477461529616.png', '2016-10-26 13:58:49', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('185', '279', '4', '', 'undefined', null, '1', '1477461550339.png', '2016-10-26 13:59:10', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('186', '279', '5', '', 'undefined', null, '1', '1477461559972.png', '2016-10-26 13:59:19', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('187', '182', '1', '', 'undefined', null, '1', '1477461792497.png', '2016-10-26 14:03:12', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('189', '266', '2', '', 'undefined', null, '1', '1477462941152.png', '2016-10-26 14:22:21', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('190', '267', '1', '', 'undefined', null, '1', '1477463242391.png', '2016-10-26 14:27:22', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('191', '268', '1', '', 'undefined', null, '1', '1477463282426.png', '2016-10-26 14:28:02', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('192', '280', '1', '', 'undefined', null, '1', '1477463319062.png', '2016-10-26 14:28:39', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('193', '280', '2', '', 'undefined', null, '1', '1477463324582.png', '2016-10-26 14:28:44', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('194', '282', '1', '', 'undefined', null, '1', '1477463410075.png', '2016-10-26 14:30:10', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('195', '282', '2', '', 'undefined', null, '1', '1477463413507.png', '2016-10-26 14:30:13', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('196', '282', '3', '', 'undefined', null, '1', '1477463416099.png', '2016-10-26 14:30:16', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('197', '282', '4', '', 'undefined', null, '1', '1477463418570.png', '2016-10-26 14:30:18', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('198', '282', '5', '', 'undefined', null, '1', '1477463421320.png', '2016-10-26 14:30:21', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('199', '282', '6', '', 'undefined', null, '1', '1477463423754.png', '2016-10-26 14:30:23', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('200', '282', '7', '', 'undefined', null, '1', '1477463434664.png', '2016-10-26 14:30:34', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('201', '282', '8', '', 'undefined', null, '1', '1477463437180.png', '2016-10-26 14:30:37', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('202', '282', '9', '', 'undefined', null, '1', '1477463439793.png', '2016-10-26 14:30:39', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('203', '282', '10', '', 'undefined', null, '1', '1477463443087.png', '2016-10-26 14:30:43', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('204', '282', '11', '', 'undefined', null, '1', '1477463446205.png', '2016-10-26 14:30:46', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('205', '283', '1', '', 'undefined', null, '1', '1477463460114.png', '2016-10-26 14:31:00', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('206', '283', '2', '', 'undefined', null, '1', '1477463463052.png', '2016-10-26 14:31:03', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('207', '264', '1', '', 'undefined', null, '1', '1477463687756.png', '2016-10-26 14:34:47', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('208', '275', '1', '', 'undefined', null, '1', '1477463703913.png', '2016-10-26 14:35:03', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('209', '294', '1', '', 'undefined', null, '1', '1477464277181.png', '2016-10-26 14:44:37', '1', null, null, '0', null, null, null);

-- ----------------------------
-- Table structure for `t_recruit_interaction`
-- ----------------------------
DROP TABLE IF EXISTS `t_recruit_interaction`;
CREATE TABLE `t_recruit_interaction` (
  `id` int(11) NOT NULL COMMENT 'id',
  `question` varchar(1024) DEFAULT NULL COMMENT '问题',
  `answer` varchar(1024) DEFAULT NULL COMMENT '回答',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_show` int(1) DEFAULT NULL COMMENT '是否显示，1显示，0不显示',
  `faq_type` char(10) DEFAULT NULL COMMENT '互动类型：',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='互动FAQ';

-- ----------------------------
-- Records of t_recruit_interaction
-- ----------------------------

-- ----------------------------
-- Table structure for `t_recruit_job`
-- ----------------------------
DROP TABLE IF EXISTS `t_recruit_job`;
CREATE TABLE `t_recruit_job` (
  `id` int(11) NOT NULL COMMENT '编号',
  `job_name` varchar(64) DEFAULT NULL COMMENT '职位名称',
  `job_no` bigint(20) DEFAULT NULL COMMENT '职位编号',
  `department` varchar(64) DEFAULT NULL COMMENT '部门:枚举',
  `area` varchar(64) DEFAULT NULL COMMENT '工作地点:关联地点',
  `job_type` char(16) DEFAULT NULL COMMENT '工作类型:枚举',
  `job_category` varchar(64) DEFAULT NULL COMMENT '岗位类别:枚举',
  `num` int(5) DEFAULT NULL COMMENT '招聘人数',
  `salary_max` int(10) DEFAULT NULL COMMENT '月薪上限',
  `salary_min` int(10) DEFAULT NULL COMMENT '月薪下限',
  `publish_date` date DEFAULT NULL COMMENT '发布日期',
  `recuit_type` varchar(64) DEFAULT NULL COMMENT '招聘类型:社招,校招',
  `job_descption` varchar(1024) DEFAULT NULL COMMENT '职位描述',
  `require_age` int(5) DEFAULT NULL COMMENT '要求年龄',
  `require_years` int(5) DEFAULT NULL COMMENT '要求年限',
  `require_en` varchar(32) DEFAULT NULL COMMENT '要求英语等级',
  `require_cn` varchar(32) DEFAULT NULL COMMENT '要求汉语程度',
  `require_yy` varchar(32) DEFAULT NULL COMMENT '要求粤语程度',
  `require_other` varchar(64) DEFAULT NULL COMMENT '要求其他',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` int(11) DEFAULT NULL COMMENT '创建者',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` int(11) DEFAULT NULL COMMENT '更新者',
  `is_show` int(1) DEFAULT NULL COMMENT '是否显示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='招聘-职位表';

-- ----------------------------
-- Records of t_recruit_job
-- ----------------------------

-- ----------------------------
-- Table structure for `t_recruit_qustion`
-- ----------------------------
DROP TABLE IF EXISTS `t_recruit_qustion`;
CREATE TABLE `t_recruit_qustion` (
  `id` int(11) NOT NULL COMMENT 'id',
  `question` varchar(258) DEFAULT NULL COMMENT '问题',
  `name` varchar(64) DEFAULT NULL COMMENT '姓名',
  `email` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机',
  `orgrazation` varchar(128) DEFAULT NULL COMMENT '公司机构',
  `detail` varchar(1024) DEFAULT NULL COMMENT '问题描述',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='提问';

-- ----------------------------
-- Records of t_recruit_qustion
-- ----------------------------

-- ----------------------------
-- Table structure for `t_recruit_resume`
-- ----------------------------
DROP TABLE IF EXISTS `t_recruit_resume`;
CREATE TABLE `t_recruit_resume` (
  `id` int(11) NOT NULL COMMENT '编号',
  `user_id` int(11) DEFAULT NULL COMMENT '用户编号',
  `name` varchar(64) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(4) DEFAULT NULL COMMENT '性别：男，女',
  `birth_date` date DEFAULT NULL COMMENT '出生日期',
  `phone` int(16) DEFAULT NULL COMMENT '手机号码',
  `email` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `school` varchar(128) DEFAULT NULL COMMENT '毕业学校',
  `major` varchar(64) DEFAULT NULL COMMENT '专业',
  `graduate_date` date DEFAULT NULL COMMENT '毕业日期',
  `oranazation` varchar(128) DEFAULT NULL COMMENT '公司机构',
  `work_years` int(4) DEFAULT NULL COMMENT '工作年限',
  `current_palace` varchar(64) DEFAULT NULL COMMENT '目前所在地',
  `degrees` varchar(64) DEFAULT NULL COMMENT '学历',
  `spare_phone` int(16) DEFAULT NULL COMMENT '备用手机号码',
  `nation` varchar(64) DEFAULT NULL COMMENT '民族',
  `id_card` varchar(32) DEFAULT NULL COMMENT '身份证号码',
  `id_card_add` varchar(128) DEFAULT NULL COMMENT '身份证地址',
  `background` varchar(512) DEFAULT NULL COMMENT '背景说明',
  `intention` varchar(512) DEFAULT NULL COMMENT '求职意向',
  `work_descption` varchar(512) DEFAULT NULL COMMENT '工作描述',
  `project_history` varchar(512) DEFAULT NULL COMMENT '项目描述',
  `train_history` varchar(512) DEFAULT NULL COMMENT '培训经历',
  `language_desc` varchar(512) DEFAULT NULL COMMENT '语言说明',
  `reward` varchar(512) DEFAULT NULL COMMENT '奖励',
  `ohter_info` varchar(512) DEFAULT NULL COMMENT '其他信息',
  `certificate` varchar(512) DEFAULT NULL COMMENT '证书',
  `personal_like` varchar(512) DEFAULT NULL COMMENT '爱好',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `resume_type` varchar(8) DEFAULT NULL COMMENT '简历类型：英文，汉字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='简历信息';

-- ----------------------------
-- Records of t_recruit_resume
-- ----------------------------

-- ----------------------------
-- Table structure for `t_recruit_resume_delivery`
-- ----------------------------
DROP TABLE IF EXISTS `t_recruit_resume_delivery`;
CREATE TABLE `t_recruit_resume_delivery` (
  `id` int(11) NOT NULL COMMENT 'id',
  `resume_id` int(11) DEFAULT NULL COMMENT '简历编号',
  `job_id` int(11) DEFAULT NULL,
  `delivery_time` datetime DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL,
  `job_name` varchar(64) DEFAULT NULL,
  `deparment` varchar(64) DEFAULT NULL,
  `area` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='简历投递';

-- ----------------------------
-- Records of t_recruit_resume_delivery
-- ----------------------------

-- ----------------------------
-- Table structure for `t_recruit_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_recruit_user`;
CREATE TABLE `t_recruit_user` (
  `id` int(11) NOT NULL COMMENT 'id',
  `username` varchar(64) DEFAULT NULL COMMENT '用户名',
  `password` varchar(64) DEFAULT NULL COMMENT '密码',
  `source` varchar(16) DEFAULT NULL COMMENT '来源：qq,微信,注册',
  `able` int(1) DEFAULT NULL COMMENT '是否可用，1可用，0不可用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='招聘用户';

-- ----------------------------
-- Records of t_recruit_user
-- ----------------------------

-- ----------------------------
-- Table structure for `t_resume_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `t_resume_attachment`;
CREATE TABLE `t_resume_attachment` (
  `id` int(11) NOT NULL COMMENT '编号',
  `resume_id` int(11) DEFAULT NULL COMMENT '简历编号',
  `file_path` varchar(64) DEFAULT NULL COMMENT '技能',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `able` varchar(16) DEFAULT NULL COMMENT '是否可用:枚举',
  `file_name` varchar(64) DEFAULT NULL COMMENT '文件名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='简历附件';

-- ----------------------------
-- Records of t_resume_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for `t_resume_education_history`
-- ----------------------------
DROP TABLE IF EXISTS `t_resume_education_history`;
CREATE TABLE `t_resume_education_history` (
  `id` int(11) NOT NULL COMMENT '编号',
  `resume_id` int(11) DEFAULT NULL COMMENT '简历编号',
  `major` varchar(64) DEFAULT NULL COMMENT '学历',
  `start_date` date DEFAULT NULL COMMENT '开始时间',
  `end_date` date DEFAULT NULL COMMENT '结束时间',
  `school` varchar(64) DEFAULT NULL COMMENT '毕业院校',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教育经历';

-- ----------------------------
-- Records of t_resume_education_history
-- ----------------------------

-- ----------------------------
-- Table structure for `t_resume_language`
-- ----------------------------
DROP TABLE IF EXISTS `t_resume_language`;
CREATE TABLE `t_resume_language` (
  `id` int(11) NOT NULL COMMENT '编号',
  `resume_id` int(11) DEFAULT NULL COMMENT '简历编号',
  `language` varchar(64) DEFAULT NULL COMMENT '技能',
  `level` varchar(16) DEFAULT NULL COMMENT '等级:枚举',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `tan_level` varchar(16) DEFAULT NULL COMMENT '口语水平',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='语言';

-- ----------------------------
-- Records of t_resume_language
-- ----------------------------

-- ----------------------------
-- Table structure for `t_resume_skill`
-- ----------------------------
DROP TABLE IF EXISTS `t_resume_skill`;
CREATE TABLE `t_resume_skill` (
  `id` int(11) NOT NULL COMMENT '编号',
  `resume_id` int(11) DEFAULT NULL COMMENT '简历编号',
  `skill` varchar(64) DEFAULT NULL COMMENT '技能',
  `level` varchar(16) DEFAULT NULL COMMENT '熟练程度:枚举',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='技能';

-- ----------------------------
-- Records of t_resume_skill
-- ----------------------------

-- ----------------------------
-- Table structure for `t_resume_work_history`
-- ----------------------------
DROP TABLE IF EXISTS `t_resume_work_history`;
CREATE TABLE `t_resume_work_history` (
  `id` int(11) NOT NULL COMMENT '编号',
  `resume_id` int(11) DEFAULT NULL COMMENT '简历编号',
  `position` varchar(64) DEFAULT NULL COMMENT '职位',
  `start_date` date DEFAULT NULL COMMENT '开始时间',
  `end_date` date DEFAULT NULL COMMENT '结束时间',
  `address` varchar(64) DEFAULT NULL COMMENT '地址',
  `industry_type` varchar(64) DEFAULT NULL COMMENT '行业类型：枚举',
  `oranazation_type` varchar(32) DEFAULT NULL COMMENT '公司性质：枚举',
  `report_obj` varchar(64) DEFAULT NULL COMMENT '汇报对象',
  `subordinate_num` int(10) DEFAULT NULL COMMENT '下属人数',
  `payment` varchar(128) DEFAULT NULL COMMENT '职位薪水',
  `work_duty` int(4) DEFAULT NULL COMMENT '工作职责',
  `achievement_desc` varchar(512) DEFAULT NULL COMMENT '业绩描述',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `orgnazation` varchar(64) DEFAULT NULL COMMENT '工作单位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作经历';

-- ----------------------------
-- Records of t_resume_work_history
-- ----------------------------

-- ----------------------------
-- Table structure for `t_store_category`
-- ----------------------------
DROP TABLE IF EXISTS `t_store_category`;
CREATE TABLE `t_store_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) DEFAULT NULL COMMENT '1商品；2最新活动；3新品上市；4预购专区；5便利服务；6加盟我们；7关于我们',
  `name` varchar(1024) DEFAULT NULL,
  `en_name` varchar(1024) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `backup1` varchar(1024) DEFAULT NULL,
  `backup2` varchar(1024) DEFAULT NULL,
  `backup3` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分类';

-- ----------------------------
-- Records of t_store_category
-- ----------------------------

-- ----------------------------
-- Table structure for `t_store_new_activity`
-- ----------------------------
DROP TABLE IF EXISTS `t_store_new_activity`;
CREATE TABLE `t_store_new_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(1024) DEFAULT NULL,
  `picture` varchar(1024) DEFAULT NULL,
  `content` text,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `backup1` varchar(1024) DEFAULT NULL,
  `backup2` varchar(1024) DEFAULT NULL,
  `backup3` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='最新活动';

-- ----------------------------
-- Records of t_store_new_activity
-- ----------------------------
INSERT INTO `t_store_new_activity` VALUES ('1', '9', '测试活动', null, '<p>\n<strong>5.八月份发射的“墨子”号量子卫星直接推动民用技术的大跨步发展</strong></p><p>\n量子卫星将推动“量子互联网”研究，同时“墨子号”还将提升中国军队在未来信息作战中打击能力，提升未来打击系统中所需要的量子密钥、通信系统和网络能力！量子密钥理论上无法被复制、窃取或操纵（解气！马六甲遭遇不会再出现了）。</p><p>\n总之，现在美国的GPS民用领域已经无所不在，中国的北斗系统在G5通讯方面一定会引领国际潮流，期待早日到来，对于大家都是一个非常好的消息。</p>', '2016-09-06 21:14:29', '1', '2016-10-13 15:05:15', '1', '0', null, null, null);
INSERT INTO `t_store_new_activity` VALUES ('2', '7', '主题活动标题', null, '<h2 style=\"pADDinG-BoTToM: 0px; TexT-TrAnsForM: none; BACKGroUnD-CoLor: rgb(252,251,240); TexT-inDenT: 0px; MArGin: 0px; pADDinG-LeFT: 0px; pADDinG-riGHT: 0px; FonT: bold 28px \'Microsoft Yahei\', 宋体; WHiTe-spACe: normal; LeTTer-spACinG: normal; CoLor: rgb(0,0,0); WorD-spACinG: 0px; pADDinG-Top: 5px; -webkit-text-stroke-width: 0px\" align=\"center\">量子卫星墨子号在轨测试顺利 11月开始科学实验</h2><p>\n&nbsp;<br></p><p>\n&nbsp;<br></p><p>\n&nbsp;<br></p><p>\n&nbsp;<br></p><p>\n全球首颗量子科学实验卫星“墨子号”正在开展为期三个月的在轨测试，目前状态良好，预计11月中旬完成全部在轨测试工作，随后卫星将交付使用，正式开始科学实验。</p><p>\n《人民日报》10月12日报道，当日在北京举行了量子科学实验卫星成果新闻发布会，量子卫星首席科学家潘建伟院士在会上介绍，量子卫星在轨测试包括卫星平台测试、有效载荷测试、天地链路测试三部分，目前卫星平台测试和有效载荷测试已经完成，天地链路测试部分完成。</p><p align=\"center\"><img src=\"http://i.guancha.cn/news/2016/10/13/20161013073511709.jpg\" alt=\"量子卫星墨子号在轨测试顺利&nbsp;<wbr>11月开始科学实验\" title=\"量子卫星墨子号在轨测试顺利&nbsp;<wbr>11月开始科学实验\" class=\"fr-fin\"></p><p align=\"center\"><span data-fr-verified=\"true\">\n潘建伟在<span data-fr-verified=\"true\">量子科学实验卫星成果新闻发布会</span>上介绍量子卫星与兴隆站建立链路</span></p><p>\n卫星在轨测试结果显示，卫星平台方面，电池组状态正常，太阳帆板供电正常；遥控成功率100%；卫星姿控系统运行正常，性能稳定。有效载荷方面，各单机开机检查，状态均正常；载荷内部光轴匹配精度满足任务要求；完成载荷单光子探测专项测试，指标符合预期；完成对所有地面站的跟瞄，稳定性良好，跟踪精度满足要求；纠缠源工作正常，光源亮度等指标满足任务要求。</p><p>\n量子科学实验卫星系统总师朱振才说：“在十分关键的天地链路测试方面，卫星完成了与兴隆站、德令哈站、南山站的单站跟瞄测试，建立了天地链路；同时还完成了南山站与德令哈双站跟瞄测试，建立了双边纠缠光链路；此外完成与阿里站的跟瞄测试，建立了隐形传态光链路。”</p><p align=\"center\"><img src=\"http://i.guancha.cn/news/2016/10/13/20161013073701139.jpg\" alt=\"量子卫星墨子号在轨测试顺利&nbsp;<wbr>11月开始科学实验\" title=\"量子卫星墨子号在轨测试顺利&nbsp;<wbr>11月开始科学实验\" action-data=\"http%3A%2F%2Fi.guancha.cn%2Fnews%2F2016%2F10%2F13%2F20161013073701139.jpg\" action-type=\"show-slide\" class=\"fr-fin\"></p><p align=\"center\"><span data-fr-verified=\"true\">\n量子卫星与阿里站建立链路</span></p><p>\n“三种不同链路的打通，为量子卫星的三大科学任务打下了基础。目前我们正在进行参数调整和优化，接下来的测试中将寻找最佳工作点以及积累有效数据。”潘建伟说。</p><p>\n量子科学实验卫星“墨子号”的成功发射，将使我国在世界上首次实现卫星和地面之间的量子通信，构建天地一体化的量子科学实验体系。卫星和地面站将共同执行三大科学任务，分别是高速星地量子密钥分发；星地量子纠缠分发，实现大尺度量子非定域性检验；星地量子隐形传态。</p>', '2016-09-06 21:20:17', '1', '2016-10-13 14:51:58', '1', '0', null, null, null);
INSERT INTO `t_store_new_activity` VALUES ('3', '31', '静音', null, '<p>静音<br></p>', '2016-09-10 09:17:04', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_new_activity` VALUES ('4', '24', '加盟优势', null, '<p style=\"text-align: left;\">\n\n加盟优势\n\n\n\n</p><p>天虹商场股份有限公司（股票简称：天虹商场，股票代码：002419）是中外合资的连锁零售企业，其控股股东是中国航空工业集团下属的中国航空技术深圳有限公司。</p><p>\n\n  天虹便利店的发展\n\n    </p><p><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8080/th-admin/download/png?fileName=1474076870220.png\" width=\"300\"></p><p><br></p><p>天虹商场股份有限公司（股票简称：天虹商场，股票代码：002419）是中外合资的连锁零售企业，其控股股东是中国航空工业集团下属的中国航空技术深圳有限公司。</p><p>天虹商场股份有限公司（股票简称：天虹商场，股票代码：002419）是中外合资的连锁零售企业，其控股股东是中国航空工业集团下属的中国航空技术深圳有限公司。</p><p>天虹商场股份有限公司（股票简称：天虹商场，股票代码：002419）是中外合资的连锁零售企业，其控股股东是中国航空工业集团下属的中国航空技术深圳有限</p><p><img class=\"fr-fil\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8080/th-admin/download/png?fileName=1474076946818.png\" width=\"200\"></p><p><br></p><p><br></p><p><br></p><p><br></p><p><img class=\"fr-fil\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8080/th-admin/download/png?fileName=1474076979732.png\" width=\"184\"></p><p><img class=\"fr-fir\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8080/th-admin/download/png?fileName=1474076994820.png\" width=\"401\"></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p>天虹商场股份有限公司（股票简称：天虹商场，股票代码：002419）是中外合资的连锁零售企业，其控股股东是中国航空工业集团下属的中国航空技术深圳有限公司。</p><p>天虹商场股份有限公司（股票简称：天虹商场，股票代码：002419）是中外合资的连锁零售企业，其控股股东是中国航空工业集团下属的中国航空技术深圳有限公司。</p>', '2016-09-17 09:50:18', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_new_activity` VALUES ('5', '10', '', null, '<p><span data-fr-verified=\"true\" style=\"background-color: #F6B26B;\">抽奖活动 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></p><p><span data-fr-verified=\"true\" style=\"background-color: #F6B26B;\"><br></span></p><p><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1474269727041.png\" width=\"768\"></p><p><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1474269733595.png\" width=\"765\"></p><p><br></p>', '2016-09-19 15:22:54', '1', '2016-09-19 15:23:06', '1', '0', null, null, null);
INSERT INTO `t_store_new_activity` VALUES ('6', '14', '测试1', null, '<p>\n\n<span style=\"color: rgb(51, 51, 51); font-family: &quot; Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\" data-fr-verified=\"true\">我们所选配的有机蔬菜在整个生长期没有使用任何一种化学成分，是环保无污染的绿色蔬菜。</span>\n\n<br></p><p><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://192.168.163.114:8180/th-admin/download/png?fileName=1476340211338.png\" width=\"300\"></p><p><br></p><p><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1474274170994.png\" width=\"576\"></p><p><br></p><p style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">1.其皮中富含大量胶原蛋白和弹性蛋白，对于对抗衰老、延缓肌龄有一定功效。</p><p style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">2.富含不饱和脂肪酸，降低血液中胆固醇和甘油三酯；降低血液粘稠度，改善血液微循环；增强记忆力和思维能力。</p><p style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">3.有机黑猪肉中的维生素A能够维持正常视觉功能；维持骨骼正常发育，促进生长。</p><p><br></p>', '2016-09-19 16:36:31', '1', '2016-10-13 15:53:39', '1', '0', null, null, null);
INSERT INTO `t_store_new_activity` VALUES ('7', '15', '测试2', null, '<p><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://192.168.163.114:8180/th-admin/download/png?fileName=1476345237053.png\" width=\"300\"></p><p><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1474274551773.png\" width=\"300\"></p><p><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1474274561734.png\" width=\"300\"></p><p><em>深圳通</em></p><p>方便您的出行</p><p><em>深圳通</em></p><p>方便您的出行</p><p><em>深圳通</em></p><p>方便您的出行</p><p><em>深圳通</em></p><p><em>深圳通</em></p><p>方便您的出行</p><p><em>深圳通</em></p><p>方便您的出行</p><p><em>深圳通</em></p>', '2016-09-19 16:42:42', '1', '2016-10-13 15:53:58', '1', '0', null, null, null);
INSERT INTO `t_store_new_activity` VALUES ('8', '8', '英武100：再聊聊中国北斗卫星系统还有哪些应用？', null, '<p>\n相关话题本已经写过，但是还是有战友聊起来，今天简要说一下。</p><p>\n\n[ 转自铁血社区 http://bbs.tiexue.net/post_12192955_1.html/\n]\n\n</p><p>\n&nbsp;<br></p><p>\n北斗系统应用领域主要有：</p><p>\n<b>1.</b><b>定位、通讯、授时以及未来与我国空间站的联络</b>，当然平时会分为军用、民用两个用途，但在作战（或局部冲突中）则是非常重要的战略物资和手段：结合量子卫星保证情报不泄密！！！北斗海聊主要是北斗系统应有与民用的一种尝试，目前主要是用于渔民和海上多些，真正落地到老百姓手里，还需要政府下大力气啊！</p><p>\n<b>2.</b><b>北斗系统艰难的自我革新</b></p><p>\n记得在2008年之前使用北斗手持机进行定位和信息传输，因为机子反应慢，但是自己还对这个东西满腹牢骚，感觉地方使用的手机多方便啊!还记得当初军队内部对于北斗一代的宣传：美国的GPS只能实现定位功能，中国的北斗既能通信有可以定位！但事实上我们的通信功能比不上海事卫星，定位功能差人家GPS好几条街。就是说：通信和定位，都可以干，都干不好。</p><p>\n但是在2008年汶川大地震，英武当时带领部队到达的四川省广元市青川县，手持北斗机终端（军用版）还是发挥了巨大的作用：定位和短信能力成了我们与总指挥部取得联系的唯一手段。因为短信、QQ、电话等手段通通没用，当时很多基站和光纤受到大面积损坏，根本无法使用。当时印象最深的就是移动公司加班加点在维修基站，当然在此期间我们能够用的联系方式只有北斗手持机。对于手机真成了移动“移不动”、联通“连不上”、电信“不可信”了！</p><p>\n后来有机会读研接触了很多这方面专家才知道：其实中国当初因为没有钱，但对于定位导航卫星一直在研究和论证中。80年代提出了双星定位方案，被认为是最经济优选方案，但是因为经济原因，一直搁置很久。1991年海湾战争美国的GPS在作战中的成功应用，使我决策层意识到日后打仗没有这些定位导航系统真的不行，所以成芳允院士提出的双星定位方案得以马山实施。</p><p>\n\n[ 转自铁血社区 http://www.tiexue.net/ ]\n\n</p><p>\n&nbsp;<br></p><p>\n双星定位方案中需要用户自测高程，并将结果作为第三个坐标，这样跟天上的两个星实现了三星定位。又很会说：为什么不直接发射三颗星？没钱！</p><p>\n为了实现所谓的定位功能，就必须选择高轨道静止卫星，因为：只有静止的高轨道卫星才能实现两颗星在高轨道对中国广大地区实现概略全时悬停在高空，与自测高程实现真正的三星定位。当然，我们起步研制北斗定位导航系统的时候，国际海事卫星和GPS卫星系统已经相当成熟了。所以，北斗相比较就显得什么（功能）都想有，什么都不是的尴尬局面。美国在1978年发射了第一颗卫星，全系统在1995年投入运行，现有30颗卫星，分为军用和民用两种定位模式，其中的民用向全球开放。</p><p>\n<b>3.</b><b>北斗系统建设的艰难历史选择</b><b>——</b><b>战时作用太明显了</b></p><p>\n首先在这里讲一个英武当时在GUOFANG某军校听一位将军讲过的一个故事：在上世纪90年代，中国某大型货轮要经过马六甲海峡将从中东国家购买的能源送回国家，但是就在马六甲海峡，被美国军方要求货轮靠岸接受检查，说是：怀疑货轮上有违禁物品，还扯了很多其他问题。当时中方货轮主人还是很硬气，坚决不让美国大兵到船上进行检查。毕竟：让美国人上船就相当于侵犯我国领土。结果，美国通过自己开的后台关闭了该区域的民用GPS定位系统，直接将中国货轮顿时失去了方向，根本不敢再往前面行动一步，最后耻辱地接受了美方的检查，最后看着美国大兵直接爬上悬梯乘着直升机飞离货轮……然后，没多长时间货轮又能够定位导航了……</p><p>\n北斗一代的用户体验非常差，这时中国看上了欧洲的伽利略全球定位导航系统，说白了。欧洲不想将自己的安全指望美国来保护，也不会放心让美国负责的。但是欧洲任何一个单个国家掏不起钱，这个时候欧洲看上了中国这个“金主”。当时中国很大方的掏了2亿入伙费。但是随着合作深入，中国发现印度、日本都加入进来……多出钱无所谓，但是日本、印度参加进来，就意味着：要跟这两国国家共同使用相同的全球定位系统，真打起仗来“情报”还叫做“情报”吗？</p><p>\n<b>4.</b><b>北斗系统民用运用方面正在加大力度</b></p><p>\n\n[ 转自铁血社区 http://bbs.tiexue.net/ ]\n\n</p><p>\n&nbsp;<br></p><p>\n中国北斗卫星发射的节奏和组网速度，让欧盟傻眼了，甚至通过北约领导人——美国，要求中国慢些等等欧洲！哎，北约真的不要脸啊！中国当然不理会，按照自己的既定节奏继续打卫星！</p><p>\n中国现在已经开始在亚太地区组网，这个可以理解，中国上空卫星最多啊，所以亚太地区很多国家现在都在琢磨着用中国的北斗二代系统！当然，美洲的加拿大肯定选择GPS。自然，在渔业应用空间更大，据说对于北斗卫星短信收费是3毛每条，主要是象征性收取费用，国家有补贴。</p><p>\n2015年12月16日，第二届世界互联网大会在浙江乌镇东栅景区内开幕，20多年前中国政府选派的一名通信专业人士到国际电信联盟工作，如见已经成为秘书长，他就是赵厚麟。在2015年1月26日李克强还专门接见了找秘书长……总理要聊什么？5G和北斗！刚刚结束的G20据说用的就是5G信号——说白了，国际电信联盟就是制定国际电信规则和标准的国际组织，所以5G关键技术、频率范围和技术标准、卫星轨道和频率申请，都是业内事情，自然未来5G标准里面中国元素相信会有很多。</p><p>\n<b>5.</b><b>八月份发射的</b><b>“</b><b>墨子</b><b>”</b><b>号量子卫星直接推动民用技术的大跨步发展</b></p><p>\n量子卫星将推动“量子互联网”研究，同时“墨子号”还将提升中国军队在未来信息作战中打击能力，提升未来打击系统中所需要的量子密钥、通信系统和网络能力！量子密钥理论上无法被复制、窃取或操纵（解气！马六甲遭遇不会再出现了）。</p><p>\n总之，现在美国的GPS民用领域已经无所不在，中国的北斗系统在G5通讯方面一定会引领国际潮流，期待早日到来，对于大家都是一个非常好的消息。</p>', '2016-10-13 14:53:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_new_activity` VALUES ('9', '30', '', null, '<p>\n<strong>5.八月份发射的“墨子”号量子卫星直接推动民用技术的大跨步发展</strong></p><p>\n量子卫星将推动“量子互联网”研究，同时“墨子号”还将提升中国军队在未来信息作战中打击能力，提升未来打击系统中所需要的量子密钥、通信系统和网络能力！量子密钥理论上无法被复制、窃取或操纵（解气！马六甲遭遇不会再出现了）。</p><p>\n总之，现在美国的GPS民用领域已经无所不在，中国的北斗系统在G5通讯方面一定会引领国际潮流，期待早日到来，对于大家都是一个非常好的消息。</p>', '2016-10-13 15:06:15', '1', null, null, '0', null, null, null);

-- ----------------------------
-- Table structure for `t_store_new_product`
-- ----------------------------
DROP TABLE IF EXISTS `t_store_new_product`;
CREATE TABLE `t_store_new_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL COMMENT '类型:1新品推荐,2进口新品推荐',
  `name` varchar(1024) DEFAULT NULL,
  `picture` varchar(1024) DEFAULT NULL,
  `describer` varchar(1024) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `backup1` varchar(1024) DEFAULT NULL,
  `backup2` varchar(1024) DEFAULT NULL,
  `backup3` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='新品上市';

-- ----------------------------
-- Records of t_store_new_product
-- ----------------------------
INSERT INTO `t_store_new_product` VALUES ('1', '36', '费列罗品巧克力', '1476341017723.png', '开创多层式用料，外面铺满巧克力碎果仁，里面有威化、软巧克力和一粒完整的榛子。', '2016-09-01 15:49:28', '1', '2016-10-13 14:43:38', '1', '0', null, null, null);
INSERT INTO `t_store_new_product` VALUES ('2', '37', '巧克力', '1473517382983.png', '开创多层式用料，外面铺满巧克力碎果仁，里面有威化、软巧克力和一粒完整的榛子。', '2016-09-01 16:02:00', '1', '2016-09-10 22:23:03', '1', '0', null, null, null);
INSERT INTO `t_store_new_product` VALUES ('3', '37', '巧克力01', '1473516834124.png', '，外面铺满巧克力碎果仁，里面有威化、软巧克力和一粒完整的榛', '2016-09-10 22:14:03', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_new_product` VALUES ('4', '36', '巧克力01', '1476341029984.png', '式用料，外面铺满巧克力碎果仁，里面有威化、软巧克力和一粒完整的', '2016-09-11 08:20:44', '1', '2016-10-13 14:43:50', '1', '0', null, null, null);
INSERT INTO `t_store_new_product` VALUES ('5', '36', '巧克力02', '1476341037620.png', '仁，里面有威化、软巧克力和一粒完整的', '2016-09-11 08:21:01', '1', '2016-10-13 14:43:58', '1', '0', null, null, null);
INSERT INTO `t_store_new_product` VALUES ('6', '36', '巧克力03', '1476341048526.png', '用料，外面铺满巧克力碎果仁，里面有威化、软巧克力和一粒完整的榛', '2016-09-11 08:22:53', '1', '2016-10-13 14:44:08', '1', '0', null, null, null);
INSERT INTO `t_store_new_product` VALUES ('7', '36', '品巧克力04', '1476341055621.png', '用料，外面铺满巧克力碎果仁，里面有威化、软巧克力和一粒完整的榛子', '2016-09-11 08:23:12', '1', '2016-10-13 14:44:16', '1', '0', null, null, null);
INSERT INTO `t_store_new_product` VALUES ('8', '36', 'dddddddd', '1476341153743.png', 'ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', '2016-10-13 14:45:54', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_new_product` VALUES ('9', '36', '热热热热的的', '1476341411498.png', '地地道道的滴答滴答滴答滴答滴答', '2016-10-13 14:50:13', '1', null, null, '0', null, null, null);

-- ----------------------------
-- Table structure for `t_store_news`
-- ----------------------------
DROP TABLE IF EXISTS `t_store_news`;
CREATE TABLE `t_store_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `content` text,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `backup1` varchar(1024) DEFAULT NULL,
  `backup2` varchar(1024) DEFAULT NULL,
  `backup3` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_store_news
-- ----------------------------
INSERT INTO `t_store_news` VALUES ('1', '163', '圣诞小熊换购活动', '2016-09-01 11:38:10', '2016-09-30 12:38:10', '<ol><li><p><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://192.168.163.114:8180/th-admin/download/png?fileName=1476339031115.png\" width=\"300\"></p><p style=\"margin-left: 0px;\">\n\n任意消费满10元+15元换购圣诞小熊一只&nbsp;</p></li><li><p style=\"margin-left: 0px;\">参与门店：天虹微喔和万店通所有门店（不含加盟店）\n\n\n<br></p></li></ol>', '2016-09-19 11:39:05', '1', '2016-10-13 14:10:33', '1', '0', null, null, null);
INSERT INTO `t_store_news` VALUES ('2', '163', '偏爱圣诞季~积分\"五\"倍送', '2015-09-25 11:44:47', '2016-09-19 12:44:47', '<ol><li><p>\n\n12月1日至12月31日，逢周五持天虹会员卡消费（烟酒、服务项目不参加）在天虹微喔便利店消费即可享受五倍积分优惠。\n&nbsp;</p></li><li><p>参与门店：天虹微喔便利店（不含加盟店）\n\n\n<br></p></li></ol>', '2016-09-19 11:46:35', '1', '2016-09-19 12:05:11', '1', '0', null, null, null);
INSERT INTO `t_store_news` VALUES ('3', '163', '微信支付日', '2016-09-02 11:38:10', '2016-09-30 12:38:10', '<p style=\"margin-left: 0px;\">1、扫码送代金券3-188元（12.10-12.20）\n&nbsp;</p><p style=\"margin-left: 0px;\">活动规则：活动期间，用户在合作商户门店指定位置（包括门店促销人员胸贴、收银台海报、跳跳卡等）扫码即可领取最高金额为188元的现金抵扣券；活动期间每人3次机会，现金券可在门店购物微信支付直抵现金使用。代金券可在2015.12.31前通过微信支付-刷卡大于代金券面额即可使用，过期失效。&nbsp;</p><p style=\"margin-left: 0px;\">&nbsp;2、联合手机游戏12月狂欢——送游戏礼包（12.10-12.31）\n&nbsp;</p><p style=\"margin-left: 0px;\">活动规则：活动期间，用户在合作商户门店微信支付-刷卡一笔，即有机会获得各款游戏的专属礼包。每人随机获得（不限次数），礼包可到对应的游戏</p><p style=\"margin-left: 0px;\">\n\n<br></p>', '2016-09-19 11:57:26', '1', '2016-09-19 12:05:51', '1', '0', null, null, null);
INSERT INTO `t_store_news` VALUES ('4', '163', '免费定制台历', '2015-09-25 14:30:30', '2016-09-19 15:30:30', '<p>\n\n<span style=\"color: rgb(240, 130, 0); font-family: &quot; Microsoft Yahei&quot;, Arial, Simsun; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 26px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\" data-fr-verified=\"true\"></span>\n\n<span style=\"color: rgb(51, 51, 51); font-family: &quot; Microsoft Yahei&quot;, Arial, Simsun; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\" data-fr-verified=\"true\">关注\"天虹微喔\"微信公众号，点击底栏\"最新活动\"参与抽奖，中奖将获得免费定制台历一份（中奖用户需提供30张照片），数量有限，送完止。</span>\n\n\n<br></p>', '2016-09-19 14:30:41', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_news` VALUES ('5', '163', '测试001', '2015-09-25 14:30:44', '2016-09-19 15:30:44', '<p>\n\n1、扫码送代金券3-188元（12.10-12.20）\n&nbsp;</p><p>活动规则：活动期间，用户在合作商户门店指定位置（包括门店促销人员胸贴、收银台海报、跳跳卡等）扫码即可领取最高金额为188元的现金抵扣券；活动期间每人3次机会，现金券可在门店购物微信支付直抵现金使用。代金券可在2015.12.31前通过微信支付-刷卡大于代金券面额即可使用，过期失效。&nbsp;</p><p>&nbsp;2、联合手机游戏12月狂欢——送游戏礼包（12.10-12.31）\n&nbsp;</p><p>活动规则：活动期间，用户在合作商户门店微信支付-刷卡一笔，即有机会获得各款游戏的专属礼包。每人随机获得（不限次数），礼包可到对应的游戏中兑换。\n\n\n<br></p>', '2016-09-19 14:30:59', '1', null, null, '0', null, null, null);

-- ----------------------------
-- Table structure for `t_store_pre_buy`
-- ----------------------------
DROP TABLE IF EXISTS `t_store_pre_buy`;
CREATE TABLE `t_store_pre_buy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(1024) DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `weight` varchar(1024) DEFAULT NULL,
  `price` varchar(1024) DEFAULT NULL,
  `picture` varchar(1024) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `backup1` varchar(1024) DEFAULT NULL,
  `backup2` varchar(1024) DEFAULT NULL,
  `backup3` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='预购专区';

-- ----------------------------
-- Records of t_store_pre_buy
-- ----------------------------
INSERT INTO `t_store_pre_buy` VALUES ('1', '11', '011', '2016-10-13 15:05:41', '168g', '108元', '1476342340694.png', '2016-09-04 21:12:52', '1', '2016-10-13 15:05:41', '1', '0', null, null, null);
INSERT INTO `t_store_pre_buy` VALUES ('2', '12', '应季推荐001', '2016-09-15 00:00:00', '1068', '12', '1472994802927.png', '2016-09-04 21:13:23', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_pre_buy` VALUES ('3', '11', '0002151', '2016-09-13 00:00:00', '169g', '11', '1473553447746.png', '2016-09-11 08:24:11', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_pre_buy` VALUES ('4', '11', '蛋黄莲蓉', '2016-09-05 00:00:00', '165', '22', '1473554180504.png', '2016-09-11 08:36:23', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_pre_buy` VALUES ('5', '11', '巧克力02', '2016-09-17 09:44:54', '142', '12元', '1473553261253.png', '2016-09-17 09:41:09', '1', '2016-09-17 09:44:54', '1', '0', null, null, null);

-- ----------------------------
-- Table structure for `t_store_product`
-- ----------------------------
DROP TABLE IF EXISTS `t_store_product`;
CREATE TABLE `t_store_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(1024) DEFAULT NULL COMMENT '门店名称',
  `price` varchar(1024) DEFAULT NULL COMMENT '门店描述',
  `picture` varchar(1024) DEFAULT NULL COMMENT '门店所属区域',
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `backup1` varchar(1024) DEFAULT NULL,
  `backup2` varchar(1024) DEFAULT NULL,
  `backup3` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='商品';

-- ----------------------------
-- Records of t_store_product
-- ----------------------------
INSERT INTO `t_store_product` VALUES ('1', '1', '柱候牛腩饭1', '22元', '1476339117797.png', '2016-09-01 14:55:32', '1', '2016-10-13 14:11:58', '1', '0', null, null, null);
INSERT INTO `t_store_product` VALUES ('2', '4', '台北便当', '25元', '1472713594349.png', '2016-09-01 15:06:36', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_product` VALUES ('3', '36', '费列罗品巧克力', null, '1472715557413.png', '2016-09-01 15:39:18', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_product` VALUES ('4', '1', '柱候牛腩饭1', '33元', '1476339792077.png', '2016-09-10 21:06:20', '1', '2016-10-13 14:23:13', '1', '0', null, null, null);
INSERT INTO `t_store_product` VALUES ('5', '1', '柱候牛腩饭2', '55元', '1476340091577.png', '2016-09-10 21:06:45', '1', '2016-10-13 14:28:13', '1', '0', null, null, null);
INSERT INTO `t_store_product` VALUES ('6', '1', '柱候牛腩饭33', '33', '1473512813883.png', '2016-09-10 21:06:54', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_product` VALUES ('7', '1', '柱候牛腩饭55', '55', '1473512824322.png', '2016-09-10 21:07:04', '1', null, null, '0', null, null, null);

-- ----------------------------
-- Table structure for `t_store_service_join_about`
-- ----------------------------
DROP TABLE IF EXISTS `t_store_service_join_about`;
CREATE TABLE `t_store_service_join_about` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `category_id` int(11) DEFAULT NULL COMMENT '菜单ID',
  `content` text COMMENT '企业文化内容',
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `backup1` varchar(1024) DEFAULT NULL,
  `backup2` varchar(1024) DEFAULT NULL,
  `backup3` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='便利服务、加盟招聘、关于我们';

-- ----------------------------
-- Records of t_store_service_join_about
-- ----------------------------
INSERT INTO `t_store_service_join_about` VALUES ('1', '8', '<p>第一次</p>', null, null, '2016-08-26 21:46:46', '1', '0', null, null, null);
INSERT INTO `t_store_service_join_about` VALUES ('2', '32', '<p>4444</p>', '2016-07-22 11:02:16', '1', '2016-07-22 14:20:44', '1', '0', null, null, null);
INSERT INTO `t_store_service_join_about` VALUES ('3', '32', '<p style=\"color: rgb(89, 88, 93); font-family: 宋体; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><span data-fr-verified=\"true\">&nbsp; &nbsp;&nbsp;</span>2016年4月28日，天虹进驻厦门市枋湖社区发展中心项目的签约仪式在厦门市举行，公司东南区总经理李森、拓展部总监张友耘，业主方代表苏辉明等出席了签约仪式。</p><p style=\"color: rgb(89, 88, 93); font-family: 宋体; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">&nbsp;&nbsp;&nbsp; 项目所在的五缘湾新片区，是厦门市新的经济增长点和未来城市经济圈的重要连接点，发展潜力巨大。项目位于厦门市湖里区云顶北路及金湖路交汇处东南角，交通便捷，显现性好，中高档楼盘密集，且周边将兴起多个大型购物中心，可形成商业聚集，未来将成为厦门市又一商业中心。项目为集商业、写字楼、公寓、商铺等于一体的城市综合体，我司租赁面积约7.1万平方米，将致力于打造为海西首席高性价比的生活体验中心，创造社交、休闲、生活第三空间。</p><p style=\"color: rgb(89, 88, 93); font-family: 宋体; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">&nbsp;&nbsp;&nbsp; 厦门市枋湖社区发展中心项目的签约，将进一步提升我司在厦门市场的品牌知名度，可与东南区的其他门店形成更具规模的协同效应，进一步完善我司在厦门的门店布局。</p><p><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1469168862280.png\" width=\"300\"></p><p style=\"color: rgb(89, 88, 93); font-family: 宋体; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><br></p>', '2016-07-22 14:26:27', '1', '2016-07-22 14:40:08', '1', '0', null, null, null);
INSERT INTO `t_store_service_join_about` VALUES ('4', '86', '', '2016-07-22 15:16:46', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_service_join_about` VALUES ('5', '86', '', '2016-07-22 15:18:46', '1', '2016-07-22 15:25:50', '1', '0', null, null, null);
INSERT INTO `t_store_service_join_about` VALUES ('6', '86', '', '2016-07-22 15:27:13', '1', '2016-07-22 15:27:37', '1', '1', null, null, null);
INSERT INTO `t_store_service_join_about` VALUES ('7', '86', '', '2016-07-22 15:27:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_service_join_about` VALUES ('8', '117', '<p>\n\n<h1>九洲天虹广场</h1>\n\n  <p>一站式吃喝玩乐购全生活都市综合体</p>\n\n<p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n  <p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n  <p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n  <p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n\n<br>\n\n<br></p>', '2016-08-17 14:47:10', '1', '2016-08-17 18:53:56', '1', '0', null, null, null);
INSERT INTO `t_store_service_join_about` VALUES ('9', '119', '<p>\n\n<h1>九洲天虹广场</h1>\n\n  <p>一站式吃喝玩乐购全生活都市综合体</p>\n\n<p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n  <p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n  <p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n  <p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n\n<br>\n\n<br></p>', '2016-08-17 17:53:43', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_service_join_about` VALUES ('10', '120', '<p>\n\n<h1>九洲天虹广场</h1>\n\n  <p>一站式吃喝玩乐购全生活都市综合体</p>\n\n<p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n  <p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n  <p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n  <p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n\n<br>\n\n<br></p>', '2016-08-17 18:35:12', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_service_join_about` VALUES ('11', '123', '<p style=\"border: none; margin: 0px 0px 5px; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">联发广场为毗邻市政府的临江项目，位于行政金融中心核心区，占地47亩，总建筑面积约为21万平方米，主体建筑超200米，总投资10亿元人民币。作为南昌城市地标建筑，联发广场项目是集5A级摩天写字楼、时尚购物中心、高档奢装公寓为一体的大型综合体。</p><p style=\"border: none; margin: 0px 0px 5px; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">&nbsp;<br></p><p style=\"border: none; margin: 0px 0px 5px; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">联发广场为毗邻市政府的临江项目，位于行政金融中心核心区，占地47亩，总建筑面积约为21万平方米，主体建筑超200米，总投资10亿元人民币。作为南昌城市地标建筑，联发广场项目是集5A级摩天写字楼、时尚购物中心、高档奢装公寓为一体的大型综合体。</p><p style=\"border: none; margin: 0px 0px 5px; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">&nbsp;<br></p><p style=\"border: none; margin: 0px 0px 5px; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">联发广场为毗邻市政府的临江项目，位于行政金融中心核心区，占地47亩，总建筑面积约为21万平方米，主体建筑超200米，总投资10亿元人民币。作为南昌城市地标建筑，联发广场项目是集5A级摩天写字楼、时尚购物中心、高档奢装公寓为一体的大型综合体。</p><p style=\"border: none; margin: 0px 0px 5px; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">&nbsp;<br></p>', '2016-08-17 18:56:06', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_service_join_about` VALUES ('12', '126', '<h1 style=\"border: none; margin: 0px; padding: 0px; outline: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; color: rgb(232, 161, 113); background-color: rgb(254, 254, 254);\"><br></h1><h1 style=\"font-weight: 400; line-height: 24px; margin: 0px; font-size: 14px; box-sizing: content-box; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; border: none; padding: 0px; outline: 0px; font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; text-align: justify; color: rgb(232, 161, 113); background-color: rgb(254, 254, 254);\">12万㎡天虹购物中心、75-249㎡天虹金街商铺</h1><p style=\"line-height: 24px; text-align: justify; margin: 0px 0px 5px; word-break: break-all; box-sizing: content-box; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; border: none; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; background-color: rgb(254, 254, 254);\">&nbsp;<br></p><p style=\"line-height: 24px; text-align: justify; margin: 0px 0px 5px; word-break: break-all; box-sizing: content-box; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; border: none; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; background-color: rgb(254, 254, 254);\">联发广场为毗邻市政府的临江项目，位于行政金融中心核心区，占地47亩，总建筑面积约为21万平方米，主体建筑超200米，总投资10亿元人民币。作为南昌城市地标建筑，联发广场项目是集5A级摩天写字楼、时尚购物中心、高档奢装公寓为一体的大型综合体。</p><p style=\"line-height: 24px; text-align: justify; margin: 0px 0px 5px; word-break: break-all; box-sizing: content-box; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; border: none; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; background-color: rgb(254, 254, 254);\">&nbsp;<br></p><p style=\"line-height: 24px; text-align: justify; margin: 0px 0px 5px; word-break: break-all; box-sizing: content-box; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; border: none; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; background-color: rgb(254, 254, 254);\">联发广场为毗邻市政府的临江项目，位于行政金融中心核心区，占地47亩，总建筑面积约为21万平方米，主体建筑超200米，总投资10亿元人民币。作为南昌城市地标建筑，联发广场项目是集5A级摩天写字楼、时尚购物中心、高档奢装公寓为一体的大型综合体。</p><h1 style=\"border: none; margin: 0px; padding: 0px; outline: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; color: rgb(232, 161, 113); background-color: rgb(254, 254, 254);\">12万㎡天虹购物中心、75-249㎡天虹金街商铺</h1><p style=\"border: none; margin: 0px 0px 5px; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">&nbsp;<br></p><p style=\"border: none; margin: 0px 0px 5px; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">联发广场为毗邻市政府的临江项目，位于行政金融中心核心区，占地47亩，总建筑面积约为21万平方米，主体建筑超200米，总投资10亿元人民币。作为南昌城市地标建筑，联发广场项目是集5A级摩天写字楼、时尚购物中心、高档奢装公寓为一体的大型综合体。</p><p style=\"border: none; margin: 0px 0px 5px; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">&nbsp;<br></p><p style=\"border: none; margin: 0px 0px 5px; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">联发广场为毗邻市政府的临江项目，位于行政金融中心核心区，占地47亩，总建筑面积约为21万平方米，主体建筑超200米，总投资10亿元人民币。作为南昌城市地标建筑，联发广场项目是集5A级摩天写字楼、时尚购物中心、高档奢装公寓为一体的大型综合体。</p><h1 style=\"font-weight: 400; line-height: 24px; margin: 0px; font-size: 14px; box-sizing: content-box; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; border: none; padding: 0px; outline: 0px; font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; text-align: justify; color: rgb(232, 161, 113); background-color: rgb(254, 254, 254);\">12万㎡天虹购物中心、75-249㎡天虹金街商铺</h1><p style=\"line-height: 24px; text-align: justify; margin: 0px 0px 5px; word-break: break-all; box-sizing: content-box; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; border: none; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; background-color: rgb(254, 254, 254);\">&nbsp;<br></p><p style=\"line-height: 24px; text-align: justify; margin: 0px 0px 5px; word-break: break-all; box-sizing: content-box; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; border: none; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; background-color: rgb(254, 254, 254);\">联发广场为毗邻市政府的临江项目，位于行政金融中心核心区，占地47亩，总建筑面积约为21万平方米，主体建筑超200米，总投资10亿元人民币。作为南昌城市地标建筑，联发广场项目是集5A级摩天写字楼、时尚购物中心、高档奢装公寓为一体的大型综合体。</p><p style=\"line-height: 24px; text-align: justify; margin: 0px 0px 5px; word-break: break-all; box-sizing: content-box; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; border: none; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; background-color: rgb(254, 254, 254);\">&nbsp;<br></p><p style=\"line-height: 24px; text-align: justify; margin: 0px 0px 5px; word-break: break-all; box-sizing: content-box; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; border: none; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; background-color: rgb(254, 254, 254);\">联发广场为毗邻市政府的临江项目，位于行政金融中心核心区，占地47亩，总建筑面积约为21万平方米，主体建筑超200米，总投资10亿元人民币。作为南昌城市地标建筑，联发广场项目是集5A级摩天写字楼、时尚购物中心、高档奢装公寓为一体的大型综合体。</p>', '2016-08-17 19:13:24', '1', '2016-08-17 19:15:12', '1', '0', null, null, null);
INSERT INTO `t_store_service_join_about` VALUES ('13', '127', '<p style=\"border: none; margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\"><strong>2万方购物中心</strong>——以“天虹百货+精致超市+餐饮+休闲+娱乐+X”的购物中心业态，打造一站式吃喝玩乐购的南昌商业新中心。</p><p style=\"border: none; margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">&nbsp;<br></p><p style=\"border: none; margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\"><b>天虹·金街商铺</b>——整座天虹广场，仅66席，75-249㎡可售街铺，其稀缺价值不言而喻</p><p style=\"border: none; margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">&nbsp;<br></p><p style=\"border: none; margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\"><b>LOFT-SOHO全功能空间</b>——4.45万㎡高端商务，屹立于九洲天虹购物中心之上，建筑高度达142米，华中区天虹总部将落户于此，建成后将成为朝阳新城滨江金融商务区又一商务地标。</p><p style=\"border: none; margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">&nbsp;<br></p><p style=\"border: none; margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\"><b>招商地址：</b>江西省·南昌市·西湖区九洲大街与抚生南路交汇处（九洲大街666号）二楼招商部</p>', '2016-08-17 19:43:38', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_service_join_about` VALUES ('14', '130', '<p><br></p>', '2016-08-18 17:18:40', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_service_join_about` VALUES ('15', '133', '<p>\n\n<span style=\"color: rgb(0, 0, 0); font-family: &quot; Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;\" data-fr-verified=\"true\">菲尔芙是中外合资的连锁零售企业，其控股股东是中国航空工业集团下属的中国航空技术深圳有限公司。<br style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><br style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">1984年成立以来，通过人本、科学的管理，专业、高效的运营，公司取得了卓越的业绩，已连续多年入围中国连锁百强企业。公司根据目标顾客需求的不同，以百货店、大型购物中心、便利店的实体零售业态，打造以“亲和、信赖、享受生活”为核心价值的品牌，旗下拥有“天虹”、“君尚”两大零售品牌。截止5月16日，天虹品牌在北京、广东、福建、江西、湖南、江苏、浙江、四川等8省20市开设了61家直营分店及以特许经营方式管理2家分店，君尚品牌在深圳、东莞、惠州共开设了3家直营分店；天虹微喔便利店在深圳、厦门、南昌等地共开设了96家直营分店，38家加盟店；天虹跨境电商体验店在深圳、东莞、惠州、厦门、福州、成都、长沙、株洲、吉安、赣州、杭州、苏州等地开店34家。<br style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><br style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">公司在行业内率先突破传统百货购物模式，从实体店走向线上线下融合的全渠道，率先打造出全国首家拥有“自定义菜单”的零售微信服务号“天虹”，随后逐步创新，现已形成实体店、PC网店、移动端（天虹微信、天虹微品、虹领巾）的全渠道零售生活平台。<br style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><br style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">天虹将始终坚持“有效益扩张”和“可持续发展”的原则，立志将公司塑造成全国一流的零售企业，与顾客分享生活之美。</span>\n\n<br></p>', '2016-08-19 15:23:02', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_service_join_about` VALUES ('16', '134', '<p>\n\n<span style=\"color: rgb(0, 0, 0); font-family: &quot; Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;\" data-fr-verified=\"true\">1984年成立以来，通过人本、科学的管理，专业、高效的运营，公司取得了卓越的业绩，已连续多年入围中国连锁百强企业。公司根据目标顾客需求的不同，以百货店、大型购物中心、便利店的实体零售业态，打造以“亲和、信赖、享受生活”为核心价值的品牌，旗下拥有“天虹”、“君尚”两大零售品牌。截止5月16日，天虹品牌在北京、广东、福建、江西、湖南、江苏、浙江、四川等8省20市开设了61家直营分店及以特许经营方式管理2家分店，君尚品牌在深圳、东莞、惠州共开设了3家直营分店；天虹微喔便利店在深圳、厦门、南昌等地共开设了96家直营分店，38家加盟店；天虹跨境电商体验店在深圳、东莞、惠州、厦门、福州、成都、长沙、株洲、吉安、赣州、杭州、苏州等地开店34家。<br style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><br style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">公司在行业内率先突破传统百货购物模式，从实体店走向线上线下融合的全渠道，率先打造出全国首家拥有“自定义菜单”的零售微信服务号“天虹”，随后逐步创新，现已形成实体店、PC网店、移动端（天虹微信、天虹微品、虹领巾）的全渠道零售生活平台。</span>\n\n<br></p>', '2016-08-19 15:23:31', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_service_join_about` VALUES ('17', '156', '<p style=\"padding: 0px; margin: 20px 0px 0px; line-height: 24px; text-align: justify; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">品质管理介绍厦门汇腾天虹于2003年9月12日开业，是天虹在全国开设的第9家分店，也是天虹在东南区的第一家分店。位于嘉禾路323号，北临仙岳路，南与湖滨北路交汇，商场核心商圈辐射江头、松柏等高档商圈。</p><p style=\"padding: 0px; margin: 20px 0px 0px; line-height: 24px; text-align: justify; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">汇腾天虹“百货+超市”的经营模式将为厦门市民带来全新的一站式购物体验，经营品类主要包括：化妆品、鞋类、超市、服装、皮具箱包、钟表首饰、儿童用品、床上用品、体育用品、摄像器材等商品。</p><p style=\"padding: 0px; margin: 20px 0px 0px; line-height: 24px; text-align: justify; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">商场一直致力于保持服务领先的优势，免费提供多项便民服务，同时提供钟表维修、机器修鞋、改缝裤脚等专业服务，送货服务范围更广、更便捷了</p>', '2016-08-25 21:35:45', '1', null, null, '0', null, null, null);

-- ----------------------------
-- Table structure for `t_sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role`;
CREATE TABLE `t_sys_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL COMMENT '编码',
  `role_name` varchar(255) DEFAULT NULL COMMENT '角色名',
  `role_description` varchar(1024) DEFAULT NULL COMMENT '角色描述',
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `backup1` varchar(1024) DEFAULT NULL,
  `backup2` varchar(1024) DEFAULT NULL,
  `backup3` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色表';

-- ----------------------------
-- Records of t_sys_role
-- ----------------------------
INSERT INTO `t_sys_role` VALUES ('1', 'test', '测试', '测试人员专用', '2016-07-19 20:37:25', '1', '2016-07-20 10:48:25', '1', '1', null, null, null);
INSERT INTO `t_sys_role` VALUES ('2', 'develop', '开发', '开发人员专用11', '2016-07-19 20:37:58', '1', '2016-07-20 10:02:08', '1', '0', null, null, null);
INSERT INTO `t_sys_role` VALUES ('3', null, '营销部', '', '2016-07-20 10:01:20', null, '2016-07-20 10:06:19', '1', '1', null, null, null);
INSERT INTO `t_sys_role` VALUES ('4', null, '测试', '测试专用', '2016-07-20 10:48:37', null, null, null, '0', null, null, null);

-- ----------------------------
-- Table structure for `t_sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role_menu`;
CREATE TABLE `t_sys_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) unsigned NOT NULL COMMENT 't_sys_menu.id',
  `role_id` int(11) unsigned NOT NULL COMMENT 't_sys_role.id',
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `backup1` varchar(1024) DEFAULT NULL,
  `backup2` varchar(1024) DEFAULT NULL,
  `backup3` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='角色-权限/菜单关系表';

-- ----------------------------
-- Records of t_sys_role_menu
-- ----------------------------
INSERT INTO `t_sys_role_menu` VALUES ('7', '1', '2', '2016-07-20 10:48:17', '1', null, null, '0', null, null, null);
INSERT INTO `t_sys_role_menu` VALUES ('8', '8', '2', '2016-07-20 10:48:17', '1', null, null, '0', null, null, null);
INSERT INTO `t_sys_role_menu` VALUES ('9', '9', '2', '2016-07-20 10:48:17', '1', null, null, '0', null, null, null);
INSERT INTO `t_sys_role_menu` VALUES ('10', '10', '2', '2016-07-20 10:48:17', '1', null, null, '0', null, null, null);
INSERT INTO `t_sys_role_menu` VALUES ('11', '11', '2', '2016-07-20 10:48:17', '1', null, null, '0', null, null, null);
INSERT INTO `t_sys_role_menu` VALUES ('12', '12', '2', '2016-07-20 10:48:17', '1', null, null, '0', null, null, null);
INSERT INTO `t_sys_role_menu` VALUES ('13', '2', '2', '2016-07-20 10:48:17', '1', null, null, '0', null, null, null);
INSERT INTO `t_sys_role_menu` VALUES ('14', '21', '2', '2016-07-20 10:48:17', '1', null, null, '0', null, null, null);

-- ----------------------------
-- Table structure for `t_sys_user_menu`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user_menu`;
CREATE TABLE `t_sys_user_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `backup1` varchar(1024) DEFAULT NULL,
  `backup2` varchar(1024) DEFAULT NULL,
  `backup3` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_user_menu
-- ----------------------------
INSERT INTO `t_sys_user_menu` VALUES ('21', '1', '1', '2016-07-19 21:53:37', '1', null, null, '0', null, null, null);
INSERT INTO `t_sys_user_menu` VALUES ('22', '8', '1', '2016-07-19 21:53:37', '1', null, null, '0', null, null, null);
INSERT INTO `t_sys_user_menu` VALUES ('23', '10', '1', '2016-07-19 21:53:37', '1', null, null, '0', null, null, null);
INSERT INTO `t_sys_user_menu` VALUES ('24', '12', '1', '2016-07-19 21:53:37', '1', null, null, '0', null, null, null);
INSERT INTO `t_sys_user_menu` VALUES ('25', '3', '1', '2016-07-19 21:53:37', '1', null, null, '0', null, null, null);
INSERT INTO `t_sys_user_menu` VALUES ('26', '13', '127', '2016-10-13 13:48:55', '1', null, null, '0', null, null, null);
INSERT INTO `t_sys_user_menu` VALUES ('27', '106', '127', '2016-10-13 13:48:55', '1', null, null, '0', null, null, null);
INSERT INTO `t_sys_user_menu` VALUES ('28', '107', '127', '2016-10-13 13:48:55', '1', null, null, '0', null, null, null);
INSERT INTO `t_sys_user_menu` VALUES ('29', '108', '127', '2016-10-13 13:48:55', '1', null, null, '0', null, null, null);
INSERT INTO `t_sys_user_menu` VALUES ('30', '109', '127', '2016-10-13 13:48:55', '1', null, null, '0', null, null, null);
INSERT INTO `t_sys_user_menu` VALUES ('31', '110', '127', '2016-10-13 13:48:55', '1', null, null, '0', null, null, null);
INSERT INTO `t_sys_user_menu` VALUES ('32', '172', '126', '2016-10-13 13:49:18', '1', null, null, '0', null, null, null);
INSERT INTO `t_sys_user_menu` VALUES ('33', '176', '126', '2016-10-13 13:49:18', '1', null, null, '0', null, null, null);

-- ----------------------------
-- Table structure for `t_sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user_role`;
CREATE TABLE `t_sys_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT 't_user.id',
  `role_id` int(11) NOT NULL COMMENT 't_sys_role.id',
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `backup1` varchar(1024) DEFAULT NULL,
  `backup2` varchar(1024) DEFAULT NULL,
  `backup3` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户-角色关系表';

-- ----------------------------
-- Records of t_sys_user_role
-- ----------------------------
INSERT INTO `t_sys_user_role` VALUES ('6', '1', '1', '2016-07-19 21:53:37', '1', null, null, '0', null, null, null);
INSERT INTO `t_sys_user_role` VALUES ('7', '1', '2', '2016-07-19 21:53:37', '1', null, null, '0', null, null, null);
INSERT INTO `t_sys_user_role` VALUES ('8', '127', '2', '2016-10-13 13:48:55', '1', null, null, '0', null, null, null);
INSERT INTO `t_sys_user_role` VALUES ('9', '126', '2', '2016-10-13 13:49:18', '1', null, null, '0', null, null, null);

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) DEFAULT NULL COMMENT '用户类型（0后台用户，1前台用户）',
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `email` varchar(255) DEFAULT NULL COMMENT '电子邮件',
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) unsigned zerofill DEFAULT '0',
  `backup1` varchar(1024) DEFAULT NULL,
  `backup2` varchar(1024) DEFAULT NULL,
  `backup3` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '0', 'ADMIN_ROOT', 'e10adc3949ba59abbe56e057f20f883e', 'ADMIN_ROOT@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('2', '0', 'MDW_USA_ADMIN', '4182e563370da33b0c3c104cbfd89bb7', 'MDW_USA_ADMIN@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('3', '1', 'MDW_USA', '4182e563370da33b0c3c104cbfd89bb7', 'MDW_USA@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('4', '1', 'LITMDW1_ADMIN', '4182e563370da33b0c3c104cbfd89bb7', 'LITMDW1_ADMIN@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('5', '1', 'LITMDW1', '6e27319274c971c8e993e23d39408bb7', 'LITMDW1@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('6', '0', 'LITMDW_JP_ADMIN', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_ADMIN@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('7', '1', 'LITMDW2', '6e27319274c971c8e993e23d39408bb7', 'LITMDW2@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('8', '1', 'LITMDW3', '6e27319274c971c8e993e23d39408bb7', 'LITMDW3@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('9', '1', 'LITMDW4', '6e27319274c971c8e993e23d39408bb7', 'LITMDW4@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('10', '0', 'LITMDW_JM_ADMIN', 'a8c930bb260cadb5a63cf09d6735e0d1', 'LITMDW_JM_ADMIN@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('11', '1', 'LITMDW_JM', 'a8c930bb260cadb5a63cf09d6735e0d1', 'LITMDW_JM@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('12', '1', 'LITMDW_JM1', 'a8c930bb260cadb5a63cf09d6735e0d1', 'LITMDW_JM1@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('13', '1', 'LITMDW_JM2', 'a8c930bb260cadb5a63cf09d6735e0d1', 'LITMDW_JM2@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('14', '0', 'mazheng', '0a4a93bfbd99288fb90b870f3c01411c', 'mazheng@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('15', '1', 'test10', 'c1a8e059bfd1e911cf10b626340c9a54', 'test@qq.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('16', '1', 'test20', 'b428cbb02358afc32cf32f9bdb725a51', 'test20@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('17', '1', 'test30', '40a0d0d497cbced7d9b87e4359f1e94a', 'test30@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('27', '1', 'Benny', '85a3f38cdfaf640921174198cd7bc463', 'benny.huang@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('31', '1', 'test48', '40a0d0d497cbced7d9b87e4359f1e94a', 'roger.ma@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('33', '1', 'hutu', 'c8faf019d8e1b7b6bd8397ef852985e0', 'jhiuhwer@163.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('35', '0', 'MDW_STJ_ADMIN', '4182e563370da33b0c3c104cbfd89bb7', 'MDW_STJ_ADMIN@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('36', '1', 'MDW_STJ', '4182e563370da33b0c3c104cbfd89bb7', 'MDW_STJ@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('39', '1', 'test40', 'daebb9ee52fba3e75c5e4696c1d2b0de', 'litong@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('40', '0', 'lt_mazheng', '0a4a93bfbd99288fb90b870f3c01411c', 'lt_mazheng@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('44', '1', 'mzheng123', 'f6cde3fd9052d6cad12d66a73ce2bb44', 'mzheng123@163.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('45', '1', '123', 'f379eaf3c831b04de153469d1bec345e', 'www.123@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('46', '1', 'hutuxiansheng', '1ac5f66c945b0805757f7b6b026aef30', 'hutuxiansheng@gmail.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('47', '1', 'Sakamaki', '81dc9bdb52d04dc20036dbd8313ed055', 'sakamaki10kazuya4@gmail.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('48', '0', 'LITMDW_ML_ADMIN', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_ML_ADMIN@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('49', '1', 'LITMDW_ML1', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_ML1@gmail.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('50', '0', 'LITMDW_JP_SITE1', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_JP_SITE1@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('51', '1', 'LITMDW_JP_GUEST1', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_JP_GUEST1@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('52', '0', 'LITMDW_JP_SITE2', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_JP_SITE2@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('53', '1', 'LITMDW_JP_GUEST2', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_JP_GUEST2@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('54', '0', 'LITMDW_JP_SITE3', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_JP_SITE3@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('55', '1', 'LITMDW_JP_GUEST3', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_JP_GUEST3@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('56', '0', 'LITMDW_JP_SITE4', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_JP_SITE4@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('57', '1', 'LITMDW_JP_GUEST4', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_JP_GUEST4@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('58', '0', 'LITMDW_JP_SITE5', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_JP_SITE5@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('59', '1', 'LITMDW_JP_GUEST5', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_JP_GUEST5@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('60', '0', 'LITMDW_JP_SITE6', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_JP_SITE6@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('61', '1', 'LITMDW_JP_GUEST6', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_JP_GUEST6@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('62', '0', 'LITMDW_JP_SITE7', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_JP_SITE7@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('63', '1', 'LITMDW_JP_GUEST7', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_JP_GUEST7@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('64', '0', 'LITMDW_JP_SITE8', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_JP_SITE8@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('65', '1', 'LITMDW_JP_GUEST8', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_JP_GUEST8@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('66', '0', 'LITMDW_JP_SITE9', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_JP_SITE9@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('67', '1', 'LITMDW_JP_GUEST9', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_JP_GUEST9@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('68', '0', 'LITMDW_JP_SITE10', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_JP_SITE10@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('69', '1', 'LITMDW_JP_GUEST10', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_JP_GUEST10@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('70', '0', 'XIUJI100_SITE', '8d3de1837a0e9a499ef548d5d7726cac', '313647033@qq.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('71', '1', 'XIUJI100_GUEST', '8d3de1837a0e9a499ef548d5d7726cac', 'XIUJI100_GUEST@qq.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('72', '1', 'xiamatongxie', '0a4a93bfbd99288fb90b870f3c01411c', 'xiaomatongxie@163.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('80', '1', 'ltoperator2_asia', '6bf7efaa7474907127ac7319a61f98fe', 'kazuya.sakamaki2@reteck.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('81', '1', 'ltoperator3_asia', '25fc31bc41f508827abea8e9a7f5841e', 'kazuya.sakamaki3@reteck.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('83', '1', 'ltoprrator1_asia', '258e9caf57271d25db14800c62d49de4', 'kazuya.sakamaki1@reteck.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('85', '1', 'ltoperator1_asia', '60e56a56a79f10e3b5b3e006f6d99c90', 'kazuya.sakamaki4@reteck.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('86', '0', 'LITMDW_MRK_SITE', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_MRK_SITE@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('87', '1', 'LITMDW_MRK_GUEST', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_MRK_GUEST@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('88', '0', 'LITMDW_SFO_ADMIN', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_SFO_ADMIN@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('89', '1', 'LITMDW_SFO_GUEST', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_SFO_GUEST@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('90', '0', 'LITMDW_CO_ADMIN', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_CO_ADMIN@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('91', '1', 'LITMDW_CO_GUEST', '6e27319274c971c8e993e23d39408bb7', 'LITMDW_CO_GUEST@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('92', '0', 'reteck_japan', 'e10adc3949ba59abbe56e057f20f883e', 'MDW_USA_ADMIN1@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('94', '0', 'jyt_sz', '6e27319274c971c8e993e23d39408bb7', 'MDW_USA_ADMIN2@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('95', '0', 'reteck_usa', '6e27319274c971c8e993e23d39408bb7', 'MDW_USA_ADMIN3@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('96', '0', 'reteck_hk', '6e27319274c971c8e993e23d39408bb7', 'MDW_USA_ADMIN4@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('98', '0', 'LITMDW_HK_ADMIN', '6e27319274c971c8e993e23d39408bb7', 'MDW_USA_ADMIN5@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('99', '0', 'reteck_ml', '6e27319274c971c8e993e23d39408bb7', 'MDW_USA_ADMIN6@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('100', '0', 'xj100_ch', '6e27319274c971c8e993e23d39408bb7', 'MDW_USA_ADMIN7@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('101', '0', 'lit_test', '6e27319274c971c8e993e23d39408bb7', 'MDW_USA_ADMIN8@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('103', '0', 'reteck_at', '6e27319274c971c8e993e23d39408bb7', 'MDW_USA_ADMIN13@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('104', '0', 'LITMDW_AT_ADMIN', '6e27319274c971c8e993e23d39408bb7', 'MDW_USA_ADMIN14@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('105', '1', 'LITMDW_AT_GUEST', '6e27319274c971c8e993e23d39408bb7', 'MDW_USA_ADMIN15@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('107', '0', 'reteck_durt', '6e27319274c971c8e993e23d39408bb7', 'MDW_USA_ADMIN23@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('108', '0', 'LITMDW_DURT_ADMIN', '6e27319274c971c8e993e23d39408bb7', 'MDW_USA_ADMIN24@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('109', '1', 'LITMDW_DURT_GUEST', '6e27319274c971c8e993e23d39408bb7', 'MDW_USA_ADMIN25@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('110', '0', 'litong_test', '6e27319274c971c8e993e23d39408bb7', 'test21@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('111', '0', 'LITMDW_TEST_ADMIN', '6e27319274c971c8e993e23d39408bb7', 'test22@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('112', '1', 'LITMDW_TEST_GUEST', '6e27319274c971c8e993e23d39408bb7', 'test22@litong.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('113', '0', 'LITMDW_SFO1_ADMIN', '6e27319274c971c8e993e23d39408bb7', null, '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('114', '0', 'LITMDW_SFO2_ADMIN', '6e27319274c971c8e993e23d39408bb7', null, '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('115', '0', 'LITMDW_SFO3_ADMIN', '6e27319274c971c8e993e23d39408bb7', null, '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('116', '0', 'LITMDW_SFO4_ADMIN', '6e27319274c971c8e993e23d39408bb7', null, '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('117', '1', 'LITMDW_SFO1_GUEST', '6e27319274c971c8e993e23d39408bb7', null, '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('118', '1', 'LITMDW_SFO2_GUEST', '6e27319274c971c8e993e23d39408bb7', null, '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('119', '1', 'LITMDW_SFO3_GUEST', '6e27319274c971c8e993e23d39408bb7', null, '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('120', '1', 'LITMDW_SFO4_GUEST', '6e27319274c971c8e993e23d39408bb7', null, '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('121', '1', 'softbank1', 'f6e700662ff6061cd5d51b7dccecbb01', 'kazuya.sakamaki5@reteck.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('122', '1', 'softbank2', 'f927125863f1d88293ec9867ea17995a', 'kazuya.sakamaki6@reteck.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('123', '0', 'LITMDW_HK1_ADMIN', '6e27319274c971c8e993e23d39408bb7', null, '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('124', '1', 'LITMDW_HK1_GUEST', '6e27319274c971c8e993e23d39408bb7', null, '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('125', '0', 'softbank01', 'ad33d6eff98c3efe54cb492f90f5ada5', 'damy.address1@reteck.com', '2016-07-16 11:43:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('126', '1', 'xingzheng1', '25d55ad283aa400af464c76d713c07ad', 'ffff@123.com', '2016-10-13 13:47:20', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('127', '1', 'test1', '25d55ad283aa400af464c76d713c07ad', 'ddd@11.com', '2016-10-13 13:48:39', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('128', '0', 'bianlidian1', '25d55ad283aa400af464c76d713c07ad', 'wwww@sina.com', '2016-10-17 10:00:07', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('129', '0', 'zhiye1', '25d55ad283aa400af464c76d713c07ad', 'dddd@sina.com', '2016-10-17 10:00:38', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('130', '0', 'yingyun1', '25d55ad283aa400af464c76d713c07ad', 'dddd@sina.com', '2016-10-17 10:01:50', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('131', '0', 'zhaoshang1', '25d55ad283aa400af464c76d713c07ad', 'dd@s.com', '2016-10-17 10:02:12', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('132', '0', 'caigou1', '25d55ad283aa400af464c76d713c07ad', 'ddddd@sina.com', '2016-10-17 10:02:31', '1', null, null, '0', null, null, null);
INSERT INTO `t_user` VALUES ('133', '0', 'zhengquan1', '25d55ad283aa400af464c76d713c07ad', 'ddd@sina.com', '2016-10-17 10:06:56', '1', null, null, '0', null, null, null);

-- ----------------------------
-- Table structure for `t_web_develop_history`
-- ----------------------------
DROP TABLE IF EXISTS `t_web_develop_history`;
CREATE TABLE `t_web_develop_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `content` text,
  `event_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `backup1` varchar(1024) DEFAULT NULL,
  `backup2` varchar(1024) DEFAULT NULL,
  `backup3` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_web_develop_history
-- ----------------------------
INSERT INTO `t_web_develop_history` VALUES ('2', '182', '2015年11月26日', '1477461785302.png', '2015年11月26日，天虹出资人民币3亿元设立深圳市天虹小额贷款有限公司。该子公司旨在服务于公司全渠道发展的主业，同时提升公司资金收益率。初期围绕供应商和顾客需求推出三类产品：一、虹运贷：针对自营供应商提供的短期融资服务；二、虹途贷：针对专柜供应商提供的短期融资服务；三、虹V贷：针对天虹VIP顾客提供的短期消费贷款（现阶段只针对天虹内部员工） 。', '2015-11-26 00:00:00', '2016-09-20 17:05:15', '1', '2016-10-26 14:03:05', '1', '0', null, null, null);
INSERT INTO `t_web_develop_history` VALUES ('3', '182', '2015年11月', '1476425323909.png', '2015年11月，天虹凭借近年在“线上线下融合的全渠道、提供优质解决方案”方面的战略实践，尤其是在移动互联网产品方面的突破，如微信、微品、虹领巾等产品，为顾客、供应商创造了更大的价值，荣获第八届“中国管理模式杰出奖”。', '2015-11-15 00:00:00', '2016-09-20 17:14:34', '1', '2016-10-14 14:08:44', '1', '0', null, null, null);
INSERT INTO `t_web_develop_history` VALUES ('4', '182', '2015年11月5-7日', '1476425338947.png', '2015年11月5-7日，由中国连锁经营协会主办的第十七届中国零售业博览会在武汉举行，会上，天虹凭借“互联网+”变革转型布局移动端（天虹微品、虹领巾）这一创新举措获得展会最高荣誉——“中国零售创新大奖”以及“CCFA员工最喜爱的公司”。', '2015-11-05 00:00:00', '2016-09-20 17:17:43', '1', '2016-10-14 14:08:59', '1', '0', null, null, null);
INSERT INTO `t_web_develop_history` VALUES ('5', '182', '2015年10月26日', '1476425346344.png', '2015年10月26日，天虹“互联网+”战略转型沟通会暨天虹官方APP“虹领巾”发布会在深圳华侨城洲际大酒店举行，近600名国内外供应商、合作伙伴受邀参会。天虹董事总经理高书林在会上作了题为《做全渠道零售，做不一样的百货》的演讲，向行业内外阐述了天虹“做全渠道零售商，为消费者提供优质生活解决方案”的战略选择，向与会者分享了天虹经过近两年的转型努力，所呈现出的“不一样”。沟通会上，天虹还就O2O业务及大数据、联营供应商、供应链、商业地产、便利店五个版块业务的发展，分别与百度、中兴通讯、宝洁、百胜、绫致、百丽等43个国内外知名品牌签订全渠道战略合作协议；在本轮的战略合作中，天虹携手百度，将成立“百度&天虹零售大数据实验室”，在大数据应用和020到家业务方面展开深度战略合作。此外，本次会议天虹还邀请了知名专家和零售商、品牌商一起进行了主题为“互联网时代的百货联营模式发展”的交流论坛，从不同维度就百货零售企业在转型升级过程中如何提升联营效率，深化联营价值创造进行了探讨。会上，天虹官方APP“虹领巾”作为天虹全渠道战略的统领角色，正式对外发布并进行重点推介。“虹领巾”定位于本地化生活消费服务平台，根据用户的不同场景消除本地生活消费痛点，连接社区生活服务，为本地顾客提供更便利、更懂生活的解决方案，已于今年8月在深圳率先试点。', '2015-10-26 00:00:00', '2016-09-20 17:18:46', '1', '2016-10-14 14:09:07', '1', '0', null, null, null);
INSERT INTO `t_web_develop_history` VALUES ('6', '182', '2015年8月28日', '1476425352818.png', '2015年8月28日，天虹全国第65家分店惠阳开城天虹开业。天虹董事总经理高书林、副总经理侯毅等出席开业庆典。惠阳开城天虹位于惠州市惠阳区开城大道169号旺东国际1-3楼，经营面积38，000㎡，定位为以满足家庭型消费为核心，为顾客提供购物、体验、休闲三大功能的社区型购物中心，是惠阳片区首家知名的大型商业体，以“时尚百货+品质超市+品牌餐饮+森林主题乐园+森林概念儿童馆”的经营模式，集合了百余个国内知名品牌，全面呈现“时尚女性”“健康美味”、“儿童成长”、“贴心服务”四大购物体验主题，满足顾客一站式多重消费需求。', '2015-08-28 00:00:00', '2016-09-20 17:19:33', '1', '2016-10-14 14:09:13', '1', '0', null, null, null);
INSERT INTO `t_web_develop_history` VALUES ('8', '212', '滴答滴答滴答滴答滴答', '1476251245129.png', '“北上广”三地的网约车新规出台，遭致了不少议论。一项“征求意见稿”被各种观点评议其实很正常，不然怎么算“征求意见”呢？\n\n何况，涉及各个群体的公共政策，总是众口难调。只要利益诉求多元，就不会有百分之百满足所有群体的政策。要有“最优解”，各方就必须有充分的理解、让渡甚至妥协。这个妥协，围绕的是“最大公约数”；这个“最大公约数”，就是公共利益。有一点必须提醒，公共利益所包含的人群，可不光是使用网约车的人，还要包括从来没使用过网约车、甚至一点都不掌握互联网技术的弱势群体。\n\n这么看，滴滴那篇言辞犀利、声张权利却不提责任的声明，就实在有些咄咄逼人，何况还有大量硬伤——你说“几十万人失业”，但怎么不说“几十万人”本就不是正规就业呢？你说网约车是“共享经济”，可怎么“以分享闲置资源”为标志的共享经济，到这里却成了快速盈利的产业了呢？\n\n这些疑问，滴滴没有回答，网上已经有逐条的批驳。我们想提的，倒是两天的舆论喧嚣中很少被追问的问题：网约车真的多多益善吗？\n\n它的背后，是一个被忽视的背景：在上海这样常住人口超过2415万、面积只有6340平方公里的特大型城市，交通出行的政策导向应当倾向哪', '2016-10-12 13:49:39', '2016-10-12 13:47:27', '1', '2016-10-12 13:49:39', '1', '0', '的反反复复吩咐', null, null);
INSERT INTO `t_web_develop_history` VALUES ('9', '217', '111111111111111111111111111111', '1476252594736.png', '22222222222222222221111111111111222222222222222222211111111111112222222222222222222111111111111122222222222222222221111111111111222222222222222222211111111111112222222222222222222111111111111122222222222222222221111111111111222222222222222222211111111111112222222222222222222111111111111122222222222222222221111111111111222222222222222222211111111111112222222222222222222111111111111122222222222222222221111111111111222222222222222222211111111111112222222222222222222111111111111122222222222222222221111111111111222222222222222222211111111111112222222222222222222111111111111122222222222222222221111111111111', null, '2016-10-12 14:09:55', '1', null, null, '0', '222222222', null, null);
INSERT INTO `t_web_develop_history` VALUES ('10', '182', '2015年8月17日', '', '2015年8月17日，天虹正式推出“天虹到家”业务在南山常兴天虹举行上线启动仪式，启动仪式完成之后，天虹董事总经理高书林亲自当送货员去送货。\n2015年8月19日，天虹微喔便利店第一家加盟店亿利达大厦店开业，该店位于深圳市南山区亿利达大厦B区3栋首层1007号。', '2015-08-17 00:00:00', '2016-10-14 14:00:01', '1', '2016-10-14 14:04:14', '1', '0', null, null, null);
INSERT INTO `t_web_develop_history` VALUES ('11', '182', '2015年7月31日', '', '2015年7月31日，天虹首家跨境电商体验店在宝安天虹购物中心开业。该店面积超200平方米，店内包括母婴用品、大牌美妆用品、日系药妆店、畅销的休闲食品、奶制品、进口水果、冰海产等近千种明星商品，分为跨境商品（保税）和完税商品。', '2015-07-31 00:00:00', '2016-10-14 14:07:30', '1', null, null, '0', null, null, null);
INSERT INTO `t_web_develop_history` VALUES ('12', '256', '刁伟程先生', '', '中国国籍，1963年6月出生，中山大学物理学学士，同济大学工商管理硕士、管理科学与工程博士，研究员级高级工程师，无境外永久居留权。', null, '2016-10-25 09:51:28', '1', null, null, '0', null, null, null);
INSERT INTO `t_web_develop_history` VALUES ('13', '253', '内幕交易警示教育展电子展连接内幕交易警示教育展电子展连接内幕交易警示教育展电子展连接内幕交易警示', '1477360648059.png', '热点关注如何培养零售人才，推动公司持续发展如何培养零售人才，推动公司持续发展如何培养零售人才，推动公司持续发展如何培养零售人才，推动公司持续发展如何培养零售人才，推动公司持续发展\n如何培养零售人才，推动公司持续发展如何培养零售人才，推动公司持续发展如何培养零售人才，推动公司持续发展如何培养零售人才，推动公司持续发展', null, '2016-10-25 09:57:28', '1', null, null, '0', '天虹商场', null, null);
INSERT INTO `t_web_develop_history` VALUES ('14', '251', '分红动态001', '1477362728771.png', '内幕交易警示教育展电子展连接内幕交易警示教育展电子展连接内幕交易警示教育展电子展连接内幕交易警示内幕交易警示教育展电子展连接内幕交易警示教育展电子展连接内幕交易警示教育展电子展连接内幕交易警示内幕交易警示教育展电子展连接内幕交易警示教育展电子展连接内幕交易警示教育展电子展连接内幕交易警示内幕交易警示教育展电子展连接内幕交易警示教育展电子展连接内幕交易警示教育展电子展连接内幕交易警示', null, '2016-10-25 10:32:09', '1', null, null, '0', '', null, null);
INSERT INTO `t_web_develop_history` VALUES ('15', '257', '刁伟程先生', '', '刁伟程中国国籍，1963年6月出生，中山大学物理学学士，同济大学工商管理硕士、管理科学与工程博士，研究员级高级工程师，无境外永久居留权。', '2016-10-25 15:11:48', '2016-10-25 15:11:18', '1', '2016-10-25 15:11:48', '1', '0', null, null, null);
INSERT INTO `t_web_develop_history` VALUES ('16', '257', '黄俊康先生', '', '黄俊康中国国籍，1963年6月出生，中山大学物理学学士，同济大学工商管理硕士、管理科学与工程博士，研究员级高级工程师，无境外永久居留权', null, '2016-10-25 15:11:40', '1', null, null, '0', null, null, null);
INSERT INTO `t_web_develop_history` VALUES ('17', '257', '高书林先生', '', '高书林先生中国国籍，1963年6月出生，中山大学物理学学士，同济大学工商管理硕士、管理科学与工程博士，研究员级高级工程师，无境外永久居留权', null, '2016-10-25 15:12:29', '1', null, null, '0', null, null, null);
INSERT INTO `t_web_develop_history` VALUES ('18', '258', '仇慎谦先生', '', '仇慎谦先生中国国籍，1963年6月出生，中山大学物理学学士，同济大学工商管理硕士、管理科学与工程博士，研究员级高级工程师，无境外永久居留权', null, '2016-10-25 15:12:51', '1', null, null, '0', null, null, null);
INSERT INTO `t_web_develop_history` VALUES ('19', '258', '黄俊康先生', '', '黄俊康先生中国国籍，1963年6月出生，中山大学物理学学士，同济大学工商管理硕士、管理科学与工程博士，研究员级高级工程师，无境外永久居留权。', null, '2016-10-25 15:13:04', '1', null, null, '0', null, null, null);
INSERT INTO `t_web_develop_history` VALUES ('20', '258', '高书林先生', '', '高书林先生中国国籍，1963年6月出生，中山大学物理学学士，同济大学工商管理硕士、管理科学与工程博士，研究员级高级工程师，无境外永久居留权。', null, '2016-10-25 15:13:16', '1', null, null, '0', null, null, null);
INSERT INTO `t_web_develop_history` VALUES ('21', '251', '分红动态0022222', '', '分红动态0022222222222222222', null, '2016-10-25 16:03:12', '1', null, null, '0', '', null, null);
INSERT INTO `t_web_develop_history` VALUES ('22', '251', '分红动态003333333333', '', '分红动态003333333333333', null, '2016-10-25 16:03:19', '1', null, null, '0', '', null, null);
INSERT INTO `t_web_develop_history` VALUES ('23', '254', '法律法规内幕交易警示教育展电子展连接内幕交易警示', '', '法律法规内幕交易警示教育展电子展连接内幕交易警示', null, '2016-10-25 16:30:26', '1', null, null, '0', '', null, null);
INSERT INTO `t_web_develop_history` VALUES ('24', '254', '法律法规内幕交易警示教育展电子展连接内幕交易警示22', '', '法律法规内幕交易警示教育展电子展连接内幕交易警示222222', null, '2016-10-25 16:30:32', '1', null, null, '0', '', null, null);
INSERT INTO `t_web_develop_history` VALUES ('25', '254', '法律法规内幕交易警示333333333', '', '法律法规内幕交易警示3333333333333', null, '2016-10-25 16:33:50', '1', null, null, '0', '', null, null);
INSERT INTO `t_web_develop_history` VALUES ('26', '254', '法律法规内幕交易警示44444444444444', '', '法律法规内幕交易警示444444444444444', null, '2016-10-25 16:33:57', '1', null, null, '0', '', null, null);
INSERT INTO `t_web_develop_history` VALUES ('27', '254', '法律法规内幕交易警示55555555555', '', '法律法规内幕交易警示55555555555555555555', null, '2016-10-25 16:34:08', '1', null, null, '0', '', null, null);
INSERT INTO `t_web_develop_history` VALUES ('28', '254', '法律法规内幕交易警示666666666666666', '', '法律法规内幕交易警示66666666666666', null, '2016-10-25 16:34:16', '1', null, null, '0', '', null, null);
INSERT INTO `t_web_develop_history` VALUES ('29', '254', '法律法规内幕交易警示7777777777777777', '', '7法律法规内幕交易警示77777777777777', null, '2016-10-25 16:34:24', '1', null, null, '0', '', null, null);
INSERT INTO `t_web_develop_history` VALUES ('30', '182', '', '1477461773998.png', '', '2016-10-26 00:00:00', '2016-10-26 14:02:55', '1', null, null, '0', null, null, null);
INSERT INTO `t_web_develop_history` VALUES ('31', '289', '顾客意见服务', '', '', null, '2016-10-26 14:32:07', '1', null, null, '0', '', null, null);
INSERT INTO `t_web_develop_history` VALUES ('32', '291', '商务服务（少量同城传真、少量复印），收费标准为：同城传真3元/张，复印1元/张', '', '', null, '2016-10-26 14:32:21', '1', null, null, '0', '', null, null);
INSERT INTO `t_web_develop_history` VALUES ('33', '273', '什么时间可以用积分兑换礼品？', '', '答：目前天虹购物中心停车代用券的兑换属于会员制，只有持有天虹购物中心会员卡、天虹商场会员卡的顾客才能凭卡内500积分兑换停车代用券一张，非会员顾客暂时无法兑换停车代用券。如何成为会员详见《会员卡申请及积分兑换》。', null, '2016-10-26 14:32:50', '1', null, null, '0', '', null, null);
INSERT INTO `t_web_develop_history` VALUES ('34', '273', '消费金额与积分量相等吗？', '', '答：目前天虹购物中心停车代用券的兑换属于会员制，只有持有天虹购物中心会员卡、天虹商场会员卡的顾客才能凭卡内500积分兑换停车代用券一张，非会员顾客暂时无法兑换停车代用券。如何成为会员详见《会员卡申请及积分兑换》。', null, '2016-10-26 14:33:20', '1', null, null, '0', '', null, null);
