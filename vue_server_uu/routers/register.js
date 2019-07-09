const express = require("express");
const router = express.Router();
const pool = require("../pool");
router.post("/reg", (req, res) => {
  var sql = "insert into uu_user_list values(null,?,?,?,?,?,?,?,?,?)";
  var data = req.body();  
  pool.query(sql, data.uname, md5(data.upwd), data.upic, data.user_name, data.tel, data.email, data.ID_card, data.bank_card, data.bank, (err, result) => {
    if (err) throw err;
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
module.exports = router;