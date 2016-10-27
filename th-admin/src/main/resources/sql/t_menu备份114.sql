/*
Navicat MySQL Data Transfer

Source Server         : th114
Source Server Version : 50173
Source Host           : 192.168.163.114:3306
Source Database       : tianhong

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2016-10-27 21:38:39
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8;

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
INSERT INTO `t_menu` VALUES ('172', 'WEB前台', '', '', '1', '0', '15', '1', '2016-09-19 20:14:38', '1', null, null, '0', 'web', null, null);
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
INSERT INTO `t_menu` VALUES ('202', '公司治理', '/web/investor/companyManage.html', '/web/investor/companyManage', '3', '180', '3', '1', '2016-09-19 20:34:19', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('203', '定期报告', 'http://www.cninfo.com.cn/cninfo-new/index', '', '3', '180', '4', '1', '2016-09-19 20:34:24', '1', '2016-09-19 20:44:51', '1', '0', '', null, null);
INSERT INTO `t_menu` VALUES ('204', '临时公告', 'http://www.cninfo.com.cn/cninfo-new/index', '', '3', '180', '5', '1', '2016-09-19 20:34:30', '1', '2016-09-19 20:45:40', '1', '0', '', null, null);
INSERT INTO `t_menu` VALUES ('205', '股东回报', '/web/investor/profit.html', '/web/investor/profit', '3', '180', '6', '1', '2016-09-19 20:34:36', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('206', '宣传与保护', '/web/investor/protect.html', '/web/investor/protect', '3', '180', '7', '1', '2016-09-19 20:34:48', '1', null, null, '0', '', null, null);
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
INSERT INTO `t_menu` VALUES ('248', '公司制度', '', '/web/investment/investmentinfo', '4', '202', '2', '1', '2016-10-18 21:18:45', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('249', '利润分配', '', '', '4', '202', '3', '1', '2016-10-18 21:19:06', '1', '2016-10-18 21:20:05', '1', '1', '', null, null);
INSERT INTO `t_menu` VALUES ('250', '分红动态', '', '/web/culture/commonweal/index', '4', '202', '4', '1', '2016-10-18 21:19:45', '1', '2016-10-18 21:20:01', '1', '1', '', null, null);
INSERT INTO `t_menu` VALUES ('251', '分红动态', '', '/web/culture/commonweal/index', '4', '205', '2', '1', '2016-10-18 21:20:30', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('252', '利润分配', '', '', '4', '205', '1', '1', '2016-10-18 21:20:41', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('253', '热点关注', '', '/web/culture/commonweal/index', '4', '206', '1', '1', '2016-10-18 21:21:11', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('254', '法律法规', '', '/web/culture/commonweal/index', '4', '206', '2', '1', '2016-10-18 21:21:27', '1', null, null, '0', '', null, null);
INSERT INTO `t_menu` VALUES ('255', '公益教育', '', '/web/culture/commonweal/index', '4', '206', '3', '1', '2016-10-18 21:21:46', '1', null, null, '0', '', null, null);
