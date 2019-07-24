<template>
  <div>
    <div class="myheader">
      <ul class="logo">
        <li>
          <a href="javascript:;">
            <img src="../../img/login/dlzc_logo.png" />
          </a>
        </li>
        <li>
          <span v-show="show_one">欢迎登录</span>
          <span v-show="show_two">欢迎注册</span>
        </li>
      </ul>
      <ul class="my_right">
        <li>
          <span>已有账号，</span>
          <a href="javascri:;" style="color:#00b0ff" @click="change">请登录</a>
        </li>
        <li>
          <a href="javascri:;">UU898首页</a>
        </li>
        <li>
          <a href="javascri:;">客服中心</a>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      show_one: true,
      show_two: false
    };
  },
  methods: {
    change() {
      // console.log(1);
      if (this.show_one) {
        this.show_one = false;
        this.show_two = true;
      } else if (this.show_one) {
        this.show_one = true;
        this.show_two = false;
      }
    }
  }
};
</script>

<style lang="scss" scoped>
* {
  margin: 0;
  padding: 0;
}
.myheader {
  margin: 0 auto;
  width: 1000px;
  display: flex;
}

.logo > li > span {
  text-align: center;
  line-height: 100px;
  border-left: 1px solid black;
  font-family: "微软雅黑", Arial;
  font-size: 24px;
  padding-left: 30px;
  margin: 20px;
}

ul {
  list-style: none;
  display: flex;
}
div > ul:last-child {
  // float: right;
  padding-left: 200px;
}
.my_right > li {
  padding-left: 20px;
  font-size: 18px;
  line-height: 100px;
}
a {
  text-decoration: none;
  color: black;
}
a:hover {
  color: #00b0ff;
}
</style>