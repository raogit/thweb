update t_menu set link='/web/investment/business' where id=198;
update t_menu set link='/web/investment/show' where id=199;
update t_menu set link='/web/investment/index' where id=178;

update t_menu set link='/web/culture/index2' where id=193;
update t_menu set link='/web/culture/trailer',url='/web/culture/trailer/index' where id=194;
update t_menu set link='/web/culture/ejournals',url='/menu/news/detail' where id=195;
update t_menu set link='/web/culture/video',url='/web/culture/video/index' where id=196;
update t_menu set link='/web/culture/public',url='/web/culture/public/index' where id=197;

update t_menu set link='/web/staff/index' where id=177;
INSERT INTO `t_menu` (`name`, `link`, `url`, `level`, `parent_id`, `sort`, `is_show`, `create_time`, `create_id`, `is_deleted`) VALUES ('天虹商学院', '/web/staff/school', '', 3, 177, 1, 1, '2016-10-8 14:31:59', 1, 0);
INSERT INTO `t_menu` (`name`, `link`, `url`, `level`, `parent_id`, `sort`, `is_show`, `create_time`, `create_id`, `is_deleted`) VALUES ('人在天虹', '/web/staff/talent', '', 3, 177, 2, 1, '2016-10-8 14:32:21', 1, 0);
INSERT INTO `t_menu` (`name`, `link`, `url`, `level`, `parent_id`, `sort`, `is_show`, `create_time`, `create_id`, `is_deleted`) VALUES ('社会招聘', '', '', 3, 177, 3, 1, '2016-10-8 14:32:30', 1, 0);
INSERT INTO `t_menu` (`name`, `link`, `url`, `level`, `parent_id`, `sort`, `is_show`, `create_time`, `create_id`, `is_deleted`) VALUES ('校园招聘', '', '', 3, 177, 4, 1, '2016-10-8 14:32:37', 1, 0);



update t_menu set link='https://f.tianhong.cn/' where id=186;
update t_menu set link='/market/index' where id=187;
update t_menu set link='http://www.dreams-on.com/' where id=188;
update t_menu set link='/shopping/index' where id=189;
update t_menu set link='/store/index' where id=190;
update t_menu set link='/app/list' where id=191;
update t_menu set link='/home/index' where id=192;
update t_menu set link='http://szrainbowhr.hirede.com/CareerSite/CampusRecruit' where id=214;
update t_menu set link='http://szrainbowhr.hirede.com/CareerSite/Index' where id=215;
update t_menu set url='/pdf/index' where id=195;
INSERT INTO `t_menu` (`id`, `name`, `link`, `url`, `level`, `parent_id`, `sort`, `is_show`, `create_time`, `create_id`, `is_deleted`) VALUES (212, '公益活动', '', '/web/culture/commonweal/index', 4, 197, 1, 0, '2016-10-10 21:21:08', 1, 0);
INSERT INTO `t_menu` (`id`, `name`, `link`, `url`, `level`, `parent_id`, `sort`, `is_show`, `create_time`, `create_id`, `is_deleted`) VALUES (213, '员工活动', '', '/web/culture/public/index', 4, 197, 2, 0, '2016-10-10 21:21:25', 1, 0);
INSERT INTO `t_menu` (`id`, `name`, `link`, `url`, `level`, `parent_id`, `sort`, `is_show`, `create_time`, `create_id`, `is_deleted`) VALUES (214, '社会责任报告', '', '/web/culture/public/index', 4, 197, 3, 0, '2016-10-10 22:47:13', 1, 0);
