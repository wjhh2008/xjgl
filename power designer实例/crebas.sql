/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2000                    */
/* Created on:     2009-11-18 10:59:21                          */
/*==============================================================*/


alter table banji
   drop constraint FK_BANJI_BANZHANG_XUESHENG
go


alter table banji
   drop constraint FK_BANJI_BELONG_CP_ZHUANYE
go


alter table bukaochengji
   drop constraint FK_BUKAOCHE_RELATIONS_XUESHENG
go


alter table bukaochengji
   drop constraint FK_BUKAOCHE_RELATIONS_KECHENG
go


alter table cj
   drop constraint FK_CJ_RELATIONS_XUESHENG
go


alter table cj
   drop constraint FK_CJ_RELATIONS_KECHENG
go


alter table jiaoke
   drop constraint FK_JIAOKE_RELATIONS_KECHENG
go


alter table jiaoke
   drop constraint FK_JIAOKE_RELATIONS_JIAOSHI
go


alter table jiaoke
   drop constraint FK_JIAOKE_KECHENGBA_BANJI
go


alter table jiaoshi
   drop constraint FK_JIAOSHI_BELONG_TC_XUEYUAN
go


alter table jiaoxuejihua
   drop constraint FK_JIAOXUEJ_RELATIONS_KECHENG
go


alter table jiaoxuejihua
   drop constraint FK_JIAOXUEJ_RELATIONS_ZHUANYE
go


alter table xi
   drop constraint FK_XI_BELONG_DC_XUEYUAN
go


alter table xi
   drop constraint FK_XI_XIZHUREN_JIAOSHI
go


alter table xuesheng
   drop constraint FK_XUESHENG_BELONG_SC_BANJI
go


alter table xueyuan
   drop constraint FK_XUEYUAN_YUANZHANG_JIAOSHI
go


alter table zhuanye
   drop constraint FK_ZHUANYE_BELONG_PD_XI
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('banji')
            and   name  = 'banzhang_FK'
            and   indid > 0
            and   indid < 255)
   drop index banji.banzhang_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('banji')
            and   name  = 'belong_cp_FK'
            and   indid > 0
            and   indid < 255)
   drop index banji.belong_cp_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('bukaochengji')
            and   name  = 'Relationship_14_FK'
            and   indid > 0
            and   indid < 255)
   drop index bukaochengji.Relationship_14_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('bukaochengji')
            and   name  = 'Relationship_16_FK'
            and   indid > 0
            and   indid < 255)
   drop index bukaochengji.Relationship_16_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('cj')
            and   name  = 'Relationship_15_FK'
            and   indid > 0
            and   indid < 255)
   drop index cj.Relationship_15_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('cj')
            and   name  = 'Relationship_18_FK'
            and   indid > 0
            and   indid < 255)
   drop index cj.Relationship_18_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('jiaoke')
            and   name  = 'Relationship_17_FK'
            and   indid > 0
            and   indid < 255)
   drop index jiaoke.Relationship_17_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('jiaoke')
            and   name  = 'Relationship_19_FK'
            and   indid > 0
            and   indid < 255)
   drop index jiaoke.Relationship_19_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('jiaoke')
            and   name  = 'kechengbanji_FK'
            and   indid > 0
            and   indid < 255)
   drop index jiaoke.kechengbanji_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('jiaoshi')
            and   name  = 'belong_tc_FK'
            and   indid > 0
            and   indid < 255)
   drop index jiaoshi.belong_tc_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('jiaoxuejihua')
            and   name  = 'Relationship_7_FK'
            and   indid > 0
            and   indid < 255)
   drop index jiaoxuejihua.Relationship_7_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('jiaoxuejihua')
            and   name  = 'Relationship_8_FK'
            and   indid > 0
            and   indid < 255)
   drop index jiaoxuejihua.Relationship_8_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('xi')
            and   name  = 'belong_dc_FK'
            and   indid > 0
            and   indid < 255)
   drop index xi.belong_dc_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('xi')
            and   name  = 'xizhuren_FK'
            and   indid > 0
            and   indid < 255)
   drop index xi.xizhuren_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('xuesheng')
            and   name  = 'belong_sc_FK'
            and   indid > 0
            and   indid < 255)
   drop index xuesheng.belong_sc_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('xueyuan')
            and   name  = 'yuanzhang_FK'
            and   indid > 0
            and   indid < 255)
   drop index xueyuan.yuanzhang_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('zhuanye')
            and   name  = 'belong_pd_FK'
            and   indid > 0
            and   indid < 255)
   drop index zhuanye.belong_pd_FK
go


if exists (select 1
            from  sysobjects
           where  id = object_id('banji')
            and   type = 'U')
   drop table banji
go


if exists (select 1
            from  sysobjects
           where  id = object_id('bukaochengji')
            and   type = 'U')
   drop table bukaochengji
go


if exists (select 1
            from  sysobjects
           where  id = object_id('cj')
            and   type = 'U')
   drop table cj
