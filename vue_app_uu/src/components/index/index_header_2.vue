<template>
   <div>
      <div class="top_2">
         <table></table>
         <div>
            <img src="../../img/index/xzyx_logo.jpg" alt="">
         </div>
         <div>
            <a href="#">精确搜索</a>
            <ul>
               <li>
                  <a href="#">游戏名称<span class="pic"></span></a> 
               </li>
               <li>
                  <a href="#">游戏大区<span class="pic"></span></a>  
               </li>
               <li>
                  <a href="#">游戏服务器<span class="pic"></span></a> 
               </li>
               <li>
                  <a href="#">物品类型<span class="pic"></span></a>  
               </li>
               <li>
                  <input type="text" placeholder="请输入关键字">
               </li>
               <li>
                  <button>搜索</button>
               </li>
            </ul>
            <ul>
               <li>热门搜索：</li>
               <li v-for="(elem,i) of hot_game" :key="i"><a href="#">{{elem}}</a></li>
            </ul>
         </div>
      </div>
   </div>
</template>

<script>
   export default {
      data(){
         return{
            hot_game:["地下城与勇士","剑灵","天涯明月刀","英雄联盟","传奇永恒","流放之路","笑傲江湖OL","传奇永恒(归真版)"]
         }
      }
   }
</script>
// 
<style lang="scss" scoped>
   body,div,p,ul,li{margin:0;padding:0}
   a{text-decoration: none;color:#666;}
   .pic{
    background: url("../../img/index/header.png") no-repeat; 
   }
   .top_2{
      width:1200px;
      height:110px;
      margin:auto;
   }
   .top_2 div:nth-child(2){
      float: left;
      margin-top: 10px;
   }
   .top_2 div:last-child{
      width:786px;
      height:86px;
      float: right;
      margin-top: 10px;
   }
   .top_2 div:last-child>a{
      display: block;
      width:80px;
      height:24px;
      background-color:#00B0FF;
      font-size: 12px;
      border-radius: 3px 3px 0 0;
      color: white;
      text-align: center;
      line-height: 24px;
   }
   .top_2 div:last-child>ul:nth-child(2){
      width:784px;
      height:37px;
      border: 2px solid #00b0ff;
      list-style: none;
      margin-bottom:2px;
   }
   .top_2 div:last-child>ul:nth-child(2)>li{
      width:114px;
      height:34px;
      border-right: 1px solid #E5E5E5;
      float: left;
      text-align: center;
      line-height: 34px;
      font-size: 12px;
   }
   .top_2 div:last-child>ul:nth-child(2)>li span{
      display: inline-block;
      width:20px;
      height:18px;
      background-position: -96px -37px;
      margin-left: 25px;
   }
   .top_2 div:last-child>ul:nth-child(2)>li input{
      width:208px;
      height:34px;
      border:0;
   }
   .top_2 div:last-child>ul:nth-child(2)>li:last-child{
      margin-left: 94px;
   }
   .top_2 div:last-child>ul:nth-child(2)>li:last-child button{
      width:115px;
      height:38px;
      color: white;
      font-size: 16px;
      border:0;
      background-color: #00B0FF;
   }
   .top_2 div:last-child>ul:nth-child(2)>li:hover a{
      color:#00b0ff;
   }
   .top_2 div:last-child>ul:last-child{
      list-style: none;
   }
   .top_2 div:last-child>ul:last-child li{
      float: left;
      font-size: 12px;
      height:16px;
   }
   .top_2 div:last-child>ul:last-child li:not(:first-child){
      padding:0 8px;
      border-right: 1px solid #e5e5e5
   }
   .top_2 div:last-child>ul:last-child li:not(:first-child) a:hover{
      color:#ffa63d;
   }
</style>