/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : tianhong

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2016-09-19 17:00:31
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
INSERT INTO `t_category` VALUES ('1', '164', null, '关东煮1', 'Oden', '2016-09-01 10:54:30', '1', '2016-09-10 21:05:45', '1', '0', null, null, null);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

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
INSERT INTO `t_content` VALUES ('9', '119', '区位交通', 'LOCATION TRAFFIC', '0791-8881 9999', '南昌市朝阳新城九洲大街666号九洲天虹广场', null, '<p>\n\n<h1>九洲天虹广场</h1>\n\n  <p>一站式吃喝玩乐购全生活都市综合体</p>\n\n<p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n  <p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n  <p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n  <p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n\n<br>\n\n<br></p>', null, '2016-08-17 17:53:43', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('10', '120', '天虹购物中心', '二站式吃喝玩乐购全生活都市综合体', '', '', null, '<p>\n\n<h1>九洲天虹广场</h1>\n\n  <p>一站式吃喝玩乐购全生活都市综合体</p>\n\n<p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n  <p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n  <p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n  <p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。位于抚生南路与九洲大街交汇处（九洲大街666号）,销售热线：0791-88819999。</p>\n\n  <p><strong>项目总体参数</strong></p>\n\n  <p>总占地面积43444㎡，建筑面积323522㎡，项目总体布局由一条南北蜿蜒的内街分为两个区，位于东南区的得二期规划142米高的写字楼和主体6层，局部7或8层的裙房商业。西北区为一期住宅九洲上郡由4栋高层住宅和底商组成。</p>\n\n  <p>住宅：层高分别为T1#29层、T2#29层、T3#29层、T4#30层，住宅总户数380户；规划了有727个停车位（地下727、地上0）车位全部在地下，车位配比近2:1，容积率3.98，绿地率31%。小区在金环路和秋实路2个主入口，人车分流。</p>\n\n  <p>一期商业：沿街底商可售物业共66套，面积段75-249㎡一拖二产品。其中，独栋商铺：共11套；T1、T2底商：共24套；T3底商：共6套；T4底商：共26套；</p>\n\n\n<br>\n\n<br></p>', null, '2016-08-17 18:35:12', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('11', '123', '联发广场', '行政金融中心核心区大型综合体', '', '', null, '<p style=\"border: none; margin: 0px 0px 5px; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">联发广场为毗邻市政府的临江项目，位于行政金融中心核心区，占地47亩，总建筑面积约为21万平方米，主体建筑超200米，总投资10亿元人民币。作为南昌城市地标建筑，联发广场项目是集5A级摩天写字楼、时尚购物中心、高档奢装公寓为一体的大型综合体。</p><p style=\"border: none; margin: 0px 0px 5px; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">&nbsp;<br></p><p style=\"border: none; margin: 0px 0px 5px; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">联发广场为毗邻市政府的临江项目，位于行政金融中心核心区，占地47亩，总建筑面积约为21万平方米，主体建筑超200米，总投资10亿元人民币。作为南昌城市地标建筑，联发广场项目是集5A级摩天写字楼、时尚购物中心、高档奢装公寓为一体的大型综合体。</p><p style=\"border: none; margin: 0px 0px 5px; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">&nbsp;<br></p><p style=\"border: none; margin: 0px 0px 5px; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">联发广场为毗邻市政府的临江项目，位于行政金融中心核心区，占地47亩，总建筑面积约为21万平方米，主体建筑超200米，总投资10亿元人民币。作为南昌城市地标建筑，联发广场项目是集5A级摩天写字楼、时尚购物中心、高档奢装公寓为一体的大型综合体。</p><p style=\"border: none; margin: 0px 0px 5px; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">&nbsp;<br></p>', null, '2016-08-17 18:56:06', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('12', '126', '商业配套', 'BUSINESS MATCHING', '', '', null, '<h1 style=\"border: none; margin: 0px; padding: 0px; outline: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; color: rgb(232, 161, 113); background-color: rgb(254, 254, 254);\"><br></h1><h1 style=\"font-weight: 400; line-height: 24px; margin: 0px; font-size: 14px; box-sizing: content-box; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; border: none; padding: 0px; outline: 0px; font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; text-align: justify; color: rgb(232, 161, 113); background-color: rgb(254, 254, 254);\">12万㎡天虹购物中心、75-249㎡天虹金街商铺</h1><p style=\"line-height: 24px; text-align: justify; margin: 0px 0px 5px; word-break: break-all; box-sizing: content-box; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; border: none; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; background-color: rgb(254, 254, 254);\">&nbsp;<br></p><p style=\"line-height: 24px; text-align: justify; margin: 0px 0px 5px; word-break: break-all; box-sizing: content-box; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; border: none; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; background-color: rgb(254, 254, 254);\">联发广场为毗邻市政府的临江项目，位于行政金融中心核心区，占地47亩，总建筑面积约为21万平方米，主体建筑超200米，总投资10亿元人民币。作为南昌城市地标建筑，联发广场项目是集5A级摩天写字楼、时尚购物中心、高档奢装公寓为一体的大型综合体。</p><p style=\"line-height: 24px; text-align: justify; margin: 0px 0px 5px; word-break: break-all; box-sizing: content-box; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; border: none; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; background-color: rgb(254, 254, 254);\">&nbsp;<br></p><p style=\"line-height: 24px; text-align: justify; margin: 0px 0px 5px; word-break: break-all; box-sizing: content-box; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; border: none; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; background-color: rgb(254, 254, 254);\">联发广场为毗邻市政府的临江项目，位于行政金融中心核心区，占地47亩，总建筑面积约为21万平方米，主体建筑超200米，总投资10亿元人民币。作为南昌城市地标建筑，联发广场项目是集5A级摩天写字楼、时尚购物中心、高档奢装公寓为一体的大型综合体。</p><h1 style=\"border: none; margin: 0px; padding: 0px; outline: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; color: rgb(232, 161, 113); background-color: rgb(254, 254, 254);\">12万㎡天虹购物中心、75-249㎡天虹金街商铺</h1><p style=\"border: none; margin: 0px 0px 5px; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">&nbsp;<br></p><p style=\"border: none; margin: 0px 0px 5px; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">联发广场为毗邻市政府的临江项目，位于行政金融中心核心区，占地47亩，总建筑面积约为21万平方米，主体建筑超200米，总投资10亿元人民币。作为南昌城市地标建筑，联发广场项目是集5A级摩天写字楼、时尚购物中心、高档奢装公寓为一体的大型综合体。</p><p style=\"border: none; margin: 0px 0px 5px; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">&nbsp;<br></p><p style=\"border: none; margin: 0px 0px 5px; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">联发广场为毗邻市政府的临江项目，位于行政金融中心核心区，占地47亩，总建筑面积约为21万平方米，主体建筑超200米，总投资10亿元人民币。作为南昌城市地标建筑，联发广场项目是集5A级摩天写字楼、时尚购物中心、高档奢装公寓为一体的大型综合体。</p><h1 style=\"font-weight: 400; line-height: 24px; margin: 0px; font-size: 14px; box-sizing: content-box; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; border: none; padding: 0px; outline: 0px; font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; text-align: justify; color: rgb(232, 161, 113); background-color: rgb(254, 254, 254);\">12万㎡天虹购物中心、75-249㎡天虹金街商铺</h1><p style=\"line-height: 24px; text-align: justify; margin: 0px 0px 5px; word-break: break-all; box-sizing: content-box; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; border: none; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; background-color: rgb(254, 254, 254);\">&nbsp;<br></p><p style=\"line-height: 24px; text-align: justify; margin: 0px 0px 5px; word-break: break-all; box-sizing: content-box; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; border: none; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; background-color: rgb(254, 254, 254);\">联发广场为毗邻市政府的临江项目，位于行政金融中心核心区，占地47亩，总建筑面积约为21万平方米，主体建筑超200米，总投资10亿元人民币。作为南昌城市地标建筑，联发广场项目是集5A级摩天写字楼、时尚购物中心、高档奢装公寓为一体的大型综合体。</p><p style=\"line-height: 24px; text-align: justify; margin: 0px 0px 5px; word-break: break-all; box-sizing: content-box; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; border: none; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; background-color: rgb(254, 254, 254);\">&nbsp;<br></p><p style=\"line-height: 24px; text-align: justify; margin: 0px 0px 5px; word-break: break-all; box-sizing: content-box; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; border: none; padding: 0px; outline: 0px; color: rgb(101, 101, 101); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; background-color: rgb(254, 254, 254);\">联发广场为毗邻市政府的临江项目，位于行政金融中心核心区，占地47亩，总建筑面积约为21万平方米，主体建筑超200米，总投资10亿元人民币。作为南昌城市地标建筑，联发广场项目是集5A级摩天写字楼、时尚购物中心、高档奢装公寓为一体的大型综合体。</p>', null, '2016-08-17 19:13:24', '1', '2016-08-17 19:15:12', '1', '0', null, null, null);
INSERT INTO `t_content` VALUES ('13', '127', '南昌· 九洲天虹广场合作', '', '', '', null, '<p style=\"border: none; margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\"><strong>2万方购物中心</strong>——以“天虹百货+精致超市+餐饮+休闲+娱乐+X”的购物中心业态，打造一站式吃喝玩乐购的南昌商业新中心。</p><p style=\"border: none; margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">&nbsp;<br></p><p style=\"border: none; margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\"><b>天虹·金街商铺</b>——整座天虹广场，仅66席，75-249㎡可售街铺，其稀缺价值不言而喻</p><p style=\"border: none; margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">&nbsp;<br></p><p style=\"border: none; margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\"><b>LOFT-SOHO全功能空间</b>——4.45万㎡高端商务，屹立于九洲天虹购物中心之上，建筑高度达142米，华中区天虹总部将落户于此，建成后将成为朝阳新城滨江金融商务区又一商务地标。</p><p style=\"border: none; margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\">&nbsp;<br></p><p style=\"border: none; margin: 0px; padding: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(254, 254, 254);\"><b>招商地址：</b>江西省·南昌市·西湖区九洲大街与抚生南路交汇处（九洲大街666号）二楼招商部</p>', null, '2016-08-17 19:43:38', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('14', '130', '', '', '0755-88888888', '深圳市南山区中心路(深圳湾段)3019号', null, '<p><br></p>', null, '2016-08-18 17:18:40', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('15', '133', '', '', '', '', null, '<p>\n\n<span style=\"color: rgb(0, 0, 0); font-family: &quot; Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;\" data-fr-verified=\"true\">菲尔芙是中外合资的连锁零售企业，其控股股东是中国航空工业集团下属的中国航空技术深圳有限公司。<br style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><br style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">1984年成立以来，通过人本、科学的管理，专业、高效的运营，公司取得了卓越的业绩，已连续多年入围中国连锁百强企业。公司根据目标顾客需求的不同，以百货店、大型购物中心、便利店的实体零售业态，打造以“亲和、信赖、享受生活”为核心价值的品牌，旗下拥有“天虹”、“君尚”两大零售品牌。截止5月16日，天虹品牌在北京、广东、福建、江西、湖南、江苏、浙江、四川等8省20市开设了61家直营分店及以特许经营方式管理2家分店，君尚品牌在深圳、东莞、惠州共开设了3家直营分店；天虹微喔便利店在深圳、厦门、南昌等地共开设了96家直营分店，38家加盟店；天虹跨境电商体验店在深圳、东莞、惠州、厦门、福州、成都、长沙、株洲、吉安、赣州、杭州、苏州等地开店34家。<br style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><br style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">公司在行业内率先突破传统百货购物模式，从实体店走向线上线下融合的全渠道，率先打造出全国首家拥有“自定义菜单”的零售微信服务号“天虹”，随后逐步创新，现已形成实体店、PC网店、移动端（天虹微信、天虹微品、虹领巾）的全渠道零售生活平台。<br style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><br style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">天虹将始终坚持“有效益扩张”和“可持续发展”的原则，立志将公司塑造成全国一流的零售企业，与顾客分享生活之美。</span>\n\n<br></p>', null, '2016-08-19 15:23:02', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('16', '134', '', '', '', '', null, '<p>\n\n<span style=\"color: rgb(0, 0, 0); font-family: &quot; Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;\" data-fr-verified=\"true\">1984年成立以来，通过人本、科学的管理，专业、高效的运营，公司取得了卓越的业绩，已连续多年入围中国连锁百强企业。公司根据目标顾客需求的不同，以百货店、大型购物中心、便利店的实体零售业态，打造以“亲和、信赖、享受生活”为核心价值的品牌，旗下拥有“天虹”、“君尚”两大零售品牌。截止5月16日，天虹品牌在北京、广东、福建、江西、湖南、江苏、浙江、四川等8省20市开设了61家直营分店及以特许经营方式管理2家分店，君尚品牌在深圳、东莞、惠州共开设了3家直营分店；天虹微喔便利店在深圳、厦门、南昌等地共开设了96家直营分店，38家加盟店；天虹跨境电商体验店在深圳、东莞、惠州、厦门、福州、成都、长沙、株洲、吉安、赣州、杭州、苏州等地开店34家。<br style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;\"><br style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">公司在行业内率先突破传统百货购物模式，从实体店走向线上线下融合的全渠道，率先打造出全国首家拥有“自定义菜单”的零售微信服务号“天虹”，随后逐步创新，现已形成实体店、PC网店、移动端（天虹微信、天虹微品、虹领巾）的全渠道零售生活平台。</span>\n\n<br></p>', null, '2016-08-19 15:23:31', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('17', '156', '品质管理介绍', '', '', '', null, '<p style=\"padding: 0px; margin: 20px 0px 0px; line-height: 24px; text-align: justify; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">品质管理介绍厦门汇腾天虹于2003年9月12日开业，是天虹在全国开设的第9家分店，也是天虹在东南区的第一家分店。位于嘉禾路323号，北临仙岳路，南与湖滨北路交汇，商场核心商圈辐射江头、松柏等高档商圈。</p><p style=\"padding: 0px; margin: 20px 0px 0px; line-height: 24px; text-align: justify; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">汇腾天虹“百货+超市”的经营模式将为厦门市民带来全新的一站式购物体验，经营品类主要包括：化妆品、鞋类、超市、服装、皮具箱包、钟表首饰、儿童用品、床上用品、体育用品、摄像器材等商品。</p><p style=\"padding: 0px; margin: 20px 0px 0px; line-height: 24px; text-align: justify; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">商场一直致力于保持服务领先的优势，免费提供多项便民服务，同时提供钟表维修、机器修鞋、改缝裤脚等专业服务，送货服务范围更广、更便捷了</p>', null, '2016-08-25 21:35:45', '1', null, null, '0', null, null, null);
INSERT INTO `t_content` VALUES ('18', '163', '', null, null, null, null, '<ol><li><p>\n\n任意消费满10元+15元换购圣诞小熊一只&nbsp;</p></li><li><p>参与门店：天虹微喔和万店通所有门店（不含加盟店）\n\n\n<br></p></li></ol>', null, '2016-09-19 11:30:09', '1', null, null, '0', null, null, null);

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
INSERT INTO `t_market` VALUES ('1', null, '厦门天虹123', '厦门汇腾天虹于2003年9月12日开业，是天虹在全国开设的第9家分店，也是天虹在东南区的第一家分店。位于嘉禾路323号，北临仙岳路，南与湖滨北路交汇，商场核心商圈辐射江头、松柏等高档商圈。\n汇腾天虹“百货+超市”的经营模式将为厦门市民带来全新的一站式购物体验，经营品类主要包括：化妆品、鞋类、超市、服装、皮具箱包、钟表首饰、儿童用品、床上用品、体育用品、摄像器材等商品。\n商场一直致力于保持服务领先的优势，免费提供多项便民服务，同时提供钟表维修、机器修鞋、改缝裤脚等专业服务，送货服务范围更广、更便捷了', null, null, '1472481595919.png', '2016-08-25 21:16:50', '1', '2016-08-25 21:22:29', '1', '0', '0755-21548965', '南山登良路天虹总部', null);
INSERT INTO `t_market` VALUES ('3', null, '常兴天虹', '常兴天虹于2003年9月12日开业，是天虹在全国开设的第9家分店，也是天虹在东南区的第一家分店。位于嘉禾路323号，北临仙岳路，南与湖滨北路交汇，商场核心商圈辐射江头、松柏等高档商圈。\n汇腾天虹“百货+超市”的经营模式将为厦门市民带来全新的一站式购物体验，经营品类主要包括：化妆品、鞋类、超市、服装、皮具箱包、钟表首饰、儿童用品、床上用品、体育用品、摄像器材等商品。\n商场一直致力于保持服务领先的优势，免费提供多项便民服务，同时提供钟表维修、机器修鞋、改缝裤脚等专业服务，送货服务范围更广、更便捷了。', null, null, null, '2016-08-26 20:49:36', '1', null, null, '0', null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_market_news
-- ----------------------------
INSERT INTO `t_market_news` VALUES ('1', '1', '兰芝“父亲节”特别优惠 欧珀莱美丽嘉年华', '1', '<p>兰芝“父亲节”特别优惠 欧珀莱美丽嘉年华厦门汇腾天虹于2003年9月12日开业，是天虹在全国开设的第9家分店，也是天虹在东南区的第一家分店。位于嘉禾路323号，北临仙岳路，南与湖滨北路交汇，商场核心商圈辐射江头、松柏等高档商圈。</p><p style=\"padding: 0px; margin: 0px; position: relative; font-size: 16px; color: rgb(89, 87, 87); line-height: 28px; font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">汇腾天虹“百货+超市”的经营模式将为厦门市民带来全新的一站式购物体验，经营品类主要包括：化妆品、鞋类、超市、服装、皮具箱包、钟表首饰、儿童用品、床上用品、体育用品、摄像器材等商品。</p>', null, '1472216031782.png', '2016-08-26 20:53:51', '1', '2016-08-27 10:07:50', '1', '0', null, null, null);
INSERT INTO `t_market_news` VALUES ('15', '1', '第一次门店活动厦门', '2', '<p>第一次门店活动厦门\n\n<span style=\"color: rgb(89, 87, 87); font-family: &quot; Microsoft Yahei&quot;, Arial, Simsun; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;\" data-fr-verified=\"true\">汇腾天虹“百货+超市”的经营模式将为厦门市民带来全新的一站式购物体验，经营品类主要包括：化妆品、鞋类、超市、服装、皮具箱包、钟表首饰、儿童用品、床上用品、体育用品、摄像器材等商品。</span>\n\n<br></p>', null, '1472220621483.png', '2016-08-26 22:10:21', '1', '2016-08-27 10:08:31', '1', '0', null, null, null);
INSERT INTO `t_market_news` VALUES ('16', '1', '第二', '1', '<p>fr兰芝“父亲节”特别优惠 欧珀莱美丽嘉年华厦门汇腾天虹于2003年9月12日开业，是天虹在全国开设的第9家分店，也是天虹在东南区的第一家分店。位于嘉禾路323号，北临仙岳路，南与湖滨北路交汇，商场核心商圈辐射江头、松柏等高档商圈。</p><p style=\"padding: 0px; margin: 0px; position: relative; font-size: 16px; color: rgb(89, 87, 87); line-height: 28px; font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">汇腾天虹“百货+超市”的经营模式将为厦门市民带来全新的一站式购物体验，经营品类主要包括：化妆品、鞋类、超市、服装、皮具箱包、钟表首饰、儿童用品、床上用品、体育用品、摄像器材等商品。</p>', null, '1472263397987.png', '2016-08-27 10:03:18', '1', '2016-08-27 10:03:34', '1', '0', null, null, null);
INSERT INTO `t_market_news` VALUES ('17', '1', '第三次', '1', '<p>123兰芝“父亲节”特别优惠 欧珀莱美丽嘉年华厦门汇腾天虹于2003年9月12日开业，是天虹在全国开设的第9家分店，也是天虹在东南区的第一家分店。位于嘉禾路323号，北临仙岳路，南与湖滨北路交汇，商场核心商圈辐射江头、松柏等高档商圈。</p><p style=\"padding: 0px; margin: 0px; position: relative; font-size: 16px; color: rgb(89, 87, 87); line-height: 28px; font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">汇腾天虹“百货+超市”的经营模式将为厦门市民带来全新的一站式购物体验，经营品类主要包括：化妆品、鞋类、超市、服装、皮具箱包、钟表首饰、儿童用品、床上用品、体育用品、摄像器材等商品。</p>', null, '1472263495119.png', '2016-08-27 10:04:55', '1', '2016-08-27 10:05:03', '1', '0', null, null, null);
INSERT INTO `t_market_news` VALUES ('18', '1', '常兴天虹一', '2', '<p>ABC兰芝“父亲节”特别优惠 欧珀莱美丽嘉年华厦门汇腾天虹于2003年9月12日开业，是天虹在全国开设的第9家分店，也是天虹在东南区的第一家分店。位于嘉禾路323号，北临仙岳路，南与湖滨北路交汇，商场核心商圈辐射江头、松柏等高档商圈。</p><p style=\"padding: 0px; margin: 0px; position: relative; font-size: 16px; color: rgb(89, 87, 87); line-height: 28px; font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;\">汇腾天虹“百货+超市”的经营模式将为厦门市民带来全新的一站式购物体验，经营品类主要包括：化妆品、鞋类、超市、服装、皮具箱包、钟表首饰、儿童用品、床上用品、体育用品、摄像器材等商品。</p>', null, '1472263519023.png', '2016-08-27 10:05:19', '1', '2016-08-27 10:05:36', '1', '0', null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('1', '关于天虹', null, null, '1', '0', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('2', '企业文化', null, null, '1', '0', '3', '1', '2016-07-13 16:03:40', '1', null, null, '1', null, null, null);
INSERT INTO `t_menu` VALUES ('3', '集团业务', null, null, '1', '0', '2', '1', '2016-07-13 16:03:05', '1', null, null, '1', null, null, null);
INSERT INTO `t_menu` VALUES ('4', '新闻中心', null, null, '1', '0', '4', '1', '2016-07-13 16:03:05', '1', null, null, '1', null, null, null);
INSERT INTO `t_menu` VALUES ('5', '人力资源', null, null, '1', '0', '5', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
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

-- ----------------------------
-- Table structure for `t_news_center`
-- ----------------------------
DROP TABLE IF EXISTS `t_news_center`;
CREATE TABLE `t_news_center` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT NULL,
  `title` varchar(1024) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新闻中心';

-- ----------------------------
-- Records of t_news_center
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_picture
-- ----------------------------
INSERT INTO `t_picture` VALUES ('6', '8', '1', '', '', null, '1', '1469089904769.png', '2016-07-21 16:31:44', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('10', '8', '2', '', '', null, '1', '1469095612417.png', '2016-07-21 18:06:52', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('11', '106', '1', '', '', null, '1', '1471312220474.png', '2016-08-16 09:50:20', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('12', '106', '2', '', '', null, '1', '1471312874198.png', '2016-08-16 10:01:14', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('13', '117', '1', '', '', null, '1', '1471415171579.png', '2016-08-17 14:26:11', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('14', '118', '1', '', '', null, '1', '1471424588080.png', '2016-08-17 17:03:08', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('15', '118', '2', '', '', null, '1', '1471424592052.png', '2016-08-17 17:03:12', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('16', '118', '3', '', '', null, '1', '1471424598747.png', '2016-08-17 17:03:18', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('17', '118', '4', '', '', null, '1', '1471424603893.png', '2016-08-17 17:03:23', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('18', '118', '5', '', '', null, '1', '1471424608617.png', '2016-08-17 17:03:28', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('19', '118', '6', '', '', null, '1', '1471424622134.png', '2016-08-17 17:03:42', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('20', '118', '7', '', '', null, '1', '1471424642701.png', '2016-08-17 17:04:02', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('21', '119', '1', '', '', null, '1', '1471427244155.png', '2016-08-17 17:47:24', '1', null, null, '0', null, null, null);
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
INSERT INTO `t_picture` VALUES ('32', '123', '1', '', '', null, '1', '1471432189545.png', '2016-08-17 19:09:49', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('33', '124', '1', '', '', null, '1', '1471432252475.png', '2016-08-17 19:10:52', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('34', '124', '2', '', '', null, '1', '1471432254929.png', '2016-08-17 19:10:54', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('35', '124', '3', '', '', null, '1', '1471432257128.png', '2016-08-17 19:10:57', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('36', '124', '4', '', '', null, '1', '1471432259552.png', '2016-08-17 19:10:59', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('37', '124', '5', '', '', null, '1', '1471432262874.png', '2016-08-17 19:11:02', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('38', '124', '6', '', '', null, '1', '1471432267002.png', '2016-08-17 19:11:07', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('39', '124', '7', '', '', null, '1', '1471432269359.png', '2016-08-17 19:11:09', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('40', '124', '8', '', '', null, '1', '1471432272309.png', '2016-08-17 19:11:12', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('41', '124', '9', '', '', null, '1', '1471432275120.png', '2016-08-17 19:11:15', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('42', '124', '10', '', '', null, '1', '1471432277170.png', '2016-08-17 19:11:17', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('43', '124', '11', '', '', null, '1', '1471432279437.png', '2016-08-17 19:11:19', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('44', '124', '12', '', '', null, '1', '1471432281573.png', '2016-08-17 19:11:21', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('45', '124', '13', '', '', null, '1', '1471432283928.png', '2016-08-17 19:11:23', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('46', '126', '1', '', '', null, '1', '1471432386157.png', '2016-08-17 19:13:06', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('47', '127', '1', '', '', null, '1', '1471434141190.png', '2016-08-17 19:42:21', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('48', '127', '2', '', '', null, '1', '1471509541615.png', '2016-08-18 16:39:01', '1', null, null, '0', null, null, null);
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
INSERT INTO `t_picture` VALUES ('72', '156', '1', '', 'undefined', null, '1', '1472132174250.png', '2016-08-25 21:36:14', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('73', '163', '1', '', 'undefined', null, '1', '1473168468832.png', '2016-09-06 21:27:48', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('74', '163', '2', '', 'undefined', null, '1', '1473168472307.png', '2016-09-06 21:27:52', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('75', '163', '3', '', 'undefined', null, '1', '1473471710774.png', '2016-09-10 09:41:50', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('76', '165', '1', '', 'undefined', null, '1', '1473513956471.png', '2016-09-10 21:25:56', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('77', '165', '3', '', 'undefined', null, '1', '1473513961068.png', '2016-09-10 21:26:01', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('78', '165', '2', '', 'undefined', null, '1', '1473513964365.png', '2016-09-10 21:26:04', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('82', '166', '3', '', 'undefined', null, '1', '1474271479355.png', '2016-09-19 15:51:19', '1', null, null, '0', null, null, null);
INSERT INTO `t_picture` VALUES ('83', '166', '5', '', 'undefined', null, '1', '1474271486980.png', '2016-09-19 15:51:26', '1', null, null, '0', null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='最新活动';

-- ----------------------------
-- Records of t_store_new_activity
-- ----------------------------
INSERT INTO `t_store_new_activity` VALUES ('1', '9', '活动', null, '<p><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8080/th-admin/download/png?fileName=1473167662482.png\" width=\"300\"></p><p><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8080/th-admin/download/png?fileName=1473167667868.png\" width=\"300\"></p><p><br></p>', '2016-09-06 21:14:29', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_new_activity` VALUES ('2', '7', '主题活动标题', null, '<p><span data-fr-verified=\"true\" style=\"background-color: #FF9900;\">最新活动推荐 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></p><p><br></p><p><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1474269539911.png\" width=\"643\"></p><p><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1474269547466.png\" width=\"626\"></p><p><br></p><p><br></p>', '2016-09-06 21:20:17', '1', '2016-09-19 15:21:43', '1', '0', null, null, null);
INSERT INTO `t_store_new_activity` VALUES ('3', '31', '静音', null, '<p>静音<br></p>', '2016-09-10 09:17:04', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_new_activity` VALUES ('4', '24', '加盟优势', null, '<p style=\"text-align: left;\">\n\n加盟优势\n\n\n\n</p><p>天虹商场股份有限公司（股票简称：天虹商场，股票代码：002419）是中外合资的连锁零售企业，其控股股东是中国航空工业集团下属的中国航空技术深圳有限公司。</p><p>\n\n  天虹便利店的发展\n\n    </p><p><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8080/th-admin/download/png?fileName=1474076870220.png\" width=\"300\"></p><p><br></p><p>天虹商场股份有限公司（股票简称：天虹商场，股票代码：002419）是中外合资的连锁零售企业，其控股股东是中国航空工业集团下属的中国航空技术深圳有限公司。</p><p>天虹商场股份有限公司（股票简称：天虹商场，股票代码：002419）是中外合资的连锁零售企业，其控股股东是中国航空工业集团下属的中国航空技术深圳有限公司。</p><p>天虹商场股份有限公司（股票简称：天虹商场，股票代码：002419）是中外合资的连锁零售企业，其控股股东是中国航空工业集团下属的中国航空技术深圳有限</p><p><img class=\"fr-fil\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8080/th-admin/download/png?fileName=1474076946818.png\" width=\"200\"></p><p><br></p><p><br></p><p><br></p><p><br></p><p><img class=\"fr-fil\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8080/th-admin/download/png?fileName=1474076979732.png\" width=\"184\"></p><p><img class=\"fr-fir\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8080/th-admin/download/png?fileName=1474076994820.png\" width=\"401\"></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p>天虹商场股份有限公司（股票简称：天虹商场，股票代码：002419）是中外合资的连锁零售企业，其控股股东是中国航空工业集团下属的中国航空技术深圳有限公司。</p><p>天虹商场股份有限公司（股票简称：天虹商场，股票代码：002419）是中外合资的连锁零售企业，其控股股东是中国航空工业集团下属的中国航空技术深圳有限公司。</p>', '2016-09-17 09:50:18', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_new_activity` VALUES ('5', '10', '', null, '<p><span data-fr-verified=\"true\" style=\"background-color: #F6B26B;\">抽奖活动 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></p><p><span data-fr-verified=\"true\" style=\"background-color: #F6B26B;\"><br></span></p><p><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1474269727041.png\" width=\"768\"></p><p><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1474269733595.png\" width=\"765\"></p><p><br></p>', '2016-09-19 15:22:54', '1', '2016-09-19 15:23:06', '1', '0', null, null, null);
INSERT INTO `t_store_new_activity` VALUES ('6', '14', '', null, '<p><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1474274165435.png\" width=\"577\"></p><p>\n\n<span style=\"color: rgb(51, 51, 51); font-family: &quot; Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\" data-fr-verified=\"true\">我们所选配的有机蔬菜在整个生长期没有使用任何一种化学成分，是环保无污染的绿色蔬菜。</span>\n\n<br></p><p><br></p><p><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1474274170994.png\" width=\"576\"></p><p><br></p><p style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">1.其皮中富含大量胶原蛋白和弹性蛋白，对于对抗衰老、延缓肌龄有一定功效。</p><p style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">2.富含不饱和脂肪酸，降低血液中胆固醇和甘油三酯；降低血液粘稠度，改善血液微循环；增强记忆力和思维能力。</p><p style=\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, Arial, Simsun; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">3.有机黑猪肉中的维生素A能够维持正常视觉功能；维持骨骼正常发育，促进生长。</p><p><br></p>', '2016-09-19 16:36:31', '1', '2016-09-19 16:39:30', '1', '0', null, null, null);
INSERT INTO `t_store_new_activity` VALUES ('7', '15', '', null, '<p><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1474274551773.png\" width=\"300\"></p><p><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://localhost:8880/th-admin/download/png?fileName=1474274561734.png\" width=\"300\"></p><p><em>深圳通</em></p><p>方便您的出行</p><p><em>深圳通</em></p><p>方便您的出行</p><p><em>深圳通</em></p><p>方便您的出行</p><p><em>深圳通</em></p><p><em>深圳通</em></p><p>方便您的出行</p><p><em>深圳通</em></p><p>方便您的出行</p><p><em>深圳通</em></p>', '2016-09-19 16:42:42', '1', null, null, '0', null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='新品上市';

-- ----------------------------
-- Records of t_store_new_product
-- ----------------------------
INSERT INTO `t_store_new_product` VALUES ('1', '36', '费列罗品巧克力', '1473517356030.png', '开创多层式用料，外面铺满巧克力碎果仁，里面有威化、软巧克力和一粒完整的榛子。', '2016-09-01 15:49:28', '1', '2016-09-10 22:22:51', '1', '0', null, null, null);
INSERT INTO `t_store_new_product` VALUES ('2', '37', '巧克力', '1473517382983.png', '开创多层式用料，外面铺满巧克力碎果仁，里面有威化、软巧克力和一粒完整的榛子。', '2016-09-01 16:02:00', '1', '2016-09-10 22:23:03', '1', '0', null, null, null);
INSERT INTO `t_store_new_product` VALUES ('3', '37', '巧克力01', '1473516834124.png', '，外面铺满巧克力碎果仁，里面有威化、软巧克力和一粒完整的榛', '2016-09-10 22:14:03', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_new_product` VALUES ('4', '36', '巧克力01', '1473553243805.png', '式用料，外面铺满巧克力碎果仁，里面有威化、软巧克力和一粒完整的', '2016-09-11 08:20:44', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_new_product` VALUES ('5', '36', '巧克力02', '1473553261253.png', '仁，里面有威化、软巧克力和一粒完整的', '2016-09-11 08:21:01', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_new_product` VALUES ('6', '36', '巧克力03', '1473553372688.png', '用料，外面铺满巧克力碎果仁，里面有威化、软巧克力和一粒完整的榛', '2016-09-11 08:22:53', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_new_product` VALUES ('7', '36', '品巧克力04', '1473553392455.png', '用料，外面铺满巧克力碎果仁，里面有威化、软巧克力和一粒完整的榛子', '2016-09-11 08:23:12', '1', null, null, '0', null, null, null);

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
INSERT INTO `t_store_news` VALUES ('1', '163', '圣诞小熊换购活动', '2016-09-01 11:38:10', '2016-09-30 12:38:10', '<ol><li><p style=\"margin-left: 0px;\">\n\n任意消费满10元+15元换购圣诞小熊一只&nbsp;</p></li><li><p style=\"margin-left: 0px;\">参与门店：天虹微喔和万店通所有门店（不含加盟店）\n\n\n<br></p></li></ol>', '2016-09-19 11:39:05', '1', '2016-09-19 12:04:51', '1', '0', null, null, null);
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
INSERT INTO `t_store_pre_buy` VALUES ('1', '11', '011', '2016-09-01 00:00:00', '168g', '108元', '1472994764651.png', '2016-09-04 21:12:52', '1', null, null, '0', null, null, null);
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
INSERT INTO `t_store_product` VALUES ('1', '1', '柱候牛腩饭', '22元', '1472713553941.png', '2016-09-01 14:55:32', '1', '2016-09-01 15:05:54', '1', '0', null, null, null);
INSERT INTO `t_store_product` VALUES ('2', '4', '台北便当', '25元', '1472713594349.png', '2016-09-01 15:06:36', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_product` VALUES ('3', '36', '费列罗品巧克力', null, '1472715557413.png', '2016-09-01 15:39:18', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_product` VALUES ('4', '1', '柱候牛腩饭1', '33元', '1473512779841.png', '2016-09-10 21:06:20', '1', null, null, '0', null, null, null);
INSERT INTO `t_store_product` VALUES ('5', '1', '柱候牛腩饭2', '55元', '1473512804116.png', '2016-09-10 21:06:45', '1', null, null, '0', null, null, null);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_user_menu
-- ----------------------------
INSERT INTO `t_sys_user_menu` VALUES ('21', '1', '1', '2016-07-19 21:53:37', '1', null, null, '0', null, null, null);
INSERT INTO `t_sys_user_menu` VALUES ('22', '8', '1', '2016-07-19 21:53:37', '1', null, null, '0', null, null, null);
INSERT INTO `t_sys_user_menu` VALUES ('23', '10', '1', '2016-07-19 21:53:37', '1', null, null, '0', null, null, null);
INSERT INTO `t_sys_user_menu` VALUES ('24', '12', '1', '2016-07-19 21:53:37', '1', null, null, '0', null, null, null);
INSERT INTO `t_sys_user_menu` VALUES ('25', '3', '1', '2016-07-19 21:53:37', '1', null, null, '0', null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户-角色关系表';

-- ----------------------------
-- Records of t_sys_user_role
-- ----------------------------
INSERT INTO `t_sys_user_role` VALUES ('6', '1', '1', '2016-07-19 21:53:37', '1', null, null, '0', null, null, null);
INSERT INTO `t_sys_user_role` VALUES ('7', '1', '2', '2016-07-19 21:53:37', '1', null, null, '0', null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

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