go


if exists (select 1
            from  sysobjects
           where  id = object_id('jiaoke')
            and   type = 'U')
   drop table jiaoke
go


if exists (select 1
            from  sysobjects
           where  id = object_id('jiaoshi')
            and   type = 'U')
   drop table jiaoshi
go


if exists (select 1
            from  sysobjects
           where  id = object_id('jiaoxuejihua')
            and   type = 'U')
   drop table jiaoxuejihua
go


if exists (select 1
            from  sysobjects
           where  id = object_id('kecheng')
            and   type = 'U')
   drop table kecheng
go


if exists (select 1
            from  sysobjects
           where  id = object_id('xi')
            and   type = 'U')
   drop table xi
go


if exists (select 1
            from  sysobjects
           where  id = object_id('xuesheng')
            and   type = 'U')
   drop table xuesheng
go


if exists (select 1
            from  sysobjects
           where  id = object_id('xueyuan')
            and   type = 'U')
   drop table xueyuan
go


if exists (select 1
            from  sysobjects
           where  id = object_id('zhuanye')
            and   type = 'U')
   drop table zhuanye
go


/*==============================================================*/
/* Table: banji                                                 */
/*==============================================================*/
create table banji (
   bjh                  char(5)              not null,
   zyh                  char(3)              null,
   xh                   char(6)              null,
   bjmc                 char(20)             null,
   constraint PK_BANJI primary key  (bjh)
)
go


/*==============================================================*/
/* Index: belong_cp_FK                                          */
/*==============================================================*/
create   index belong_cp_FK on banji (
zyh
)
go


/*==============================================================*/
/* Index: banzhang_FK                                           */
/*==============================================================*/
create   index banzhang_FK on banji (
xh
)
go


/*==============================================================*/
/* Table: bukaochengji                                          */
/*==============================================================*/
create table bukaochengji (
   xh                   char(6)              not null,
   kch                  char(10)             not null,
   cj                   int                  null,
   constraint PK_BUKAOCHENGJI primary key  (xh, kch)
)
go


/*==============================================================*/
/* Index: Relationship_14_FK                                    */
/*==============================================================*/
create   index Relationship_14_FK on bukaochengji (
xh
)
go


/*==============================================================*/
/* Index: Relationship_16_FK                                    */
/*==============================================================*/
create   index Relationship_16_FK on bukaochengji (
kch
)
go


/*==============================================================*/
/* Table: cj                                                    */
/*==============================================================*/
create table cj (
   xh                   char(6)              not null,
   kch                  char(10)             not null,
   cj                   int                  null,
   constraint PK_CJ primary key  (xh, kch)
)
go


/*==============================================================*/
/* Index: Relationship_15_FK                                    */
/*==============================================================*/
create   index Relationship_15_FK on cj (
xh
)
go


/*==============================================================*/
/* Index: Relationship_18_FK                                    */
/*==============================================================*/
create   index Relationship_18_FK on cj (
kch
)
go


/*==============================================================*/
/* Table: jiaoke                                                */
/*==============================================================*/
create table jiaoke (
   kch                  char(10)             not null,
   gzh                  char(4)              not null,
   bjh                  char(5)              not null,
   constraint PK_JIAOKE primary key  (kch, gzh, bjh)
)
go


/*==============================================================*/
/* Index: Relationship_17_FK                                    */
/*==============================================================*/
create   index Relationship_17_FK on jiaoke (
kch
)
go


/*==============================================================*/
/* Index: Relationship_19_FK                                    */
/*==============================================================*/
create   index Relationship_19_FK on jiaoke (
gzh
)
go


/*==============================================================*/
/* Index: kechengbanji_FK                                       */
/*==============================================================*/
create   index kechengbanji_FK on jiaoke (
bjh
)
go


/*==============================================================*/
/* Table: jiaoshi                                               */
/*==============================================================*/
create table jiaoshi (
   gzh                  char(4)              not null,
   xyh                  char(2)              null,
   xm                   char(20)             null,
   xb                   char(2)              null,
   csnf                 char(4)              null,
   constraint PK_JIAOSHI primary key  (gzh)
)
go


/*==============================================================*/
/* Index: belong_tc_FK                                          */
/*==============================================================*/
create   index belong_tc_FK on jiaoshi (
xyh
)
go


/*==============================================================*/
/* Table: jiaoxuejihua                                          */
/*==============================================================*/
create table jiaoxuejihua (
   kch                  char(10)             not null,
   zyh                  char(3)              not null,
   xq                   int                  null,
   kcxz                 char(4)              null,
   xf                   int                  null,
   constraint PK_JIAOXUEJIHUA primary key  (kch, zyh)
)
go


/*==============================================================*/
/* Index: Relationship_7_FK                                     */
/*==============================================================*/
create   index Relationship_7_FK on jiaoxuejihua (
kch
)
go


