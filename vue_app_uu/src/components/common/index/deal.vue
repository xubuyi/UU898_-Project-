<template>
  <div>
    <el-container>
      <div class="column-flex">
        <el-aside width="200px" class="wq-bg">
          <span class="tit">装备交易</span>
          <span class="f_tit">成交排行榜</span>
          <i class="el-icon-caret-right icon-r"></i>
        </el-aside>
        <el-aside width="200px" class="zh-bg">
          <span class="tit">账号交易</span>
          <span class="f_tit">成交排行榜</span>
          <i class="el-icon-caret-right icon-r"></i>
        </el-aside>
      </div>
      <el-container>
        <!-- 头部 -->
        <el-header>
          <el-row :gutter="20">
            <el-col :span="2">
              <div>排行</div>
            </el-col>
            <el-col :span="4">
              <div>游戏名称</div>
            </el-col>
            <el-col :span="11">
              <div>出售物品描述</div>
            </el-col>
            <el-col :span="4">
              <div>价格</div>
            </el-col>
            <el-col :span="2">
              <div>成交时间</div>
            </el-col>
          </el-row>
        </el-header>
        <!-- 内容 -->
        <el-main>
          <el-row :gutter="20">
            <el-col :span="2">
              <div>1</div>
            </el-col>
            <el-col :span="4">
              <div>上古世纪</div>
            </el-col>
            <el-col :span="11">
              <div>【神赐巨匠烟波单手仗（现货）】神赐巨匠烟波单手仗（现货）</div>
            </el-col>
            <el-col :span="4">
              <div>8000</div>
            </el-col>
            <el-col :span="2">
              <div>7月11号交易成功</div>
            </el-col>
          </el-row>
          <el-row :gutter="20">
            <el-col :span="2">
              <div>2</div>
            </el-col>
            <el-col :span="4">
              <div>梦幻诛仙2</div>
            </el-col>
            <el-col :span="11">
              <div>【八卦兑换卡】八卦兑换卡★安全赔付，找回立刻赔★ </div>
            </el-col>
            <el-col :span="4">
              <div>7100</div>
            </el-col>
            <el-col :span="2">
              <div>7月12号交易成功</div>
            </el-col>
          </el-row>
          <el-row :gutter="20">
            <el-col :span="2">
              <div>3</div>
            </el-col>
            <el-col :span="4">
              <div>第九大陆</div>
            </el-col>
            <el-col :span="11">
              <div>【女神的信任顶级符文一套】顶级女神信任符文</div>
            </el-col>
            <el-col :span="4">
              <div>6666</div>
            </el-col>
            <el-col :span="2">
              <div>7月12号交易成功</div>
            </el-col>
          </el-row>
          <el-row :gutter="20">
            <el-col :span="2">
              <div>4</div>
            </el-col>
            <el-col :span="4">
              <div>梦幻诛仙2</div>
            </el-col>
            <el-col :span="11">
              <div>【必成】必成★安全赔付，找回立刻赔★）</div>
            </el-col>
            <el-col :span="4">
              <div>4700</div>
            </el-col>
            <el-col :span="2">
              <div>7月12号交易成功</div>
            </el-col>
          </el-row>
          <el-row :gutter="20">
            <el-col :span="2">
              <div>5</div>
            </el-col>
            <el-col :span="4">
              <div>上古世纪</div>
            </el-col>
            <el-col :span="11">
              <div>【单手6阶咒力】38属性8个</div>
            </el-col>
            <el-col :span="4">
              <div>3360</div>
            </el-col>
            <el-col :span="2">
              <div>7月11号交易成功</div>
            </el-col>
          </el-row>
          <el-row :gutter="20">
            <el-col :span="2">
              <div>6</div>
            </el-col>
            <el-col :span="4">
              <div>上古世纪(台服)</div>
            </el-col>
            <el-col :span="11">
              <div>【时装】太初+神赐各一件</div>
            </el-col>
            <el-col :span="4">
              <div>2599</div>
            </el-col>
            <el-col :span="2">
              <div>7月11号交易成功</div>
            </el-col>
          </el-row>
          <el-row :gutter="20">
            <el-col :span="2">
              <div>7</div>
            </el-col>
            <el-col :span="4">
              <div>诺亚传说</div>
            </el-col>
            <el-col :span="11">
              <div>【11级劳尔】11级劳尔</div>
            </el-col>
            <el-col :span="4">
              <div>2499</div>
            </el-col>
            <el-col :span="2">
              <div>7月12号交易成功</div>
            </el-col>
          </el-row>
          <el-row :gutter="20">
            <el-col :span="2">
              <div>8</div>
            </el-col>
            <el-col :span="4">
              <div>笑傲江湖OL</div>
            </el-col>
            <el-col :span="11">
              <div>【如来第3章】如来第3章★安全赔付，找回立刻赔★</div>
            </el-col>
            <el-col :span="4">
              <div>2300</div>
            </el-col>
            <el-col :span="2">
              <div>7月10号交易成功</div>
            </el-col>
          </el-row>
          <el-row :gutter="20">
            <el-col :span="2">
              <div>1</div>
            </el-col>
            <el-col :span="4">
              <div>上古世纪</div>
            </el-col>
            <el-col :span="11">
              <div>【神赐巨匠烟波单手仗（现货）】神赐巨匠烟波单手仗（现货）</div>
            </el-col>
            <el-col :span="4">
              <div>8000</div>
            </el-col>
            <el-col :span="2">
              <div>7月11号交易成功</div>
            </el-col>
          </el-row>
          <el-row :gutter="20">
            <el-col :span="2">
              <div>1</div>
            </el-col>
            <el-col :span="4">
              <div>上古世纪</div>
            </el-col>
            <el-col :span="11">
              <div>【神赐巨匠烟波单手仗（现货）】神赐巨匠烟波单手仗（现货）</div>
            </el-col>
            <el-col :span="4">
              <div>8000</div>
            </el-col>
            <el-col :span="2">
              <div>7月11号交易成功</div>
            </el-col>
          </el-row>
        </el-main>
      </el-container>
    </el-container>
    <br />
    <el-container>
      <el-aside width="200px">Aside</el-aside>
      <el-container>
        <el-main>Main</el-main>
      </el-container>
    </el-container>
  </div>
