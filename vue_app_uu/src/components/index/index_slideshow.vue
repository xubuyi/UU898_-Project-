<template>
  <div>
    <div class="my_a">
      <el-carousel :interval="5000" arrow="never" style="width:720px" height="340px">
        <!-- 循环生成轮播图 -->
        <el-carousel-item v-for="item in imagebox" :key="item.id">
          <a href="javascript:;"><img :src="item.idView" /></a>
        </el-carousel-item>
      </el-carousel>
      <div class="my_img">
        <!-- 轮播图下面的两个图片 -->
        <a href="javascript:;">
          <img src="../../img/index/d-a-73-aac8f981.png" />
        </a>
        <a href="javascript:;">
          <img src="../../img/index/d-a-74-a23ef8d8.png" />
        </a>
      </div>
    </div>
    <!-- <div class="my_rights">
      <div class="my_right">
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
        <ul>
          <li>地下城与勇士收费公告</li>
          <li>腾讯系列诚信保障账号恶意找回打击公告</li>
        </ul>
      </div>
      <div class="my_ioc">
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
        <a href="javascript:;">手游交易</a>
      </div>
    </div> -->
  </div>
</template>

<script >
//  window.onload=function(){
//      var buttons=document.getElementsByClassName("el-carousel__button");
//   console.log(buttons[0])
//   console.log(window.getComputedStyle(buttons[0]).height)
// window.getComputedStyle(buttons[0]).height=200
// }

// button[0].style="200px";
// buttons[1].innerHTML="买买买";
export default {
  data() {
    return {
      //轮播图的图片列表
      imagebox: [
        { id: 0, idView: require("../../img/index/d-a-68-ab91fbff.png") },
        { id: 1, idView: require("../../img/index/d-a-69-a12c41e1.png") },
        { id: 2, idView: require("../../img/index/d-a-70-a01c672f.png") },
        { id: 3, idView: require("../../img/index/d-a-71-ac499d1f.png") }
      ]
    };
  },
  mounted() {}
};
</script>

<style lang="scss" scoped>
//使整个变成行内块
.my_a {
  display: inline-block;
  margin-left: 10px;
}
//下面图片的上边距
.my_img {
  margin-top: 10px;
}
//下面图片的左边距
.my_img > a:last-child > img {
  padding-left: 10px;
}
// .my_rights {
//   border: 1px solid red;
//   width: 250px;
//   // height: 480px;
//   display: inline-block;
//   margin-left: 10px;
// }
// .my_right > a {
//   display: inline-block;
//   width: 76px;
//   height: 76px;
//   text-decoration: none;
//   color: #fff;
//   text-align: center;
//   font: 14px "微软雅黑";
//   transition: all 0.3s linear;
// }
// .my_right > a > span {
//   width: 76px;
//   height: 21px;
//   display: block;
// }
// .my_right > a > i {
//   transition: all 0.3s linear;
// }
// .my_right > a > span {
//   transition: all 0.3s linear;
// }
// .my_right > a:first-child {
//   background: #fd5f57;
// }
// .my_right > a:first-child:hover {
//   background: #f0453c;
// }
// .my_right > a:first-child:hover > i {
//   transform: translateY(-3px);
// }
// .my_right > a:first-child:hover > span {
//   transform: translateY(-7px);
// }
// .my_right > a:nth-child(2) {
//   background: #0aacf5;
// }
// .my_right > a:nth-child(2):hover {
//   background: #079fe4;
// }

// .my_right > a:nth-child(2):hover > i {
//   transform: translateY(-3px);
// }
// .my_right > a:nth-child(2):hover > span {
//   transform: translateY(-7px);
// }
// .my_right > a:nth-child(3) {
//   background: #ff913d;
// }
// .my_right > a:nth-child(3):hover {
//   background: #eb7d29;
// }
// .my_right > a:nth-child(3):hover > i {
//   transform: translateY(-3px);
// }
// .my_right > a:nth-child(3):hover > span {
//   transform: translateY(-7px);
// }
// .my_right > a > i {
//   display: block;
//   width: 34px;
//   height: 34px;
//   margin: 10px auto 5px auto;
// }
// .my_right > a:first-child > i {
//   background: url("../../img/index/index_bg.png") no-repeat 3px -20px;
// }
// .my_right > a:nth-child(2) > i {
//   background: url("../../img/index/index_bg.png") no-repeat -35px -20px;
// }
// .my_right > a:nth-child(3) > i {
//   background: url("../../img/index/index_bg.png") no-repeat -66px -20px;
// }
// .my_right > a + a {
//   margin-left: 10px;
// }
// .my_midd > ul {
//   list-style: none;
//   display: flex;
//   padding: 0;
// }
// .my_midd > ul > li a {
//   font: 13px/1.5 arial;
//   display: block;
//   width: 84px;
//   height: 40px;
//   text-align: center;
//   line-height: 38px;
//   text-decoration: none;
//   color: black;
// }
// .my_midd > ul > li:first-child {
//   border-top: 1px solid #0aacf5;
//   font-weight: bold;
// }
// .my_ms {
//   list-style: none;
// }
// .my_ioc > ul{
//   list-style: none;
//   display: flex;
//   padding: 0;
// }
// .my_ioc > ul>li>a{
//   display: block;
//   width:83px ;
//   height: 133px;
//   border:1px solid #e9e9e9;
//   color:#666;
//   text-decoration: none;
// }
// .my_ioc > ul>li>a>i{
//   display: inline-block;
//   width:36px;
//   height:36px;
//   text-align: center;
//   margin-left: 25px;
//   margin-top: 40px
// }
// .my_ioc > ul>li:first-child>a>i{
//   margin-left: 25px;
//   margin-top: 22px
// }
// .my_ioc > ul>li:last-child>a>i{
//   margin-left: 25px;
//   margin-top: 22px
// }
// .my_ioc > ul>li>a>span{
//   display: block;
//   font: 13px "微软雅黑";
//   text-align: center;
//   margin-top:20px 
// }
// em{
//   font-style: normal;
//   background: #C81522;
//   color:#fff;
//   font-size: 12px;
//   width:40px;
//   height:16px;
//   display: block;
//   text-align: center;
// }
// .my_ioc > ul>li:nth-child(1)>a >i{
//   background: url("../../img/index/rhg-ico.png") no-repeat 0px 0px;
// }

// .my_ioc > ul>li:nth-child(2)>a> i{
//   background: url("../../img/index/rhg-ico.png") no-repeat -40px 0px;
// }

// .my_ioc > ul>li:nth-child(3)>a >i{
//   background: url("../../img/index/rhg-ico.png") no-repeat -123px 0px;
// }
// .my_last>a{
  
//   display: inline-block;
//   background: #079fe4;
//   width: 83px;
//   height:133px;
//   text-align: center;
//   line-height: 133px;
//   text-decoration: none;
//   color:#fff;
  
//   font-size: 14px;
//   font-family: "微软雅黑";
// }
</style>