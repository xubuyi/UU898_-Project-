<template>
  <div class="container">
    <h2>二楼内容</h2>
    <div class="floor2">
      <div class="f2_nav">
        <div class="lt">
          <i class="i_pic"></i>
          <span>游戏币比例走势图</span>
        </div>
        <div class="rt">
          <ul class="nav">
            <li class="nav-item txt">
              <span>游戏名称</span>
              <i class="i_pic"></i>
            </li>
            <li class="nav-item txt"> 
              <span>游戏大区</span>
              <i class="i_pic"></i>
            </li>
            <li class="nav-item txt">
              <span>游戏服务器</span>
              <i class="i_pic"></i>
            </li>
            <li class="nav-item txt">
              <span>物品类型</span>
              <i class="i_pic"></i>
            </li>
            <li class="nav-item chk">
              <a href="javascript:;">查询</a>
            </li>
          </ul>
        </div>
      </div>
      <div class="yxmc" id="gameselect1">
        <div class="game-top-tips clearfix">
          <span class="ftxt">以下为已开通比例走势查询的游戏，更多游戏陆续开通中...</span>
          <span class="rtxt">
            <a href="/searchgame_buy.aspx" target="_blank">更多游戏</a>
          </span>
          <span class="game-close-icon" title="关闭" onclick>×</span>
        </div>
        <div class="yxmc_rmyx">
          <div style="clear: both;"></div>
          <ul class="rmyx_list hlse nav" id="topgames1">
            <li class="nav-item">
              <a href="javascript:;" title="地下城与勇士" class="hotGameClr">
                <img src="../../img/index/wym_05.jpg" alt="热门游戏列表" />地下城与勇士
              </a>
            </li>
            <li class="nav-item">
              <a href="javascript:;" title="剑灵">
                <img src="../../img/index/wym_05.jpg" alt="热门游戏列表" />剑灵
              </a>
            </li>
            <li class="nav-item">
              <a href="javascript:;" title="天涯明月刀" class="hotGameClr">
                <img src="../../img/index/wym_05.jpg" alt="热门游戏列表" />天涯明月刀
              </a>
            </li>
            <li class="nav-item">
              <a href="javascript:;" title="冒险岛2">
                <img src="../../img/index/wym_05.jpg" alt="热门游戏列表" />冒险岛2
              </a>
            </li>
          </ul>
        </div>
      </div>
      <div class="yxmc" id="areaselect1">
      </div>
      <div class="yxmc" id="serverselect1">
      </div>
      <div class="yxmc" id="typeselect1">
      </div>
    </div>
    <div class="f2_cont">
      <div class="cahrt"></div>
      <div class="info"></div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
     
    }
  },
  methods: {}
};
</script>

<style scoped>
/*样式重置*/
body,
div,
ul,
li,
h1,
h2,
h3,
h4,
h5,
h6 {
  margin: 0;
  padding: 0;
}
body {
  font-size: 12px;
  color: #666666;
}
a {
  text-decoration: none;
}
.nav {
  list-style: none;
}
.nav .nav-item {
  float: left;
}
/*小图标引入标签*/
.i_pic {
  background: url("../../img/index/index_bg.png");
}
/*内容样式区*/
.container {
  width: 100%;
}
.container .floor2 {
  width: 1200px;
  position: relative;
  margin: 0 auto;
}
.container .floor2 .f2_nav {
  width: 100%;
  /* position: relative; */
  height: 50px;
  background: url("../../img/index/colum-bg.jpg") center center;
}
/*二楼导航左内容区*/
.container .floor2 .f2_nav .lt {
  width: 175px;
  height: 50px;
  line-height: 50px;
  float: left;
}
.container .floor2 .f2_nav .lt span {
  float: right;
  color: #fff;
  font-size: 16px;
  font-weight: 600;
}
.container .floor2 .f2_nav .lt i {
  display: inline-block;
  width: 25px;
  height: 20px;
  margin: 13px 0 0 10px;
  background-position: -28px -60px;
}
/*二楼导航右内容区*/
.container .floor2 .f2_nav .rt {
  width: 678px;
  height: 50px;
  padding-right: 10px;
  float: right;
}
.container .floor2 .f2_nav .rt .nav {
  width: 100%;
  height: 40px;
  margin-top: 10px;
}
.container .floor2 .f2_nav .rt .nav .txt {
  display: inline-block;
  background-color: #fff;
  margin-right: 10px;
  width: 145px;
  height: 27px;
  line-height: 27px;
  cursor: pointer;
}
/*搜索框小图标样式*/
.container .floor2 .f2_nav .rt .nav .txt i {
  width: 25px;
  height: 15px;
  float: right;
  margin: 5px 2px 0 0;
  background-position: -110px 0;
}
.container .floor2 .f2_nav .rt .nav li span {
  padding-left: 5px;
  font-size: 12px;
  color: #666;
}
.container .floor2 .f2_nav .rt .nav li a {
  width: 58px;
  height: 27px;
  line-height: 27px;
  text-align: center;
  color: #fff;
  font-size: 14px;
  background: #ffa63d;
  display: inline-block;
  border-radius: 3px;
}
.container .floor2 .f2_nav .rt .nav li a:hover{
  background: #eb7d29;
}
/*选项样式*/
.floor2 .yxmc{
  width: 1196px;
  height:81px;
  /* display:none; */
  border: #00b0ff 2px solid;
  background: #fff;
  position: absolute;
  top: 50px;
  left: 0;
  z-index: 9999;
  box-shadow: 0 0 2px #b9b9b9;
}

</style>