<template>
  <div>
    <div>
      <!-- 游戏列表 -->
      <ul @mouseenter="enter" @mouseleave="leave">
        <li>
          <span class="my_img"></span>
          <span>热门游戏</span>
        </li>
        <li>
          <span>剑灵</span>
        </li>
        <li>天涯明月刀</li>
        <li>地下城与勇士</li>
        <li>流放之路</li>
        <li>诛仙3</li>
        <li>诺亚传说</li>
        <li>古剑奇谭网络版</li>
        <li>灵山奇缘</li>
        <li>传奇永恒</li>
        <li>笑傲江湖OL</li>
        <li>更多游戏>></li>
        <div v-show="my_first">
          <!-- 类型 -->
          <ul class="my_type">
            <li @click="qq">
              <span>游戏账号</span>
            </li>
            <li>太阳账号</li>
            <li>游戏币</li>
            <li>装备</li>
            <li>其他</li>
            <li>游戏礼包</li>
            <li>商城道具</li>
            <li>点券</li>
            <li>祝福酒</li>
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
      </ul>
    </div>
    <!-- <div v-show="my_first"> -->
    <!-- 类型 -->
    <!-- <ul class="my_type">
        <li @click="qq">
          <span>游戏账号</span>
        </li>
        <li>太阳账号</li>
        <li>游戏币</li>
        <li>装备</li>
        <li>其他</li>
        <li>游戏礼包</li>
        <li>商城道具</li>
        <li>点券</li>
        <li>祝福酒</li>
      </ul>
    </div>-->
    <!-- <div v-show="c"> -->
      <!-- 区服 -->
      <!-- <ul>
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
    </div> -->
  </div>
</template>

<script>
export default {
  data() {
    return {
      my_first: false,
      c: false
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
  background: url("../../img/index_bg.png") no-repeat 0px -55px;
  display: inline-block;
  width: 25px;
  height: 29px;
}
</style>