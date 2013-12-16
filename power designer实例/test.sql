/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2013/12/14 22:08:24                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('banji') and o.name = 'FK_BANJI_BELONG_CP_ZHUANYE')
alter table banji
   drop constraint FK_BANJI_BELONG_CP_ZHUANYE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('bukaochengji') and o.name = 'FK_BUKAOCHE_RELATIONS_XUESHENG')
alter table bukaochengji
   drop constraint FK_BUKAOCHE_RELATIONS_XUESHENG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('bukaochengji') and o.name = 'FK_BUKAOCHE_RELATIONS_KECHENG')
alter table bukaochengji
   drop constraint FK_BUKAOCHE_RELATIONS_KECHENG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('cj') and o.name = 'FK_CJ_RELATIONS_XUESHENG')
alter table cj
   drop constraint FK_CJ_RELATIONS_XUESHENG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('cj') and o.name = 'FK_CJ_RELATIONS_KECHENG')
alter table cj
   drop constraint FK_CJ_RELATIONS_KECHENG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('jiaoke') and o.name = 'FK_JIAOKE_RELATIONS_KECHENG')
alter table jiaoke
   drop constraint FK_JIAOKE_RELATIONS_KECHENG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('jiaoke') and o.name = 'FK_JIAOKE_RELATIONS_JIAOSHI')
alter table jiaoke
   drop constraint FK_JIAOKE_RELATIONS_JIAOSHI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('jiaoke') and o.name = 'FK_JIAOKE_KECHENGBA_BANJI')
alter table jiaoke
   drop constraint FK_JIAOKE_KECHENGBA_BANJI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('jiaoshi') and o.name = 'FK_JIAOSHI_BELONG_TC_XUEYUAN')
alter table jiaoshi
   drop constraint FK_JIAOSHI_BELONG_TC_XUEYUAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('jiaoxuejihua') and o.name = 'FK_JIAOXUEJ_RELATIONS_KECHENG')
alter table jiaoxuejihua
   drop constraint FK_JIAOXUEJ_RELATIONS_KECHENG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('jiaoxuejihua') and o.name = 'FK_JIAOXUEJ_RELATIONS_ZHUANYE')
alter table jiaoxuejihua
   drop constraint FK_JIAOXUEJ_RELATIONS_ZHUANYE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('xuesheng') and o.name = 'FK_XUESHENG_BELONG_SC_BANJI')
alter table xuesheng
   drop constraint FK_XUESHENG_BELONG_SC_BANJI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('zhuanye') and o.name = 'FK_ZHUANYE_BELONG_PC_XUEYUAN')
alter table zhuanye
   drop constraint FK_ZHUANYE_BELONG_PC_XUEYUAN
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
            from  sysobjects
           where  id = object_id('banji')
            and   type = 'U')
   drop table banji
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
           where  id    = object_id('bukaochengji')
            and   name  = 'Relationship_14_FK'
            and   indid > 0
            and   indid < 255)
   drop index bukaochengji.Relationship_14_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('bukaochengji')
            and   type = 'U')
   drop table bukaochengji
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
           where  id    = object_id('cj')
            and   name  = 'Relationship_15_FK'
            and   indid > 0
            and   indid < 255)
   drop index cj.Relationship_15_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('cj')
            and   type = 'U')
   drop table cj
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
           where  id    = object_id('jiaoke')
            and   name  = 'Relationship_19_FK'
            and   indid > 0
            and   indid < 255)
   drop index jiaoke.Relationship_19_FK
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
            from  sysobjects
           where  id = object_id('jiaoke')
            and   type = 'U')
   drop table jiaoke
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
            from  sysobjects
           where  id = object_id('jiaoshi')
            and   type = 'U')
   drop table jiaoshi
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
           where  id    = object_id('jiaoxuejihua')
            and   name  = 'Relationship_7_FK'
            and   indid > 0
            and   indid < 255)
   drop index jiaoxuejihua.Relationship_7_FK
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
            from  sysindexes
           where  id    = object_id('xuesheng')
            and   name  = 'belong_sc_FK'
            and   indid > 0
            and   indid < 255)
   drop index xuesheng.belong_sc_FK
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
            from  sysindexes
           where  id    = object_id('zhuanye')
            and   name  = 'belong_pc_FK'
            and   indid > 0
            and   indid < 255)
   drop index zhuanye.belong_pc_FK
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
   bjh                  char(6)              not null,
   zyh                  char(5)              null,
   constraint PK_BANJI primary key nonclustered (bjh)
)
go

/*==============================================================*/
/* Index: belong_cp_FK                                          */
/*==============================================================*/
create index belong_cp_FK on banji (
zyh ASC
)
go

/*==============================================================*/
/* Table: bukaochengji                                          */
/*==============================================================*/
create table bukaochengji (
   kch                  char(9)              not null,
   xh                   char(8)              not null,
   cj                   int                  null default 0
      constraint CKC_CJ_BUKAOCHE check (cj is null or (cj between 0 and 100)),
   constraint PK_BUKAOCHENGJI primary key nonclustered (kch, xh)
)
go

