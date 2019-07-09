#设置客户端连接服务器端编码
set names utf8;
#丢弃数据库uu，如果存在的话
drop database if exists uu;
#创建数据库tps，设置存储的编码
create database uu charset utf8;
use uu;
#创建表
#用户列表
create table uu_uesr_list(
	uid int primary key auto_increment,
	uname char(32) unique,
	upwd char(32),
	upic varchar(64),
	user_name varchar(32),
	tel char(11),
	email varchar(32),
	ID_card bigint,
	bank_card bigint,
	bank varchar(32)
);

#游戏类型
create table game_list(
	gid int primary key auto_increment,
	gneme varchar(10),
	gtype varchar(8)
)



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
	uid int,
	foreign key(uid) references user_list(uid),
	foreign key(gid) references game_list(gid)

)