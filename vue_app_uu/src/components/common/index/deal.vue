<template>
  <div>
    <el-container>
      <el-aside width="200px" class="tit" >Aside</el-aside>
      <el-container>
        <el-header>
        </el-header>
        <el-main>Main</el-main>
      </el-container>
    </el-container>
    <br>  
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
    .el-header{
    background-color: #B3C0D1;
    background-image: url("../../../assets/img/index/colum-bg.jpg");
    color: #333;
    text-align: center;
    line-height: 60px;
  }
  
  .el-aside {
    background-color: #D3DCE6;
    background-image: url("../../../assets/img/index/nav-bg.png") no-repeat;
    color: #333;
    // text-align: center;
    line-height: 200px;
  }
  
  .el-main {
    background-color: #E9EEF3;
    color: #333;
    text-align: center;
    line-height: 160px;
  }
  
  body > .el-container {
    margin-bottom: 40px;
  }
  .el-container:nth-child(1) .el-aside {
    line-height: 320px;
  }
   .el-container:nth-child(2) .el-aside {
    line-height: 32px;
  }
</style>