/*==============================================================*/
/* Index: Relationship_14_FK                                    */
/*==============================================================*/
create index Relationship_14_FK on bukaochengji (
xh ASC
)
go

/*==============================================================*/
/* Index: Relationship_16_FK                                    */
/*==============================================================*/
create index Relationship_16_FK on bukaochengji (
kch ASC
)
go

/*==============================================================*/
/* Table: cj                                                    */
/*==============================================================*/
create table cj (
   kch                  char(9)              not null,
   xh                   char(8)              not null,
   cj                   int                  null default 0
      constraint CKC_CJ_CJ check (cj is null or (cj between 0 and 100)),
   constraint PK_CJ primary key nonclustered (kch, xh)
)
go

/*==============================================================*/
/* Index: Relationship_15_FK                                    */
/*==============================================================*/
create index Relationship_15_FK on cj (
xh ASC
)
go

/*==============================================================*/
/* Index: Relationship_18_FK                                    */
/*==============================================================*/
create index Relationship_18_FK on cj (
kch ASC
)
go

/*==============================================================*/
/* Table: jiaoke                                                */
/*==============================================================*/
create table jiaoke (
   bjh                  char(6)              not null,
   gzh                  char(4)              not null,
   kch                  char(9)              not null,
   constraint PK_JIAOKE primary key nonclustered (bjh, kch)
)
go

/*==============================================================*/
/* Index: Relationship_17_FK                                    */
/*==============================================================*/
create index Relationship_17_FK on jiaoke (
kch ASC
)
go

/*==============================================================*/
/* Index: Relationship_19_FK                                    */
/*==============================================================*/
create index Relationship_19_FK on jiaoke (
gzh ASC
)
go

/*==============================================================*/
/* Index: kechengbanji_FK                                       */
/*==============================================================*/
create index kechengbanji_FK on jiaoke (
bjh ASC
)
go

/*==============================================================*/
/* Table: jiaoshi                                               */
/*==============================================================*/
create table jiaoshi (
   gzh                  char(4)              not null,
   xyh                  char(2)              null,
   xm                   char(20)             null,
   constraint PK_JIAOSHI primary key nonclustered (gzh)
)
go

/*==============================================================*/
/* Index: belong_tc_FK                                          */
/*==============================================================*/
create index belong_tc_FK on jiaoshi (
xyh ASC
)
go

/*==============================================================*/
/* Table: jiaoxuejihua                                          */
/*==============================================================*/
create table jiaoxuejihua (
   zyh                  char(5)              not null,
   kch                  char(9)              not null,
   xq                   int                  null,
   kcxz                 char(4)              null,
   xf                   int                  null,
   constraint PK_JIAOXUEJIHUA primary key nonclustered (zyh, kch)
)
go

/*==============================================================*/
/* Index: Relationship_7_FK                                     */
/*==============================================================*/
create index Relationship_7_FK on jiaoxuejihua (
kch ASC
)
go

/*==============================================================*/
/* Index: Relationship_8_FK                                     */
/*==============================================================*/
create index Relationship_8_FK on jiaoxuejihua (
zyh ASC
)
go

/*==============================================================*/
/* Table: kecheng                                               */
/*==============================================================*/
create table kecheng (
   kch                  char(9)              not null,
   kcmc                 char(20)             null,
   constraint PK_KECHENG primary key nonclustered (kch)
)
go

/*==============================================================*/
/* Table: xuesheng                                              */
/*==============================================================*/
create table xuesheng (
   xh                   char(8)              not null,
   bjh                  char(6)              null,
   xm                   char(20)             null,
   xb                   char(2)              null
      constraint CKC_XB_XUESHENG check (xb is null or (xb in ('ÄĞ','Å®'))),
   constraint PK_XUESHENG primary key nonclustered (xh)
)
go

/*==============================================================*/
/* Index: belong_sc_FK                                          */
/*==============================================================*/
create index belong_sc_FK on xuesheng (
bjh ASC
)
go

/*==============================================================*/
/* Table: xueyuan                                               */
/*==============================================================*/
create table xueyuan (
   xyh                  char(2)              not null,
   xymc                 char(20)             null,
   constraint PK_XUEYUAN primary key nonclustered (xyh)
)
go

/*==============================================================*/
/* Table: zhuanye                                               */
/*==============================================================*/
create table zhuanye (
   zyh                  char(5)              not null,
   xyh                  char(2)              null,
   zymc                 char(20)             null,
   constraint PK_ZHUANYE primary key nonclustered (zyh)
)
go

/*==============================================================*/
/* Index: belong_pc_FK                                          */
/*==============================================================*/
create index belong_pc_FK on zhuanye (
xyh ASC
)
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

alter table xuesheng
   add constraint FK_XUESHENG_BELONG_SC_BANJI foreign key (bjh)
      references banji (bjh)
go

alter table zhuanye
   add constraint FK_ZHUANYE_BELONG_PC_XUEYUAN foreign key (xyh)
      references xueyuan (xyh)
go

