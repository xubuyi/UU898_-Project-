//导入模块
const express = require("express");
//创建路由
const router = express.Router();
//导入连接池
const pool = require("../pool");
//创建get接口
router.get("/games", (req, res) => {
  //创建sql语句
  // var sql = "SELECT gid,game_name,game_spell,game_turnover FROM `uu_game_list` ORDER BY game_turnover DESC";
  //查询list表
  var sql = "SELECT * FROM uu_game_list";
  //接收要发送的数据
  var obj = {};
  //接收数据
  var data = req.query;
  //连接数据库
  pool.query(sql, (err, list) => {
    if (err) throw err;
    //判断影响的行数
    // console.log(result)
    //list长度说明有东西
    if (list.length > 0) {
      //把list的数据给obj
      obj.list = list;
      //查询type表格
      pool.query("SELECT * FROM uu_game_type", (err, type) => {
        if (type.length > 0) {
          //把type赋给obj
          obj.type = type;
          pool.query("select * from uu_game_server", (err, server) => {
            if (server.length > 0) {
              obj.server = server;
              pool.query("select * from uu_game_area", (err, area) => {
                if (area.length > 0) {
                  obj.area = area;
                  res.send(obj)
                  console.log(obj)
                }
              })
            }
          })
        }
      })
      // res.send({
      //   code: 1,
      //   msg: result,

      // })
    } else {
      res.send({
        code: -1,
        msg: "查询失败"
      })
    }
  })
})
//导出模块
module.exports = router;