drop table if exists t_recruit_user;

/*==============================================================*/
/* Table: t_recruit_user                                        */
/*==============================================================*/
create table t_recruit_user
(
   id                   int(11) not null comment 'id',
   username             varchar(64) comment '�û���',
   password             varchar(64) comment '����',
   source               varchar(16) comment '��Դ��qq,΢��,ע��',
   able                 int(1) comment '�Ƿ���ã�1���ã�0������',
   create_time          datetime comment '����ʱ��',
   primary key (id)
);

alter table t_recruit_user comment '��Ƹ�û�';




drop table if exists t_recruit_interaction;

/*==============================================================*/
/* Table: t_recruit_interaction                                 */
/*==============================================================*/
create table t_recruit_interaction
(
   id                   int(11) not null comment 'id',
   question             varchar(1024) comment '����',
   answer               varchar(1024) comment '�ش�',
   create_time          datetime comment '����ʱ��',
   update_time          timestamp comment '����ʱ��',
   is_show              int(1) comment '�Ƿ���ʾ��1��ʾ��0����ʾ',
   faq_type             char(10) comment '�������ͣ�',
   primary key (id)
);

alter table t_recruit_interaction comment '����FAQ';





drop table if exists t_recruit_qustion;

/*==============================================================*/
/* Table: t_recruit_qustion                                     */
/*==============================================================*/
create table t_recruit_qustion
(
   id                   int(11) not null comment 'id',
   question             varchar(258) comment '����',
   name                 varchar(64) comment '����',
   email                varchar(64) comment '����',
   phone                varchar(32) comment '�ֻ�',
   orgrazation          varchar(128) comment '��˾����',
   detail               varchar(1024) comment '��������',
   create_time          datetime comment '����ʱ��',
   primary key (id)
);

alter table t_recruit_qustion comment '����';




drop table if exists t_recruit_job;

/*==============================================================*/
/* Table: t_recruit_job                                         */
/*==============================================================*/
create table t_recruit_job
(
   id                   int(11) not null comment '���',
   job_name             varchar(64) comment 'ְλ����',
   job_no               bigint comment 'ְλ���',
   department           varchar(64) comment '����:ö��',
   area                 varchar(64) comment '�����ص�:�����ص�',
   job_type             char(16) comment '��������:ö��',
   job_category         varchar(64) comment '��λ���:ö��',
   num                  int(5) comment '��Ƹ����',
   salary_max           int(10) comment '��н����',
   salary_min           int(10) comment '��н����',
   publish_date         date comment '��������',
   recuit_type          varchar(64) comment '��Ƹ����:����,У��',
   job_descption        varchar(1024) comment 'ְλ����',
   require_age          int(5) comment 'Ҫ������',
   require_years        int(5) comment 'Ҫ������',
   require_en           varchar(32) comment 'Ҫ��Ӣ��ȼ�',
   require_cn           varchar(32) comment 'Ҫ����̶�',
   require_yy           varchar(32) comment 'Ҫ������̶�',
   require_other        varchar(64) comment 'Ҫ������',
   create_time          datetime comment '����ʱ��',
   create_user          int(11) comment '������',
   update_time          timestamp comment '����ʱ��',
   update_user          int(11) comment '������',
   is_show              int(1) comment '�Ƿ���ʾ',
   primary key (id)
);

alter table t_recruit_job comment '��Ƹ-ְλ��';




drop table if exists t_recruit_resume;

/*==============================================================*/
/* Table: t_recruit_resume                                      */
/*==============================================================*/
create table t_recruit_resume
(
   id                   int(11) not null comment '���',
   user_id              int(11) comment '�û����',
   name                 varchar(64) comment '����',
   sex                  varchar(4) comment '�Ա��У�Ů',
   birth_date           date comment '��������',
   phone                int(16) comment '�ֻ�����',
   email                varchar(64) comment '����',
   school               varchar(128) comment '��ҵѧУ',
   major                varchar(64) comment 'רҵ',
   graduate_date        date comment '��ҵ����',
   oranazation          varchar(128) comment '��˾����',
   work_years           int(4) comment '��������',
   current_palace       varchar(64) comment 'Ŀǰ���ڵ�',
   degrees              varchar(64) comment 'ѧ��',
   spare_phone          int(16) comment '�����ֻ�����',
   nation               varchar(64) comment '����',
   id_card              varchar(32) comment '���֤����',
   id_card_add          varchar(128) comment '���֤��ַ',
   background           varchar(512) comment '����˵��',
   intention            varchar(512) comment '��ְ����',
   work_descption       varchar(512) comment '��������',
   project_history      varchar(512) comment '��Ŀ����',
   train_history        varchar(512) comment '��ѵ����',
   language_desc        varchar(512) comment '����˵��',
   reward               varchar(512) comment '����',
   ohter_info           varchar(512) comment '������Ϣ',
   certificate          varchar(512) comment '֤��',
   personal_like        varchar(512) comment '����',
   create_time          datetime comment '����ʱ��',
   update_time          timestamp comment '�޸�ʱ��',
   primary key (id)
);

