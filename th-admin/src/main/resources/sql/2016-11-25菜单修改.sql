update t_menu t set t.parent_id=150 where t.id=153;
update t_menu t set t.`name`='上部',t.parent_id=313,t.`level`=3,t.sort=1 where t.id=165;

insert into `t_menu` (`id`, `name`, `link`, `url`, `level`, `parent_id`, `sort`, `is_show`, `create_time`, `create_id`, `update_time`, `update_id`, `is_deleted`, `backup1`, `backup2`, `backup3`) values('313','最新活动','/store/newactivity/index','/newactivity/newactivity-info','2','162','3','1','2016-08-31 17:25:54','1','2016-08-31 20:43:27','1','0','',NULL,NULL);
insert into `t_menu` (`id`, `name`, `link`, `url`, `level`, `parent_id`, `sort`, `is_show`, `create_time`, `create_id`, `update_time`, `update_id`, `is_deleted`, `backup1`, `backup2`, `backup3`) values('314','下部','','/newactivity/recommend','3','313','2','1','2016-11-23 16:10:18','1','2016-11-23 16:16:12','1','0','',NULL,NULL);
