#设置客户端连接服务器端编码
set names utf8;
#丢弃数据库uu，如果存在的话
drop database if exists uu;
#创建数据库tps，设置存储的编码
create database uu charset utf8;
use uu;
#创建表
