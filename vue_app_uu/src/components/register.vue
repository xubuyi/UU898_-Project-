<template>
  <div>
    <el-container>
      <el-header>
        <div class="top">
          <ul class="top_logo">
            <li>
              <a href="javascript:;">
                <img src="../assets/img/login/dlzc_logo.png">
              </a>
            </li>
            <li>
              <p>欢迎注册 </p>
            </li>
          </ul>
          <ul class="top_right"></ul>
        </div>
      </el-header>
      <el-main></el-main>
      <el-footer></el-footer>
    </el-container>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        
      }
    },
  }
</script>

<style scoped>
  ul{
    list-style: none;
  }
  .el-header{
    height: 100px !important;
    
    color:#333;
    text-align:center;
    line-height: 60px;
  }
  .top{
    width: 1000px;
    margin:0 auto;
    border: 1px solid red;
  }
  .top ul,.top li{
    float: left;
  }
</style>