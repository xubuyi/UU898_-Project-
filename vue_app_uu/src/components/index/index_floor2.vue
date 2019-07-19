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
            <li class="nav-item txt" v-for="(el,i) of list1" :key="i" @click="chg" :data-id="did+i">
              <a href="#">
                <span>{{el}}</span>
                <i class="i_pic"></i>
              </a>
            </li>
          </ul>
          <a class="chk show" href="javascript:;">查询</a>
        </div>
      </div>
      <div class="yxmc on" id="gameselect0">
        <div class="game-top-tips">
          <div class="lt">
            <span class="ftxt">以下为已开通比例走势查询的游戏，更多游戏陆续开通中...</span>
          </div>
          <div class="rt">
            <a href="javascript:;" target="_blank">更多游戏</a>
            <span class="game-close-icon" title="关闭" >×</span>
          </div>
        </div>
        <div class="yxmc_rmyx">
          <ul class="rmyx_list nav" id="topgames1">
            <li class="nav-item" v-for="(el,i) of list2" :key="i">
              <a href="javascript:;" title="地下城与勇士" class="hotGameClr">
                <img src="../../img/index/wym_05.jpg" alt="热门游戏列表" />
                {{el}}
              </a>
            </li>
          </ul>
        </div>
      </div>
      <div class="yxmc on" id="gameselect1">
        <div class="game-top-tips">
          <div class="lt">
            <span class="ftxt">请选择大区</span>
          </div>
          <div class="rt">
            <a href="javascript:;" target="_blank">更多游戏</a>
            <span class="game-close-icon" title="关闭">×</span>
          </div>
        </div>
        <div class="yxmc_rmyx"></div>
      </div>
      <div class="yxmc on" id="gameselect2">
        <div class="game-top-tips">
          <div class="lt">
            <span class="ftxt">请选择服务器</span>
          </div>
          <div class="rt">
            <a href="javascript:;" target="_blank">更多游戏</a>
            <span class="game-close-icon" title="关闭">×</span>
          </div>
        </div>
        <div class="yxmc_rmyx"></div>
      </div>
      <div class="yxmc on" id="gameselect3">
        <div class="game-top-tips">
          <div class="lt">
            <span class="ftxt">请选择物品类型</span>
          </div>
          <div class="rt">
            <a href="javascript:;" target="_blank">更多游戏</a>
            <span class="game-close-icon" title="关闭">×</span>
          </div>
        </div>
        <div class="yxmc_rmyx"></div>
      </div>
    </div>
    <div class="f2_cont">
      <div class="cahrt" id="box"></div>
      <div class="info">
        <div class="list_tit">
          <i class="icon"></i>
          <span>
            以下为
            <em>地下城与勇士/山东区/山东2／游戏币</em>最佳比例商品
          </span>
          <a href="#">查看更多</a>
          <i class="i_pic"></i>
        </div>
        <div class="list_item">
          <i class="i_pic1"></i>
          <span class="jy">【拍卖交易】392156.86元=26000000</span>
          <span class="bl">1元=66.3万金</span>
          <span class="cot">共1件</span>
          <a class="show buy" href="#">立即购买</a>
        </div>
        <div class="list_item">
          <i class="i_pic1"></i>
          <span class="jy">【拍卖交易】551元=35000万金★手工</span>
          <span class="bl">1元=63.5209万金</span>
          <span class="cot">共1件</span>
          <a class="show buy" href="#">立即购买</a>
        </div>
        <div class="list_item">
          <i class="i_pic1"></i>
          <span class="jy">【拍卖交易】798元=50000万金★手工</span>
          <span class="bl">1元=62.6566万金</span>
          <span class="cot">共1件</span>
          <a class="show buy" href="#">立即购买</a>
        </div>
        <div class="list_item">
          <i class="i_pic1"></i>
          <span class="jy">【拍卖交易】243元=15000万金★手工</span>
          <span class="bl">1元=61.7284万金</span>
          <span class="cot">共1件</span>
          <a class="show buy" href="#">立即购买</a>
        </div>
        <div class="list_item">
          <i class="i_pic1"></i>
          <span class="jy">【拍卖交易】278元=17000万金★手工</span>
          <span class="bl">1元=61.1511万金</span>
          <span class="cot">共1件</span>
          <a class="show buy" href="#">立即购买</a>
        </div>
        <div class="list_item">
          <i class="i_pic1"></i>
          <span class="jy">【拍卖交易】423元=25001.63万金★手</span>
          <span class="bl">1元=59.1055万金</span>
          <span class="cot">共1件</span>
          <a class="show buy" href="#">立即购买</a>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
