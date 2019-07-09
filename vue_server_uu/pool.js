/*jshint esversion:6 */
const mysql=require("mysql");
var pool=mysql.createPool({
  host:"127.0.0.1",
  post:3306,
  user:"root",
  password:'',
  database:"uu",
  connectionLimit:25
});
module.exports=pool;