drop table if exists t_recruit_user;

/*==============================================================*/
/* Table: t_recruit_user                                        */
/*==============================================================*/
create table t_recruit_user
(
   id                   int(11) not null comment 'id',
   username             varchar2(64) comment '用户名',
   password             varchar2(64) comment '密码',
   source               varchar2(16) comment '来源：qq,微信,注册',
   able                 int(1) comment '是否可用，1可用，0不可用',
   create_time          datatime comment '创建时间',
   primary key (id)
);

alter table t_recruit_user comment '招聘用户';




drop table if exists t_recruit_interaction;

/*==============================================================*/
/* Table: t_recruit_interaction                                 */
/*==============================================================*/
create table t_recruit_interaction
(
   id                   int(11) not null comment 'id',
   question             varchar2(1024) comment '问题',
   answer               varchar2(1024) comment '回答',
   create_time          datetime comment '创建时间',
   update_time          timestamp comment '更新时间',
   is_show              int(1) comment '是否显示，1显示，0不显示',
   primary key (id)
);

alter table t_recruit_interaction comment '互动';




drop table if exists t_recruit_qustion;

/*==============================================================*/
/* Table: t_recruit_qustion                                     */
/*==============================================================*/
create table t_recruit_qustion
(
   id                   int(11) not null comment 'id',
   question             varchar2(258) comment '问题',
   name                 varchar2(64) comment '姓名',
   email                varchar2(64) comment '邮箱',
   phone                varchar2(32) comment '手机',
   orgrazation          varchar2(128) comment '公司机构',
   detail               varchar2(1024) comment '问题描述',
   create_time          datetime comment '创建时间',
   primary key (id)
);

alter table t_recruit_qustion comment '提问';




drop table if exists t_recruit_job;

/*==============================================================*/
/* Table: t_recruit_job                                         */
/*==============================================================*/
create table t_recruit_job
(
   id                   int(11) not null comment '编号',
   job_name             varchar2(64) comment '职位名称',
   job_no               bigint comment '职位编号',
   department           varchar2(64) comment '部门:枚举',
   area                 varchar2(64) comment '工作地点:关联地点',
   job_type             char(16) comment '工作类型:枚举',
   job_category         varchar2(64) comment '岗位类别:枚举',
   num                  int(5) comment '招聘人数',
   salary_max           int(10) comment '月薪上限',
   salary_min           int(10) comment '月薪下限',
   publish_date         date comment '发布日期',
   recuit_type          varchar2(64) comment '招聘类型:社招,校招',
   job_descption        varchar2(1024) comment '职位描述',
   require_age          int(5) comment '要求年龄',
   require_years        int(5) comment '要求年限',
   require_en           varchar2(32) comment '要求英语等级',
   require_cn           varchar2(32) comment '要求汉语程度',
   require_yy           varchar2(32) comment '要求粤语程度',
   require_other        varchar2(64) comment '要求其他',
   create_time          datetime comment '创建时间',
   create_user          int(11) comment '创建者',
   update_time          timestamp comment '更新时间',
   update_user          int(11) comment '更新者',
   is_show              int(1) comment '是否显示',
   primary key (id)
);

alter table t_recruit_job comment '招聘-职位表';




drop table if exists t_recruit_resume;

/*==============================================================*/
/* Table: t_recruit_resume                                      */
/*==============================================================*/
create table t_recruit_resume
(
   id                   int(11) not null comment '编号',
   user_id              int(11) comment '用户编号',
   name                 varchar2(64) comment '姓名',
   sex                  varchar2(4) comment '性别：男，女',
   birth_date           date comment '出生日期',
   phone                int(16) comment '手机号码',
   email                varchar2(64) comment '邮箱',
   school               varchar2(128) comment '毕业学校',
   major                varchar2(64) comment '专业',
   graduate_date        date comment '毕业日期',
   oranazation          varchar2(128) comment '公司机构',
   work_years           int(4) comment '工作年限',
   current_palace       varchar2(64) comment '目前所在地',
   degrees              varchar2(64) comment '学历',
   spare_phone          int(16) comment '备用手机号码',
   nation               varchar2(64) comment '民族',
   id_card              varchar2(32) comment '身份证号码',
   id_card_add          varchar2(128) comment '身份证地址',
   background           varchar2(512) comment '背景说明',
   intention            varchar2(512) comment '求职意向',
   work_descption       varchar2(512) comment '工作描述',
   project_history      varchar2(512) comment '项目描述',
   train_history        varchar2(512) comment '培训经历',
   language_desc        varchar2(512) comment '语言说明',
   reward               varchar2(512) comment '奖励',
   ohter_info           varchar2(512) comment '其他信息',
   certificate          varchar2(512) comment '证书',
   "like"               varchar2(512) comment '爱好',
   create_time          datetime comment '创建时间',
   update_time          timestamp comment '修改时间',
   primary key (id)
);

