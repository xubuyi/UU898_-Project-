<template>
  <div>
    <div class="lists" @mouseenter="enter" @mouseleave="leave">
      <!-- 游戏列表 -->
      <ul class="game">
        <li>
          <span class="my_img"></span>
          <span>热门游戏</span>
        </li>
        <li v-for="(item,i) of gamne_list" :key="i">
          <span>{{item}}</span>
        </li>
        <li>更多游戏>></li>
      </ul>
      <div v-show="my_first" class="options">
        <div>
          <!-- 类型 -->
          <span class="aa">请选择商品类型</span>
          <br />
          <input type="text" placeholder="请选择商品类型" />
          <br />
          <ul class="games">
            <li @click="area" v-for="(list,i) of game_type" :key="i">
              <span>{{list}}</span>
            </li>
          </ul>
        </div>
        <div v-show="c">
          <!-- 区服 -->
          <span>请选择游戏区</span>
          <br />
          <input type="text" placeholder="请选择游戏区" />
          <ul class="my_type">
            <li @click="next_area" v-for="(list,i) of game_area" :key="i">
              <span>{{list}}</span></li>
          </ul>
        </div>
        <div v-show="a">
          <span>请选择游戏服务器</span>
          <!-- 服务器 -->
          <br />
          <input type="text" placeholder="请选择游戏服务器" />
          <ul class="my_type">
            <li @click="buy" v-for="(list,i) of game_next_area" :key="i">
              <span>{{list}}</span></li>
          </ul>
        </div>
        <div v-show="s" class="buy">
          <!-- 买卖按钮 -->
          <ul class="my_buy">
            <li>
              <a href="javascript:;">购买商品</a>
            </li>
            <li>
              <a href="javascript:;">发布商品</a>
            </li>
            <li>
              <a href="javascript:;">发布担保</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      my_first: false,
      c: false,
      a: false,
      s: false,
      gamne_list: [
        "剑灵",
        "天涯明月刀",
        "地下城与勇士",
        "流放之路",
        "诛仙3",
        "诺亚传说",
        "  古剑奇谭网络版",
        "灵山奇缘",
        "传奇永恒",
        "笑傲江湖OL"
      ],
      game_type: [
        "游戏账号",
        "太阳账号",
        "游戏币",
        "装备",
        "其他",
        "游戏礼包",
        "商城道具",
        "点券",
        "祝福酒"
      ],
      game_area: [
        "一区",
        "二区",
        "三区",
        "四区",
        "五区",
        "六区",
        "七区",
        "八区",
        "九区",
        "十区",
        "十一区",
        "十二区"
      ],
      game_next_area: [
        "子一区",
        "子二区",
        "子三区",
        "子四区",
        "子五区",
        "子六区",
        "子七区",
        "子八区",
        "子九区",
        "子十区",
        "子十一区",
        "子十二区"
      ]
    };
  },
  methods: {
    // 鼠标移入
      enter() {
        this.my_first = true;
      },
      //鼠标移出
      leave() {
        this.my_first = false;
      },
      //鼠标点击
      area() {
        if (this.c == false) {
          this.c = true;
        }
      },
      next_area(){
        this.a = true
      },
      buy(){
        this.s=true
      }
  }
};
</script>
<style lang="scss" scoped>
// 11
// 字体大小14
$size: 14px;
//颜色白色
$color: #fff;
// 取消点
ul {
  list-style: none;
}
// li样式
ul.game > li {
  border-bottom: 2px dotted #2c92e8;
}
//ul样式
ul > li {
  width: 190px;
  height: 39px;
  text-align: left;//文字左对齐
  line-height: 39px;//文字居中
}
//背景色
.game {
  background: #0086e6;
  font-size: $size;
  color: $color;
  margin: 0
}
div {
  // background: #0086e6;
  display: inline-block;
}
//背景图
.my_img {
  background: url("../../img/index/index_bg.png") no-repeat 0px -55px;
  display: inline-block;
  width: 25px;
  height: 29px;
}
//最外围相对定位
.lists {
  position: relative;
}
//游戏信息绝对定位
.options {
  position: absolute;
  top: 0;
  left: 230px;
  width: 1200px;
  height: 490px;
  background: url("../../img/index/select-btn-bg.png");
  color: #000;
  z-index: 999
}
//设置游戏信息以Y轴超出高度出现滑轮
.my_type {
  overflow-y: scroll;
  overflow-x: auto;
  height: 300px;
  width: 210px;
}
//设置游戏信息以Y轴超出高度出现滑轮
.games {
  display: inline-block;
  overflow-y: scroll;
  height: 300px;
  width: 209px;
}
//设置每个li向上间距
.buy > ul > li {
  padding-top: 20px;
}
//li中的a
.buy > ul > li > a {
  display: inline-block;
  width: 190px;
  height: 41px;
  text-decoration: none;
  text-align: center;
  color:#fff
}
//
// .buy > ul > li > a:visited{
//   color:transparent;
// }
//游戏买卖的按钮的背景
.buy > ul > li:nth-child(1) > a {
  background: url("../../img/index/select-btn.png") no-repeat;
}
//游戏买卖的按钮的背景
.buy > ul > li:nth-child(2) > a {
  background: url("../../img/index/select-btn.png") no-repeat 0px -40px;
}
//游戏买卖的按钮的背景
.buy > ul > li:nth-child(3) > a {
  background: url("../../img/index/select-btn.png") no-repeat 0px -81px;
}
//游戏信息ul上面的输入框样式
input {
  width: 209px;
  height: 40px;
  border: 1px solid #00b0ff;
}
//游戏信息每个ul给边框
.options > div > ul {
  border: 1px solid #00b0ff;
  margin-top: 0;
  width: 209px;
  padding-left: 0;
}
//边距
.options > div {
  padding-left: 20px;
  padding-top: 50px;
}
//游戏买卖的位置
.options > .buy {
  // display: inline-block;
  float: right;
  padding-top: 150px;
  padding-right: 230px;
}
//间距
.options>div>ul>li>span{
  padding-left: 10px;
}
//取消游戏买卖的边框
.my_buy{
  border: none !important;
}
</style>