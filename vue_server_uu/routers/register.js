//导入模块
const express = require("express");
//创建路由
const router = express.Router();
//导入连接池
const pool = require("../pool");
//创建post接口
router.get("/reg", (req, res) => {
  //创建sql语句
  var sql = "insert into uu_user_list values(null,?,md5(?),?,?,?,?,?,?,?,?)";
  //接收数据
  var data = req.query;  
  // console.log(data)
  //连接数据库
  pool.query(sql, [data.uname, data.upwd, data.upic, data.user_name,data.sex, data.tel, data.email, data.ID_card, data.bank_card, data.bank], (err, result) => {
    if (err) throw err;
    //判断影响的行数
    if (result.affectedRows > 0) {
      res.send({
        code: 1,
        msg: "注册成功"
      })
    } else {
      res.send({
        code: -1,
        msg: "注册失败"
      })
    }
  })
})
//导出模块
module.exports = router;