update t_menu set link='/web/investment/business' where id=198;
update t_menu set link='/web/investment/show' where id=199;
update t_menu set link='/web/investment/index' where id=178;

update t_menu set link='/web/culture/index2' where id=193;
update t_menu set link='/web/culture/trailer',url='/menu/news/detail' where id=194;
update t_menu set link='/web/culture/ejournals',url='/menu/news/detail' where id=195;
update t_menu set link='/web/culture/video',url='/web/culture/video/index' where id=196;
update t_menu set link='/web/culture/public',url='/web/culture/public/index' where id=197;

update t_menu set link='/web/staff/index' where id=177;
INSERT INTO `t_menu` (`name`, `link`, `url`, `level`, `parent_id`, `sort`, `is_show`, `create_time`, `create_id`, `is_deleted`) VALUES ('天虹商学院', '/web/staff/school', '', 3, 177, 1, 1, '2016-10-8 14:31:59', 1, 0);
INSERT INTO `t_menu` (`name`, `link`, `url`, `level`, `parent_id`, `sort`, `is_show`, `create_time`, `create_id`, `is_deleted`) VALUES ('人在天虹', '/web/staff/talent', '', 3, 177, 2, 1, '2016-10-8 14:32:21', 1, 0);
INSERT INTO `t_menu` (`name`, `link`, `url`, `level`, `parent_id`, `sort`, `is_show`, `create_time`, `create_id`, `is_deleted`) VALUES ('社会招聘', '', '', 3, 177, 3, 1, '2016-10-8 14:32:30', 1, 0);
INSERT INTO `t_menu` (`name`, `link`, `url`, `level`, `parent_id`, `sort`, `is_show`, `create_time`, `create_id`, `is_deleted`) VALUES ('校园招聘', '', '', 3, 177, 4, 1, '2016-10-8 14:32:37', 1, 0);