alter table t_recruit_resume comment '������Ϣ';





drop table if exists t_resume_work_history;

/*==============================================================*/
/* Table: t_resume_work_history                                 */
/*==============================================================*/
create table t_resume_work_history
(
   id                   int(11) not null comment '���',
   resume_id            int(11) comment '�������',
   position             varchar(64) comment 'ְλ',
   start_date           date comment '��ʼʱ��',
   end_date             date comment '����ʱ��',
   address              varchar(64) comment '��ַ',
   industry_type        varchar(64) comment '��ҵ���ͣ�ö��',
   oranazation_type     varchar(32) comment '��˾���ʣ�ö��',
   report_obj           varchar(64) comment '�㱨����',
   subordinate_num      int(10) comment '��������',
   payment              varchar(128) comment 'ְλнˮ',
   work_duty            int(4) comment '����ְ��',
   achievement_desc     varchar(512) comment 'ҵ������',
   create_time          datetime comment '����ʱ��',
   update_time          timestamp comment '�޸�ʱ��',
   orgnazation          varchar(64) comment '������λ',
   primary key (id)
);

alter table t_resume_work_history comment '��������';




drop table if exists t_resume_shill;

/*==============================================================*/
/* Table: t_resume_shill                                        */
/*==============================================================*/
create table t_resume_skill
(
   id                   int(11) not null comment '���',
   resume_id            int(11) comment '�������',
   skill                varchar(64) comment '����',
   level                varchar(16) comment '�����̶�:ö��',
   create_time          datetime comment '����ʱ��',
   update_time          timestamp comment '�޸�ʱ��',
   primary key (id)
);

alter table t_resume_skill comment '����';





drop table if exists t_resume_education_history;

/*==============================================================*/
/* Table: t_resume_education_history                            */
/*==============================================================*/
create table t_resume_education_history
(
   id                   int(11) not null comment '���',
   resume_id            int(11) comment '�������',
   major                varchar(64) comment 'ѧ��',
   start_date           date comment '��ʼʱ��',
   end_date             date comment '����ʱ��',
   school               varchar(64) comment '��ҵԺУ',
   create_time          datetime comment '����ʱ��',
   update_time          timestamp comment '�޸�ʱ��',
   primary key (id)
);

alter table t_resume_education_history comment '��������';




drop table if exists t_resume_language;

/*==============================================================*/
/* Table: t_resume_language                                     */
/*==============================================================*/
create table t_resume_language
(
   id                   int(11) not null comment '���',
   resume_id            int(11) comment '�������',
   language             varchar(64) comment '����',
   level                varchar(16) comment '�ȼ�:ö��',
   create_time          datetime comment '����ʱ��',
   update_time          timestamp comment '�޸�ʱ��',
   tan_level            varchar(16) comment '����ˮƽ',
   primary key (id)
);

alter table t_resume_language comment '����';



drop table if exists t_resume_attachment;

/*==============================================================*/
/* Table: t_resume_attachment                                   */
/*==============================================================*/
create table t_resume_attachment
(
   id                   int(11) not null comment '���',
   resume_id            int(11) comment '�������',
   file_path            varchar(64) comment '����',
   create_time          datetime comment '����ʱ��',
   update_time          timestamp comment '�޸�ʱ��',
   able                 varchar(16) comment '�Ƿ����:ö��',
   file_name            varchar(64) comment '�ļ���',
   primary key (id)
);

alter table t_resume_attachment comment '��������';







drop table if exists t_recruit_resume_delivery;

/*==============================================================*/
/* Table: t_recruit_resume_delivery                             */
/*==============================================================*/
create table t_recruit_resume_delivery
(
   id                   int(11) not null comment 'id',
   resume_id            int(11) comment '�������',
   job_id               int(11),
   delivery_time        datetime,
   status               varchar(16),
   job_name             varchar(64),
   deparment            varchar(64),
   area                 varchar(64),
   create_time          datetime,
   primary key (id)
);

alter table t_recruit_resume_delivery comment '����Ͷ��';





