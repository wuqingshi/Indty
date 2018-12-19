
use indty;


-------------------------
--管理员用户表
-------------------------
create table admin (
  `id` int(11) not null auto_increment primary key comment '用户id',
  `admin_name` varchar(100) not null comment '帐号',
  `nick_name` varchar(100) not null comment '用户名',
  `admin_password` varchar(100) not null comment '用户密码' ,
  `admin_level` tinyint(2)not null default 2 comment '管理员权限等级 0:超级 1：高级 2：普通',
  `add_time` DATETIME not null  COMMENT '添加时间 0000-00-00 00:00:00',
  `update_time` DATETIME not null default current_timestamp on update current_timestamp COMMENT '更新时间 0000-00-00 00:00:00'
)auto_increment=1000 comment='管理员用户表';

insert into `admin`(`admin_name`,`admin_password`,`nick_name`,admin_level,add_time) values ("admin@zifufun.com",MD5("adminpassword"),"Admin",'0',now());

-------------------------
--注册用户表
-------------------------
create table game_user (
  `id` int(11) not null auto_increment primary key comment '用户id',
  `user_name` varchar(100) not null comment '帐号',
  `nick_name` varchar(100) not null comment '用户名',
  `user_password` varchar(100) not null comment '用户密码' ,
  `channel_id` varchar(100) not null default 'zifufun' comment '渠道来源',
  `tel_nums` varchar(100)  comment '电话号码',
  `emil_add` varchar(100)  comment '邮箱地址',
  `add_time` DATETIME not null  COMMENT '添加时间 0000-00-00 00:00:00',
  `update_time` DATETIME not null default current_timestamp on update current_timestamp COMMENT '更新时间 0000-00-00 00:00:00'
)auto_increment=10000 comment='注册用户表';

insert into `game_user`(user_name,user_password,nick_name,emil_add,add_time) values ("zifufun",MD5("testload"),"冰熊","test@zifufun.com",now());

-------------------------
-- 用户信息表
-------------------------
create table game_user_info (
  `id` int(11) not null auto_increment primary key comment 'id',
  `user_id` int(11) not null comment '用户id',
  `nick_name` varchar(100) not null comment '用户名',
  `live_days` int(11)not null default 0 comment '已生存时间 默认0天',
  `food_nums` int(100)not null default 200 comment '食物数量',
  `gold_nums` int(100)not null default 1000 comment '金币数量',
  `diamond_nums` int(100)not null default 0 comment '钻石数量',
  `add_time` DATETIME not null  COMMENT '添加时间 0000-00-00 00:00:00',
  `update_time` DATETIME not null default current_timestamp on update current_timestamp COMMENT '更新时间 0000-00-00 00:00:00'
) comment='用户信息表';

insert into `game_user_info`(user_id,nick_name,add_time) values (10000,"冰熊",now());
