/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : tianhong

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2016-07-16 14:19:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_culture
-- ----------------------------
DROP TABLE IF EXISTS `t_culture`;
CREATE TABLE `t_culture` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menu_id` int(11) DEFAULT NULL COMMENT '菜单ID',
  `title` varchar(1024) DEFAULT NULL COMMENT '标题',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='企业文化';

-- ----------------------------
-- Records of t_culture
-- ----------------------------

-- ----------------------------
-- Table structure for t_investor
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
-- Table structure for t_login_log
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
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '菜单名',
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('1', '关于天虹', null, '1', '0', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('2', '企业文化', null, '1', '0', '2', '1', '2016-07-13 16:03:40', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('3', '公司业务', null, '1', '0', '3', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('4', '新闻中心', null, '1', '0', '4', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('5', '人力资源', null, '1', '0', '5', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('6', '招商采购', null, '1', '0', '6', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('7', '投资者关系', null, '1', '0', '7', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('8', '公司概况', null, '2', '1', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('9', '多元业务', null, '2', '1', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('10', '发展历程', null, '2', '1', '3', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('11', '发展战略', null, '2', '1', '4', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('12', '荣誉奖项', null, '2', '1', '5', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('13', '天虹置业', null, '3', '9', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('14', '微喔便利店', null, '3', '9', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('15', '天虹红领巾', null, '3', '9', '3', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('16', '天虹小额贷', null, '3', '9', '4', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('17', '天虹商场', null, '3', '9', '5', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('18', '君尚百货', null, '3', '9', '6', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('19', '天虹商学院', null, '3', '9', '7', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('20', '购物中心', null, '3', '9', '8', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('21', '企业文化', null, '2', '2', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('22', '宣传片', null, '2', '2', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('23', '电子期刊', null, '2', '2', '3', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('24', '视频中心', null, '2', '2', '4', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('25', '社会责任', null, '2', '2', '5', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('26', '企业使命', null, '3', '21', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('27', '企业愿景', null, '3', '21', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('28', '企业价值观', null, '3', '21', '3', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('29', '社会公益', null, '3', '25', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('30', '员工活动', null, '3', '25', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('31', '环境保护', null, '3', '25', '3', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('32', '公司新闻', null, '2', '4', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('33', '媒体视角', null, '2', '4', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('34', '天虹商学院', null, '2', '5', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('35', '人在天虹', null, '2', '5', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('36', '社会招聘', null, '2', '5', '3', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('37', '校园招聘', null, '2', '5', '4', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('38', '商学院简介', null, '3', '34', '1', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('39', '培训中心', null, '3', '34', '2', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('40', '创新中心', null, '3', '34', '3', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('41', '同济大学MBA项目', null, '3', '34', '4', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('42', '场地租赁', null, '3', '34', '5', '1', '2016-07-13 16:03:05', '1', null, null, '0', null, null, null);
INSERT INTO `t_menu` VALUES ('43', '用户组', '/user', '1', '0', '8', '0', '2016-07-14 22:20:02', '1', null, null, '0', null, null, null);

-- ----------------------------
-- Table structure for t_news_center
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
-- Table structure for t_picture
-- ----------------------------
DROP TABLE IF EXISTS `t_picture`;
CREATE TABLE `t_picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menu_id` int(11) DEFAULT NULL COMMENT '菜单ID',
  `sort` tinyint(4) DEFAULT NULL COMMENT '排序',
  `title` varchar(1024) DEFAULT NULL COMMENT '标题',
  `url` varchar(1024) DEFAULT NULL COMMENT '链接(图片跳转链接)',
  `content` text COMMENT '图片跳转后内容',
  `picture_type` tinyint(4) NOT NULL COMMENT '图片类型（banner、普通图片）1-banner,2-普通',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_picture
-- ----------------------------

-- ----------------------------
-- Table structure for t_recruit_interaction
-- ----------------------------
DROP TABLE IF EXISTS `t_recruit_interaction`;
CREATE TABLE `t_recruit_interaction` (
  `id` int(11) NOT NULL COMMENT 'id',
  `question` varchar(1024) DEFAULT NULL COMMENT '����',
  `answer` varchar(1024) DEFAULT NULL COMMENT '�ش�',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `is_show` int(1) DEFAULT NULL COMMENT '�Ƿ���ʾ��1��ʾ��0����ʾ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='����';

-- ----------------------------
-- Records of t_recruit_interaction
-- ----------------------------

-- ----------------------------
-- Table structure for t_recruit_job
-- ----------------------------
DROP TABLE IF EXISTS `t_recruit_job`;
CREATE TABLE `t_recruit_job` (
  `id` int(11) NOT NULL COMMENT '���',
  `job_name` varchar(64) DEFAULT NULL COMMENT 'ְλ����',
  `job_no` bigint(20) DEFAULT NULL COMMENT 'ְλ���',
  `department` varchar(64) DEFAULT NULL COMMENT '����:ö��',
  `area` varchar(64) DEFAULT NULL COMMENT '�����ص�:�����ص�',
  `job_type` char(16) DEFAULT NULL COMMENT '��������:ö��',
  `job_category` varchar(64) DEFAULT NULL COMMENT '��λ���:ö��',
  `num` int(5) DEFAULT NULL COMMENT '��Ƹ����',
  `salary_max` int(10) DEFAULT NULL COMMENT '��н����',
  `salary_min` int(10) DEFAULT NULL COMMENT '��н����',
  `publish_date` date DEFAULT NULL COMMENT '��������',
  `recuit_type` varchar(64) DEFAULT NULL COMMENT '��Ƹ����:����,У��',
  `job_descption` varchar(1024) DEFAULT NULL COMMENT 'ְλ����',
  `require_age` int(5) DEFAULT NULL COMMENT 'Ҫ������',
  `require_years` int(5) DEFAULT NULL COMMENT 'Ҫ������',
  `require_en` varchar(32) DEFAULT NULL COMMENT 'Ҫ��Ӣ��ȼ�',
  `require_cn` varchar(32) DEFAULT NULL COMMENT 'Ҫ����̶�',
  `require_yy` varchar(32) DEFAULT NULL COMMENT 'Ҫ������̶�',
  `require_other` varchar(64) DEFAULT NULL COMMENT 'Ҫ������',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `create_user` int(11) DEFAULT NULL COMMENT '������',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `update_user` int(11) DEFAULT NULL COMMENT '������',
  `is_show` int(1) DEFAULT NULL COMMENT '�Ƿ���ʾ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��Ƹ-ְλ��';

-- ----------------------------
-- Records of t_recruit_job
-- ----------------------------

-- ----------------------------
-- Table structure for t_recruit_qustion
-- ----------------------------
DROP TABLE IF EXISTS `t_recruit_qustion`;
CREATE TABLE `t_recruit_qustion` (
  `id` int(11) NOT NULL COMMENT 'id',
  `question` varchar(258) DEFAULT NULL COMMENT '����',
  `name` varchar(64) DEFAULT NULL COMMENT '����',
  `email` varchar(64) DEFAULT NULL COMMENT '����',
  `phone` varchar(32) DEFAULT NULL COMMENT '�ֻ�',
  `orgrazation` varchar(128) DEFAULT NULL COMMENT '��˾����',
  `detail` varchar(1024) DEFAULT NULL COMMENT '��������',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='����';

-- ----------------------------
-- Records of t_recruit_qustion
-- ----------------------------

-- ----------------------------
-- Table structure for t_recruit_resume
-- ----------------------------
DROP TABLE IF EXISTS `t_recruit_resume`;
CREATE TABLE `t_recruit_resume` (
  `id` int(11) NOT NULL COMMENT '���',
  `user_id` int(11) DEFAULT NULL COMMENT '�û����',
  `name` varchar(64) DEFAULT NULL COMMENT '����',
  `sex` varchar(4) DEFAULT NULL COMMENT '�Ա��У�Ů',
  `birth_date` date DEFAULT NULL COMMENT '��������',
  `phone` int(16) DEFAULT NULL COMMENT '�ֻ�����',
  `email` varchar(64) DEFAULT NULL COMMENT '����',
  `school` varchar(128) DEFAULT NULL COMMENT '��ҵѧУ',
  `major` varchar(64) DEFAULT NULL COMMENT 'רҵ',
  `graduate_date` date DEFAULT NULL COMMENT '��ҵ����',
  `oranazation` varchar(128) DEFAULT NULL COMMENT '��˾����',
  `work_years` int(4) DEFAULT NULL COMMENT '��������',
  `current_palace` varchar(64) DEFAULT NULL COMMENT 'Ŀǰ���ڵ�',
  `degrees` varchar(64) DEFAULT NULL COMMENT 'ѧ��',
  `spare_phone` int(16) DEFAULT NULL COMMENT '�����ֻ�����',
  `nation` varchar(64) DEFAULT NULL COMMENT '����',
  `id_card` varchar(32) DEFAULT NULL COMMENT '���֤����',
  `id_card_add` varchar(128) DEFAULT NULL COMMENT '���֤��ַ',
  `background` varchar(512) DEFAULT NULL COMMENT '����˵��',
  `intention` varchar(512) DEFAULT NULL COMMENT '��ְ����',
  `work_descption` varchar(512) DEFAULT NULL COMMENT '��������',
  `project_history` varchar(512) DEFAULT NULL COMMENT '��Ŀ����',
  `train_history` varchar(512) DEFAULT NULL COMMENT '��ѵ����',
  `language_desc` varchar(512) DEFAULT NULL COMMENT '����˵��',
  `reward` varchar(512) DEFAULT NULL COMMENT '����',
  `ohter_info` varchar(512) DEFAULT NULL COMMENT '������Ϣ',
  `certificate` varchar(512) DEFAULT NULL COMMENT '֤��',
  `personal_like` varchar(512) DEFAULT NULL COMMENT '����',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '�޸�ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������Ϣ';

-- ----------------------------
-- Records of t_recruit_resume
-- ----------------------------

-- ----------------------------
-- Table structure for t_recruit_resume_delivery
-- ----------------------------
DROP TABLE IF EXISTS `t_recruit_resume_delivery`;
CREATE TABLE `t_recruit_resume_delivery` (
  `id` int(11) NOT NULL COMMENT 'id',
  `resume_id` int(11) DEFAULT NULL COMMENT '�������',
  `job_id` int(11) DEFAULT NULL,
  `delivery_time` datetime DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL,
  `job_name` varchar(64) DEFAULT NULL,
  `deparment` varchar(64) DEFAULT NULL,
  `area` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='����Ͷ��';

-- ----------------------------
-- Records of t_recruit_resume_delivery
-- ----------------------------

-- ----------------------------
-- Table structure for t_recruit_user
-- ----------------------------
DROP TABLE IF EXISTS `t_recruit_user`;
CREATE TABLE `t_recruit_user` (
  `id` int(11) NOT NULL COMMENT 'id',
  `username` varchar(64) DEFAULT NULL COMMENT '�û���',
  `password` varchar(64) DEFAULT NULL COMMENT '����',
  `source` varchar(16) DEFAULT NULL COMMENT '��Դ��qq,΢��,ע��',
  `able` int(1) DEFAULT NULL COMMENT '�Ƿ���ã�1���ã�0������',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��Ƹ�û�';

-- ----------------------------
-- Records of t_recruit_user
-- ----------------------------

-- ----------------------------
-- Table structure for t_resume_attachment
-- ----------------------------
DROP TABLE IF EXISTS `t_resume_attachment`;
CREATE TABLE `t_resume_attachment` (
  `id` int(11) NOT NULL COMMENT '���',
  `resume_id` int(11) DEFAULT NULL COMMENT '�������',
  `file_path` varchar(64) DEFAULT NULL COMMENT '����',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '�޸�ʱ��',
  `able` varchar(16) DEFAULT NULL COMMENT '�Ƿ����:ö��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��������';

-- ----------------------------
-- Records of t_resume_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for t_resume_education_history
-- ----------------------------
DROP TABLE IF EXISTS `t_resume_education_history`;
CREATE TABLE `t_resume_education_history` (
  `id` int(11) NOT NULL COMMENT '���',
  `resume_id` int(11) DEFAULT NULL COMMENT '�������',
  `major` varchar(64) DEFAULT NULL COMMENT 'ѧ��',
  `start_date` date DEFAULT NULL COMMENT '��ʼʱ��',
  `end_date` date DEFAULT NULL COMMENT '����ʱ��',
  `school` varchar(64) DEFAULT NULL COMMENT '��ҵԺУ',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '�޸�ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��������';

-- ----------------------------
-- Records of t_resume_education_history
-- ----------------------------

-- ----------------------------
-- Table structure for t_resume_language
-- ----------------------------
DROP TABLE IF EXISTS `t_resume_language`;
CREATE TABLE `t_resume_language` (
  `id` int(11) NOT NULL COMMENT '���',
  `resume_id` int(11) DEFAULT NULL COMMENT '�������',
  `language` varchar(64) DEFAULT NULL COMMENT '����',
  `level` varchar(16) DEFAULT NULL COMMENT '�ȼ�:ö��',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '�޸�ʱ��',
  `tan_level` varchar(16) DEFAULT NULL COMMENT '����ˮƽ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='����';

-- ----------------------------
-- Records of t_resume_language
-- ----------------------------

-- ----------------------------
-- Table structure for t_resume_skill
-- ----------------------------
DROP TABLE IF EXISTS `t_resume_skill`;
CREATE TABLE `t_resume_skill` (
  `id` int(11) NOT NULL COMMENT '���',
  `resume_id` int(11) DEFAULT NULL COMMENT '�������',
  `skill` varchar(64) DEFAULT NULL COMMENT '����',
  `level` varchar(16) DEFAULT NULL COMMENT '�����̶�:ö��',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '�޸�ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='����';

-- ----------------------------
-- Records of t_resume_skill
-- ----------------------------

-- ----------------------------
-- Table structure for t_resume_work_history
-- ----------------------------
DROP TABLE IF EXISTS `t_resume_work_history`;
CREATE TABLE `t_resume_work_history` (
  `id` int(11) NOT NULL COMMENT '���',
  `resume_id` int(11) DEFAULT NULL COMMENT '�������',
  `position` varchar(64) DEFAULT NULL COMMENT 'ְλ',
  `start_date` date DEFAULT NULL COMMENT '��ʼʱ��',
  `end_date` date DEFAULT NULL COMMENT '����ʱ��',
  `address` varchar(64) DEFAULT NULL COMMENT '��ַ',
  `industry_type` varchar(64) DEFAULT NULL COMMENT '��ҵ���ͣ�ö��',
  `oranazation_type` varchar(32) DEFAULT NULL COMMENT '��˾���ʣ�ö��',
  `report_obj` varchar(64) DEFAULT NULL COMMENT '�㱨����',
  `subordinate_num` int(10) DEFAULT NULL COMMENT '��������',
  `payment` varchar(128) DEFAULT NULL COMMENT 'ְλнˮ',
  `work_duty` int(4) DEFAULT NULL COMMENT '����ְ��',
  `achievement_desc` varchar(512) DEFAULT NULL COMMENT 'ҵ������',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '�޸�ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��������';

-- ----------------------------
-- Records of t_resume_work_history
-- ----------------------------

-- ----------------------------
-- Table structure for t_store
-- ----------------------------
DROP TABLE IF EXISTS `t_store`;
CREATE TABLE `t_store` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `name` varchar(1024) DEFAULT NULL COMMENT '门店名称',
  `describe` text COMMENT '门店描述',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='天虹门店';

-- ----------------------------
-- Records of t_store
-- ----------------------------

-- ----------------------------
-- Table structure for t_store_news
-- ----------------------------
DROP TABLE IF EXISTS `t_store_news`;
CREATE TABLE `t_store_news` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `title` varchar(1024) DEFAULT NULL COMMENT '标题',
  `type` tinyint(4) DEFAULT NULL COMMENT '门店描述、商城新闻、促销信息',
  `content` text COMMENT '门店展示内容',
  `source` varchar(1024) DEFAULT NULL COMMENT '新闻来源',
  `layout` text COMMENT '门店布局描述(1F,2F,3F,4F,5F)',
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
-- Records of t_store_news
-- ----------------------------

-- ----------------------------
-- Table structure for t_store_suggest
-- ----------------------------
DROP TABLE IF EXISTS `t_store_suggest`;
CREATE TABLE `t_store_suggest` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL COMMENT '门店ID',
  `store_name` varchar(255) DEFAULT NULL COMMENT '门店名称',
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
-- Records of t_store_suggest
-- ----------------------------

-- ----------------------------
-- Table structure for t_sys_role
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色表';

-- ----------------------------
-- Records of t_sys_role
-- ----------------------------

-- ----------------------------
-- Table structure for t_sys_role_menu
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-权限/菜单关系表';

-- ----------------------------
-- Records of t_sys_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for t_sys_user_menu
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_user_menu
-- ----------------------------

-- ----------------------------
-- Table structure for t_sys_user_role
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户-角色关系表';

-- ----------------------------
-- Records of t_sys_user_role
-- ----------------------------

-- ----------------------------
-- Table structure for t_user
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