// 引入基本模板
let echarts = require("echarts/lib/echarts");
// 引入柱状图组件
require("echarts/lib/chart/line");
// 引入提示框和title组件
require("echarts/lib/component/tooltip");
require("echarts/lib/component/title");
export default {
  data() {
    return {
      list1: ["游戏名称", "游戏大区", "游戏服务器", "游戏类型"],
      list2: ["地下城与勇", "剑灵", "天涯明月刀", "冒险岛2"],
      data: [
        { id: 1, m: "7月8日", sal: 56.497 },
        { id: 2, m: "7月9日", sal: 57.258 },
        { id: 3, m: "7月10日", sal: 58.027 },
        { id: 4, m: "7月11日", sal: 57.463 },
        { id: 5, m: "7月12日", sal: 57.234 },
        { id: 6, m: "7月13日", sal: 57.146 },
        { id: 7, m: "7月14日", sal: 57.529 }
      ],
      did: "gameselect"
    };
  },
  methods: {
    //金币比例统计图
    drawLine() {
      let box = document.getElementById("box");
      let myChart = echarts.init(box);
      let mlist = [];
      let slist = [];
      //循环遍历获取sal和月份
      for (let item of this.data) {
        mlist.push(item.m);
        slist.push(item.sal);
      }
      //console.log(mlist, slist);
      //3.创建option对象
      let option = {
        title: {
          text: "地下城与勇士每一元游戏币比例趋势图",
          x: "center",
          y: "10px",
          textStyle: {
            color: "#666"
          }
        },
        xAxis: {
          data: mlist
        },
        yAxis: {},
        series: [
          {
            type: "line", //柱簇型
            data: slist,
            smooth: true
          }
        ]
      };
      //4. 将option添加到myChart
      myChart.setOption(option);
    },
    //选项卡点击显示隐藏
    chg(e) {
      var id = e.target.dataset.id;
      //console.log(id)
      var dv = document.getElementById(id);
      if (dv.classList.contains("on")) {
        dv.classList.remove("on");
      } else {
        dv.classList.add("on");
      }
    }
  },
  mounted() {
    this.drawLine();
  }
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
.show {
  display: inline-block;
  text-align: center;
  color: #fff;
  font-size: 14px;
  background: #ffa63d;
  border-radius: 3px;
}
.show:hover {
  background: #eb7d29;
}
.nav {
  list-style: none;
}
.nav .nav-item {
  float: left;
  margin-right: 15px;
}
/*小图标引入标签*/
.i_pic {
  background: url("../../img/index/index_bg.png");
}
.i_pic1 {
  background: url("../../img/index/sp_ico.png");
}
/*内容样式区*/
.container {
  width: 100%;
}
.container > div {
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
.container .floor2 .f2_nav .rt .chk {
  position: absolute;
  top: 10px;
  right: 10px;
  width: 58px;
  height: 27px;
  line-height: 27px;
}

/*选项样式*/
.floor2 .yxmc {
  width: 1196px;
  height: 81px;
  border: 2px solid #00b0ff;
  background: #fff;
  position: absolute;
  top: 50px;
  left: 0;
  z-index: 9999;
  box-shadow: 0 0 1px #b9b9b9;
}
.on {
  display: none;
}
.floor2 .yxmc .game-top-tips {
  width: 100%;
  height: 50px;
  border-bottom: 2px solid #00b0ff;
}
.floor2 .yxmc .game-top-tips .lt {
  width: 500px;
  height: 50px;
  line-height: 50px;
  float: left;
}
.floor2 .yxmc .game-top-tips .lt span {
  display: inline-block;
  padding: 0 0 0 15px;
  font-size: 14px;
  color: #f00;
}
.floor2 .yxmc .game-top-tips .rt {
  width: 300px;
  height: 50px;
  padding: 0 15px 0 0;
  line-height: 50px;
  float: right;
  text-align: right;
}
.floor2 .yxmc .game-top-tips .rt a {
  padding: 0 15px 0 0;
  font-size: 14px;
  color: #f00;
}
.floor2 .yxmc .game-top-tips .rt span {
  font-size: 20px;
  cursor: pointer;
  color: #888;
}
.container .f2_cont .cahrt {
  width: 565px;
  height: 330px;
  float: left;
  padding: 7px 0 0 30px;
}
.container .f2_cont .info {
  width: 601px;
  height: 345px;
  margin: 5px 0 0 0;
  overflow: hidden;
  float: right;
  border-left: 1px solid #eee;
}
.container .f2_cont .info .list_tit {
  width: 546px;
  height: 43px;
  font-size: 15px;
  font-weight: bold;
  line-height: 43px;
  margin: 0 0 0 10px;
  margin: 0 auto;
  position: relative;
  border-bottom: 1px solid #eee;
}
.container .f2_cont .info .list_tit .icon {
  height: 18px;
  display: inline-block;
  position: absolute;
  top: 13px;
  left: -10px;
  width: 3px;
  background: #04d6a2;
}
.container .f2_cont .info .list_tit em {
  width: 220px;
  display: inline-block;
  vertical-align: -38%;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  font-style: normal;
  font-size: 15px;
  color: #00a7ff;
  margin: 0 3px;
}
.container .f2_cont .info .list_tit a {
  padding-right: 19px;
  float: right;
  font-size: 12px;
  font-weight: normal;
  color: #999;
}
.container .f2_cont .info .list_tit .i_pic {
  display: inline-block;
  background-position: -102px -21px;
  width: 17px;
  height: 15px;
  position: absolute;
  top: 13px;
  right: 0px;
}
.container .f2_cont .info .list_item {
  width: 540px;
  height: 45px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin: 0 auto;
}
.container .f2_cont .info .list_item .i_pic1 {
  width: 16px;
  height: 16px;
  background-position: -162px -2px;
  vertical-align: middle;
}
.container .f2_cont .info .list_item span {
  height: 45px;
  line-height: 45px;
  color: #666;
  font-size: 12px;
  display: inline-block;
}
.container .f2_cont .info .list_item span.jy {
  width: 230px;
  overflow: hidden;
}
.container .f2_cont .info .list_item span.bl {
  width: 130px;
  color: #f00;
  margin-left: -20px;
}
.container .f2_cont .info .list_item span.cot {
  width: 60px;
  text-align: center;
  margin-left: -20px;
}
.container .f2_cont .info .list_item .buy {
  width: 75px;
  height: 28px;
  line-height: 28px;
}
</style>