<template>
  <div>
<div class="my_rights">
      <div class="my_right">
        <!-- 上面三个按钮 -->
        <a href="javascript:;">
          <i></i>
          <span>我要买</span>
        </a>
        <a href="javascript:;">
          <i></i>
          <span>我要卖</span>
        </a>
        <a href="javascript:;">
          <i></i>
          <span>个人中心</span>
        </a>
      </div>
      <div class="my_midd">
        <!-- 中间的列表 -->
        <ul>
          <li>
            <a href="javascript:;">公告</a>
          </li>
          <li>
            <a href="javascript:;">帮助中心</a>
          </li>
          <li>
            <a href="javascript:;">客服验证</a>
          </li>
        </ul>
      </div>
      <div class="my_msg">
        <!-- 轮播的公告 -->
        <ul>
          <li>地下城与勇士收费公告</li>
          <li>腾讯系列诚信保障账号恶意找回打击公告</li>
        </ul>
      </div>
      <div class="my_ioc">
        <!-- 下面的买东西按钮 -->
        <ul>
          <li>
            <a href="javascript:;">
              <em>9.98折</em>
              <i></i>
              <br>
              <span>手机话费</span>
            </a>
          </li>
          <li>
            <a href="javascript:;">
              <i></i>
              <br>
              <span>QQ币</span>
            </a>
          </li>
          <li>
            <a href="javascript:;">
              <em>5折</em>
              <i></i>
              <br>
              <span>视频会员</span>
            </a>
          </li>
        </ul>
      </div>
      <div class="my_last">
        <!-- 手游交易按钮 -->
        <a href="javascript:;">手游交易</a>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    
  }
</script>

<style lang="scss" scoped>
//最外围div宽
.my_rights {
  width: 250px;
  // height: 480px;
  margin-left: 10px;
}
// 上面三个按钮的样式
.my_right > a {
  display: inline-block;
  width: 76px;
  height: 76px;
  text-decoration: none;
  color: #fff;
  text-align: center;
  font: 14px "微软雅黑";
  transition: all 0.3s linear;
}
//上面三个按钮的里面的图片样式
.my_right > a > span {
  width: 76px;
  height: 21px;
  display: block;
}
//动画效果
.my_right > a > i {
  transition: all 0.3s linear;
}
//动画效果
.my_right > a > span {
  transition: all 0.3s linear;
}
// 上面三个按钮的第一个按钮
.my_right > a:first-child {
  background: #fd5f57;
}
// 上面三个按钮的第一个按钮鼠标移入时的样式
.my_right > a:first-child:hover {
  background: #f0453c;
}
// 上面三个按钮的第一个按钮鼠标移入时的动画效果
.my_right > a:first-child:hover > i {
  transform: translateY(-3px);
}
// 上面三个按钮的第一个按钮鼠标移入时的动画效果
.my_right > a:first-child:hover > span {
  transform: translateY(-7px);
}
// 上面三个按钮的第二个按钮的样式
.my_right > a:nth-child(2) {
  background: #0aacf5;
}
// 上面三个按钮的第二个按钮鼠标移入时的样式
.my_right > a:nth-child(2):hover {
  background: #079fe4;
}
// 上面三个按钮的第二个按钮鼠标移入时的动画效果
.my_right > a:nth-child(2):hover > i {
  transform: translateY(-3px);
}
// 上面三个按钮的第二个按钮鼠标移入时的动画效果
.my_right > a:nth-child(2):hover > span {
  transform: translateY(-7px);
}
// 上面三个按钮的第三个按钮的样式
.my_right > a:nth-child(3) {
  background: #ff913d;
}
// 上面三个按钮的第三个按钮鼠标移入时的样式
.my_right > a:nth-child(3):hover {
  background: #eb7d29;
}
// 上面三个按钮的第三个按钮鼠标移入时的动画效果
.my_right > a:nth-child(3):hover > i {
  transform: translateY(-3px);
}
// 上面三个按钮的第三个按钮鼠标移入时的动画效果
.my_right > a:nth-child(3):hover > span {
  transform: translateY(-7px);
}
//上面三个按钮中的图片样式
.my_right > a > i {
  display: block;
  width: 34px;
  height: 34px;
  margin: 10px auto 5px auto;
}
//上面三个按钮中的背景图片
.my_right > a:first-child > i {
  background: url("../../img/index/index_bg.png") no-repeat 3px -20px;
}
//上面三个按钮中的背景图片
.my_right > a:nth-child(2) > i {
  background: url("../../img/index/index_bg.png") no-repeat -35px -20px;
}
//上面三个按钮中的背景图片
.my_right > a:nth-child(3) > i {
  background: url("../../img/index/index_bg.png") no-repeat -66px -20px;
}
//上面三个按钮的左外边距
.my_right > a + a {
  margin-left: 10px;
}
//中间的公告样式
.my_midd > ul {
  list-style: none;
  display: flex;
  padding: 0;
}
//中间的公告样式
.my_midd > ul > li a {
  font: 13px/1.5 arial;
  display: block;
  width: 84px;
  height: 40px;
  text-align: center;
  line-height: 38px;
  text-decoration: none;
  color: black;
}
//公告的蓝色上边框
.my_midd > ul > li:first-child {
  border-top: 1px solid #0aacf5;
  font-weight: bold;
}
//取消轮播公告的点
.my_msg >ul>li{
  list-style: none;
  
}
//下面买东西的按钮的样式
.my_ioc > ul{
  list-style: none;
  display: flex;
  padding: 0;
  margin:0;
}
//下面a按钮的样式
.my_ioc > ul>li>a{
  display: block;
  width:83px ;
  height: 133px;
  border:1px solid #e9e9e9;
  color:#666;
  text-decoration: none;
}
//a按钮里面的图片样式
.my_ioc > ul>li>a>i{
  display: inline-block;
  width:36px;
  height:36px;
  text-align: center;
  margin-left: 25px;
  margin-top: 40px
}
//买东西的第一个a的样式
.my_ioc > ul>li:first-child>a>i{
  margin-left: 25px;
  margin-top: 22px
}
//买东西的第三个a的样式
.my_ioc > ul>li:last-child>a>i{
  margin-left: 25px;
  margin-top: 22px
}
//买东西的字体样式及位置
.my_ioc > ul>li>a>span{
  display: block;
  font: 13px "微软雅黑";
  text-align: center;
  margin-top:20px 
}
//打折字样的样式
em{
  font-style: normal;
  background: #C81522;
  color:#fff;
  font-size: 12px;
  width:40px;
  height:16px;
  display: block;
  text-align: center;
}
//买东西的a里面的背景图
.my_ioc > ul>li:nth-child(1)>a >i{
  background: url("../../img/index/rhg-ico.png") no-repeat 0px 0px;
}
//买东西的a里面的背景图
.my_ioc > ul>li:nth-child(2)>a> i{
  background: url("../../img/index/rhg-ico.png") no-repeat -40px 0px;
}
//买东西的a里面的背景图
.my_ioc > ul>li:nth-child(3)>a >i{
  background: url("../../img/index/rhg-ico.png") no-repeat -123px 0px;
}
//最后一个a的样式
.my_last>a{
  display: block;
  background: #079fe4;
  width: 83px;
  height:133px;
  text-align: center;
  line-height: 133px;
  text-decoration: none;
  color:#fff;
  font-size: 14px;
  font-family: "微软雅黑";
  margin-bottom: 20px;
}
</style>