/*==============================================================*/
/* Index: Relationship_8_FK                                     */
/*==============================================================*/
create   index Relationship_8_FK on jiaoxuejihua (
zyh
)
go


/*==============================================================*/
/* Table: kecheng                                               */
/*==============================================================*/
create table kecheng (
   kch                  char(10)             not null,
   kcmc                 char(20)             null,
   constraint PK_KECHENG primary key  (kch)
)
go


/*==============================================================*/
/* Table: xi                                                    */
/*==============================================================*/
create table xi (
   xbh                  char(2)              not null,
   gzh                  char(4)              null,
   xyh                  char(2)              null,
   xmc                  char(10)             null,
   constraint PK_XI primary key  (xbh)
)
go


/*==============================================================*/
/* Index: belong_dc_FK                                          */
/*==============================================================*/
create   index belong_dc_FK on xi (
xyh
)
go


/*==============================================================*/
/* Index: xizhuren_FK                                           */
/*==============================================================*/
create   index xizhuren_FK on xi (
gzh
)
go


/*==============================================================*/
/* Table: xuesheng                                              */
/*==============================================================*/
create table xuesheng (
   xh                   char(6)              not null,
   bjh                  char(5)              null,
   xm                   char(20)             null,
   xb                   char(2)              null,
   csnf                 char(4)              null,
   constraint PK_XUESHENG primary key  (xh)
)
go


/*==============================================================*/
/* Index: belong_sc_FK                                          */
/*==============================================================*/
create   index belong_sc_FK on xuesheng (
bjh
)
go


/*==============================================================*/
/* Table: xueyuan                                               */
/*==============================================================*/
create table xueyuan (
   xyh                  char(2)              not null,
   gzh                  char(4)              null,
   xymc                 char(20)             null,
   constraint PK_XUEYUAN primary key  (xyh)
)
go


/*==============================================================*/
/* Index: yuanzhang_FK                                          */
/*==============================================================*/
create   index yuanzhang_FK on xueyuan (
gzh
)
go


/*==============================================================*/
/* Table: zhuanye                                               */
/*==============================================================*/
create table zhuanye (
   zyh                  char(3)              not null,
   xbh                  char(2)              null,
   zymc                 char(20)             null,
   constraint PK_ZHUANYE primary key  (zyh)
)
go


/*==============================================================*/
/* Index: belong_pd_FK                                          */
/*==============================================================*/
create   index belong_pd_FK on zhuanye (
xbh
)
go


alter table banji
   add constraint FK_BANJI_BANZHANG_XUESHENG foreign key (xh)
      references xuesheng (xh)
go


alter table banji
   add constraint FK_BANJI_BELONG_CP_ZHUANYE foreign key (zyh)
      references zhuanye (zyh)
go


alter table bukaochengji
   add constraint FK_BUKAOCHE_RELATIONS_XUESHENG foreign key (xh)
      references xuesheng (xh)
go


alter table bukaochengji
   add constraint FK_BUKAOCHE_RELATIONS_KECHENG foreign key (kch)
      references kecheng (kch)
go


alter table cj
   add constraint FK_CJ_RELATIONS_XUESHENG foreign key (xh)
      references xuesheng (xh)
go


alter table cj
   add constraint FK_CJ_RELATIONS_KECHENG foreign key (kch)
      references kecheng (kch)
go


alter table jiaoke
   add constraint FK_JIAOKE_RELATIONS_KECHENG foreign key (kch)
      references kecheng (kch)
go


alter table jiaoke
   add constraint FK_JIAOKE_RELATIONS_JIAOSHI foreign key (gzh)
      references jiaoshi (gzh)
go


alter table jiaoke
   add constraint FK_JIAOKE_KECHENGBA_BANJI foreign key (bjh)
      references banji (bjh)
go


alter table jiaoshi
   add constraint FK_JIAOSHI_BELONG_TC_XUEYUAN foreign key (xyh)
      references xueyuan (xyh)
go


alter table jiaoxuejihua
   add constraint FK_JIAOXUEJ_RELATIONS_KECHENG foreign key (kch)
      references kecheng (kch)
go


alter table jiaoxuejihua
   add constraint FK_JIAOXUEJ_RELATIONS_ZHUANYE foreign key (zyh)
      references zhuanye (zyh)
go


alter table xi
   add constraint FK_XI_BELONG_DC_XUEYUAN foreign key (xyh)
      references xueyuan (xyh)
go


alter table xi
   add constraint FK_XI_XIZHUREN_JIAOSHI foreign key (gzh)
      references jiaoshi (gzh)
go


alter table xuesheng
   add constraint FK_XUESHENG_BELONG_SC_BANJI foreign key (bjh)
      references banji (bjh)
go


alter table xueyuan
   add constraint FK_XUEYUAN_YUANZHANG_JIAOSHI foreign key (gzh)
      references jiaoshi (gzh)
go


alter table zhuanye
   add constraint FK_ZHUANYE_BELONG_PD_XI foreign key (xbh)
      references xi (xbh)
go


