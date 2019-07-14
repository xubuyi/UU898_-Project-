<template>
  <div>
    <div class="lists" @mouseenter="enter" @mouseleave="leave">
      <!-- 游戏列表 -->
      <ul>
        <li>
          <span class="my_img"></span>
          <span>热门游戏</span>
        </li>
        <li v-for="(item,i) of gamne_list" :key="i">
          <span>{{item}}</span>
        </li>
        <!-- <li>天涯明月刀</li>
        <li>地下城与勇士</li>
        <li>流放之路</li>
        <li>诛仙3</li>
        <li>诺亚传说</li>
        <li>古剑奇谭网络版</li>
        <li>灵山奇缘</li>
        <li>传奇永恒</li>
        <li>笑傲江湖OL</li> -->
        <li>更多游戏>></li>
      </ul>
      <div v-show="my_first" class="options">
        <!-- 类型 -->
        <ul class="my_type " >
          <li @click="qq" v-for="(list,i) of game_type" :key="i">
            <span>{{list}}</span>
          </li>
          <!-- <li>太阳账号</li>
          <li>游戏币</li>
          <li>装备</li>
          <li>其他</li>
          <li>游戏礼包</li>
          <li>商城道具</li>
          <li>点券</li>
          <li>祝福酒</li> -->
        </ul>
        <div v-show="c">
          <!-- 区服 -->
          <ul>
            <li>一区</li>
            <li>二区</li>
            <li>三区</li>
            <li>四区</li>
            <li>五区</li>
            <li>六区</li>
            <li>七区</li>
            <li>八区</li>
            <li>九区</li>
            <li>十区</li>
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
      gamne_list:["剑灵","天涯明月刀","地下城与勇士","流放之路","诛仙3","诺亚传说","  古剑奇谭网络版","灵山奇缘","传奇永恒","笑傲江湖OL"],
      game_type:["游戏账号","太阳账号","游戏币","装备","其他","游戏礼包","商城道具","点券","祝福酒"],
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
    qq() {
      if (this.c == false) {
        this.c = true;
      }
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
ul > li {
  width: 190px;
  height: 39px;
  text-align: left;
  line-height: 39px;
  border-bottom: 2px dotted #2c92e8;
}
//背景色
div {
  background: #0086e6;
  color: $color;
  font-size: $size;
  display: inline-block;
}
//背景图
.my_img {
  background: url("../../img/index/index_bg.png") no-repeat 0px -55px;
  display: inline-block;
  width: 25px;
  height: 29px;
}
.lists {
  position: relative;
}
.options {
  position: absolute;
  top: 0px;
  left: 240px;
  border: 1px solid red;
  width:500px;
}
.my_type{
  display: inline-block;
}
</style>