alter table t_recruit_resume comment '简历信息';





drop table if exists t_resume_work_history;

/*==============================================================*/
/* Table: t_resume_work_history                                 */
/*==============================================================*/
create table t_resume_work_history
(
   id                   int(11) not null comment '编号',
   resume_id            int(11) comment '简历编号',
   position             varchar2(64) comment '职位',
   start_date           date comment '开始时间',
   end_date             date comment '结束时间',
   address              varchar2(64) comment '地址',
   industry_type        varchar2(64) comment '行业类型：枚举',
   oranazation_type     varchar2(32) comment '公司性质：枚举',
   report_obj           varchar2(64) comment '汇报对象',
   subordinate_num      int(10) comment '下属人数',
   payment              varchar2(128) comment '职位薪水',
   work_duty            int(4) comment '工作职责',
   achievement_desc     varchar2(512) comment '业绩描述',
   create_time          datetime comment '创建时间',
   update_time          timestamp comment '修改时间',
   primary key (id)
);

alter table t_resume_work_history comment '工作经历';



drop table if exists t_resume_shill;

/*==============================================================*/
/* Table: t_resume_shill                                        */
/*==============================================================*/
create table t_resume_shill
(
   id                   int(11) not null comment '编号',
   resume_id            int(11) comment '简历编号',
   skill                varchar2(64) comment '技能',
   level                varchar2(16) comment '熟练程度:枚举',
   create_time          datetime comment '创建时间',
   update_time          timestamp comment '修改时间',
   primary key (id)
);

alter table t_resume_shill comment '技能';





drop table if exists t_resume_education_history;

/*==============================================================*/
/* Table: t_resume_education_history                            */
/*==============================================================*/
create table t_resume_education_history
(
   id                   int(11) not null comment '编号',
   resume_id            int(11) comment '简历编号',
   major                varchar2(64) comment '学历',
   start_date           date comment '开始时间',
   end_date             date comment '结束时间',
   school               varchar2(64) comment '毕业院校',
   create_time          datetime comment '创建时间',
   update_time          timestamp comment '修改时间',
   primary key (id)
);

alter table t_resume_education_history comment '教育经历';




drop table if exists t_resume_language;

/*==============================================================*/
/* Table: t_resume_language                                     */
/*==============================================================*/
create table t_resume_language
(
   id                   int(11) not null comment '编号',
   resume_id            int(11) comment '简历编号',
   language             varchar2(64) comment '技能',
   level                varchar2(16) comment '等级:枚举',
   create_time          datetime comment '创建时间',
   update_time          timestamp comment '修改时间',
   tan_level            varchar2(16) comment '口语水平',
   primary key (id)
);

alter table t_resume_language comment '语言';



drop table if exists t_resume_attachment;

/*==============================================================*/
/* Table: t_resume_attachment                                   */
/*==============================================================*/
create table t_resume_attachment
(
   id                   int(11) not null comment '编号',
   resume_id            int(11) comment '简历编号',
   file_path            varchar2(64) comment '技能',
   create_time          datetime comment '创建时间',
   update_time          timestamp comment '修改时间',
   able                 varchar2(16) comment '是否可用:枚举',
   primary key (id)
);

alter table t_resume_attachment comment '简历附件';






drop table if exists t_recruit_resume_delivery;

/*==============================================================*/
/* Table: t_recruit_resume_delivery                             */
/*==============================================================*/
create table t_recruit_resume_delivery
(
   id                   int(11) not null comment 'id',
   resume_id            int(11) comment '简历编号',
   job_id               int(11),
   delivery_time        datetime,
   status               varchar2(16),
   job_name             varchar2(64),
   deparment            varchar2(64),
   area                 varchar2(64),
   create_time          datetime,
   primary key (id)
);

alter table t_recruit_resume_delivery comment '简历投递';





