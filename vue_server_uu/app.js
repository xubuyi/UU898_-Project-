/* jshint esversion:6 */
// 1 引入express模块
const express=require("express");
const UserRouter=require("./routers/register");
const games=require('./routers/games');
// 2 创建web服务器
var server=express();

// 4 解决跨域
const cors=require("cors");
  // 配置cors
  server.use(cors({
    origin:["http://127.0.0.1:8080","http://localhost:8080"],
    credentials:true
  }));

// 6 引入session功能模块
const session=require("express-session");
server.use(session({
  secret:"128位字符串",
  resave:true,
  saveUninitialized:true
}));

//3 绑定监听端口 3000
server.listen(3000,console.log('创建服务器'));

// 5 挂载静态资源目录
server.use(express.static("public"));
server.use("",UserRouter);
server.use("",games);