</template>

<script>
export default {
  data() {
    return {};
  }
};
</script>

<style lang="scss" scoped>
.el-header {
  background-color: #b3c0d1;
  background-image: url("../../../img/index/colum-bg.jpg");
  color: #fff;
  text-align: center;
  line-height: 60px;
}

.el-aside {
  background-color: #d3dce6;
  color: #333;
  text-align: center;
  height: 200px;
}
/* 自改  侧边栏 start */
.column-flex {
  display: flex;
  flex-direction: column;
  margin-right: 10px;
}
// 上侧边栏
.el-aside.wq-bg {
  background: url("../../../img/index/wq.png") no-repeat 55px 85px;
}
.el-aside.zh-bg {
  background: url("../../../img/index/zh.png") no-repeat 55px 85px;
}
.el-container:nth-child(1) .el-aside {
  height: 205px;
  position: relative;
}
/* 主标题 */
.el-aside .tit {
  position: absolute;
  top: 20px;
  left: 20px;
  font-size: 20px;
  font-weight: bold;
}
/* 副标题 */
.el-aside .f_tit {
  position: absolute;
  top: 45px;
  left: 20px;
  font-size: 14px;
}
// 箭头图标
.icon-r {
  position: absolute;
  right: 10px;
  top: 50%;
  font-size: 22px;
}
.el-container:nth-child(2) .el-aside {
  line-height: 32px;
}
/* 侧边栏 end */

.el-main {
  background-color: #e9eef3;
  color: #333;
  text-align: center;
  // line-height: 160px;
}

body > .el-container {
  margin-bottom: 40px;
}
// 排行榜头部
.el-row {
  margin-bottom: 20px;
}
</style>