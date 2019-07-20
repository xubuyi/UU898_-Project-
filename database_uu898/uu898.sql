#设置客户端连接服务器端编码
set names utf8;
#丢弃数据库uu，如果存在的话
drop database if exists uu;
#创建数据库tps，设置存储的编码
create database uu charset utf8;
use uu;
#创建表
#用户列表
create table uu_user_list(
	uid int primary key auto_increment,
	uname char(32) unique,#用户昵称
	upwd char(32),#密码
	upic varchar(64),#头像
	user_name varchar(32),#真实姓名
	sex int,#性别
	tel char(11),#手机
	email varchar(32),#邮箱
	ID_card bigint unique,#身份证
	bank_card bigint unique,#银行卡
	bank varchar(32)#银行
);

INSERT INTO uu_user_list VALUES(null,"tom",md5('123'),"1.jpg","tom",1,"13415614561","a1@163.com","110241199011011106","1235601","建行");
INSERT INTO uu_user_list VALUES(null,"jerry",md5('123'),"1.jpg","jerry",0,"13415614561","a1@163.com","110241199011011156","1235641","建行");

#游戏列表
create table uu_game_list(
	gid int primary key auto_increment,
	game_name varchar(64),#游戏名称
	game_spell varchar(4),#通过拼音搜索的标识
	game_turnover int#交易的总数,通过这个来判断这个游戏是不是热门的
);

INSERT INTO uu_game_list VALUES(null,"地下城与勇士","D","100");
INSERT INTO uu_game_list VALUES(null,"剑灵","J","150");
INSERT INTO uu_game_list VALUES(null,"英雄联盟","Y","300");
INSERT INTO uu_game_list VALUES(null,"流放之路","L","80");
INSERT INTO uu_game_list VALUES(null,"诛仙","Z","120");
INSERT INTO uu_game_list VALUES(null,"天涯明月刀","T","215");
INSERT INTO uu_game_list VALUES(null,"古剑奇谭","G","99");
INSERT INTO uu_game_list VALUES(null,"传奇永恒","C","113");
INSERT INTO uu_game_list VALUES(null,"笑傲江湖OL","X","119");
INSERT INTO uu_game_list VALUES(null,"诺亚传说","N","50");
INSERT INTO uu_game_list VALUES(null,"上古世纪","S","30");
INSERT INTO uu_game_list VALUES(null,"APEX英雄","A","20");

#游戏交易类型表
create table uu_game_type(
	tid int primary key auto_increment,
	game_type varchar(32),#商品的类型
	gid int#游戏id,标识是那个游戏
);

INSERT INTO uu_game_type VALUES(null,"游戏账号","1");
INSERT INTO uu_game_type VALUES(null,"游戏币","1");
INSERT INTO uu_game_type VALUES(null,"装备","1");
INSERT INTO uu_game_type VALUES(null,"太阳账号","1");
INSERT INTO uu_game_type VALUES(null,"材料","1");
INSERT INTO uu_game_type VALUES(null,"点券","1");
INSERT INTO uu_game_type VALUES(null,"深渊","1");
INSERT INTO uu_game_type VALUES(null,"称号","1");
INSERT INTO uu_game_type VALUES(null,"推荐码","1");


#游戏大区表
create table uu_game_server(
	sid int primary key auto_increment,
	game_server varchar(32),#游戏大区
	tid int#类型id,标识是什么类型
);
INSERT INTO uu_game_server VALUES(null,"广东",1);
INSERT INTO uu_game_server VALUES(null,"北京",1);
INSERT INTO uu_game_server VALUES(null,"福建",1);
INSERT INTO uu_game_server VALUES(null,"广西",1);
INSERT INTO uu_game_server VALUES(null,"四川",1);
INSERT INTO uu_game_server VALUES(null,"广东",2);
INSERT INTO uu_game_server VALUES(null,"北京",2);
INSERT INTO uu_game_server VALUES(null,"福建",2);
INSERT INTO uu_game_server VALUES(null,"广西",2);
INSERT INTO uu_game_server VALUES(null,"四川",2);
INSERT INTO uu_game_server VALUES(null,"广东",3);
INSERT INTO uu_game_server VALUES(null,"北京",3);
INSERT INTO uu_game_server VALUES(null,"福建",3);
INSERT INTO uu_game_server VALUES(null,"广西",3);
INSERT INTO uu_game_server VALUES(null,"四川",3);

#游戏服务器表
create table uu_game_area(
	aid int primary key auto_increment,
	game_area varchar(32),#游戏子服务器
	sid int#大区id,标识是那个区
);

INSERT INTO uu_game_area VALUES(null,"广东一区",1);
INSERT INTO uu_game_area VALUES(null,"广东二区",1);
INSERT INTO uu_game_area VALUES(null,"广东三区",1);
INSERT INTO uu_game_area VALUES(null,"北京一区",2);
INSERT INTO uu_game_area VALUES(null,"北京二区",2);
INSERT INTO uu_game_area VALUES(null,"北京三区",2);
INSERT INTO uu_game_area VALUES(null,"福建一区",3);
INSERT INTO uu_game_area VALUES(null,"福建二区",3);
INSERT INTO uu_game_area VALUES(null,"福建三区",3);
INSERT INTO uu_game_area VALUES(null,"广西一区",4);
INSERT INTO uu_game_area VALUES(null,"广西二区",4);
INSERT INTO uu_game_area VALUES(null,"广西三区",4);
INSERT INTO uu_game_area VALUES(null,"四川一区",5);
INSERT INTO uu_game_area VALUES(null,"四川二区",5);
INSERT INTO uu_game_area VALUES(null,"四川三区",5);

#DNF游戏列表
#每个游戏都需要这个表格
create table uu_game_DNF(
	did int primary key auto_increment,
	game_area varchar(32),#游戏的大区
	game_server varchar(32),#游戏服务器或者游戏大区下的子服务器
	game_price decimal(10,2),#商品价格
	game_number int,#交易的剩余数量
	game_user_name varchar(64),#如果是游戏账号就需要填写游戏的账号
	game_user_pwd varchar(32),#游戏的密码
	p_title varchar(64),#标题
	p_detaile varchar(64),#副标题
	p_img_url varchar(32),#图片
	is_sale char(8),#是否在售
	game_type varchar(32),#商品的类型
	uid int#卖东西的人的账号
);
#游戏交易数据uu_game_deal_data
create table uu_game_deal_data(
	did int primary key auto_increment,
	game_date varchar(156),#游戏交易的日期
	game_price decimal(10,2),#游戏交易的价格
	gid int,#游戏编号,以此来判断是那个游戏的交易数据
	game_type varchar(32)#游戏交易的类型,如账号,装备,游戏币等
);