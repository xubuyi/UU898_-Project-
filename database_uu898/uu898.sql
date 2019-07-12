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
	uname char(32) unique,
	upwd char(32),
	upic varchar(64),
	user_name varchar(32),
	sex int,
	tel char(11),
	email varchar(32),
	ID_card bigint unique,
	bank_card bigint unique,
	bank varchar(32)
);

INSERT INTO uu_user_list VALUES(null,"tom",md5('123'),"1.jpg","tom",1,"13415614561","a1@163.com","110241199011011106","1235601","建行");
INSERT INTO uu_user_list VALUES(null,"jerry",md5('123'),"1.jpg","jerry",0,"13415614561","a1@163.com","110241199011011156","1235641","建行");

#游戏类型
create table game_list(
	gid int primary key auto_increment,
	gneme varchar(16),
	gtype varchar(16)
);



#商品列表
create table uu_product_list(
	pid int primary key auto_increment,
	p_title varchar(64),
	p_detaile varchar(64),
	p_price decimal(10,2),
	p_img_url varchar(32),
	p_type varchar(24),
	p_count bigint,
	is_sale char(8),
	gid int,
	uid int
)