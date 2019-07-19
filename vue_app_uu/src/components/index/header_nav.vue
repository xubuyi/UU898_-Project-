<template>
  <div>
    <!-- 导航栏 -->
    <ul class="my_nav">
      <!-- logo图片 -->
      <li>
        <img src="../../img//index/nav-img.png" />
      </li>
      <!-- 首页按钮 -->
      <li>
        <el-button class="nav_style">首页</el-button>
      </li>
      <!-- 我要买按钮，并带有下拉框 -->
      <li>
        <el-popover
          placement="top-start"
          title="标题"
          width="200"
          trigger="hover"
          content="这是一段内容,这是一段内容,这是一段内容,这是一段内容。"
        >
          <el-button slot="reference" class="nav_style">我要买</el-button>
        </el-popover>
      </li>
      <!-- 我要卖按钮，并带有下拉框 -->
      <li>
        <el-popover
          placement="top-start"
          title="标题"
          width="200"
          trigger="hover"
          content="这是一段内容,这是一段内容,这是一段内容,这是一段内容。"
        >
          <el-button slot="reference" class="nav_style">我要卖</el-button>
        </el-popover>
      </li>
      <!-- 手游交易按钮 -->
      <li>
        <el-button class="nav_style">手游交易</el-button>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  data() {
    return {
      visible: false
    };
  }
};
</script>

<style lang="scss" scoped>
// 11
ul > li + li {
  margin-top: 20px;
}
// ul横向显示,并取消前面点
.my_nav {
  display: flex;
  list-style: none;
  padding-left: 10%;
  padding: 0;
  margin: 0;
  height:56px
}
// 按钮样式
.nav_style {
  border: none;
  width: 150px;
  // height: 36px;
  line-height: 10px;
  color: #666;
  font: 16px "微软雅黑";
  padding-top: 8px;
}
// 修改hover背景色
.nav_style:hover {
  background: #00b0ff;
  color: #fff;
}
//导航栏的间距
.my_nav > li:first-child {
  padding:0px 22px;
}
//导航栏的间距
.my_nav > li:nth-child(2) {
  padding-left: 10px;
}
</style>