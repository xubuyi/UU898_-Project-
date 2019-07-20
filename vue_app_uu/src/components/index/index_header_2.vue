<template>
   <div class="container">
      <div class="top_2">
         <table></table>
         <div>
            <img src="../../img/index/xzyx_logo.jpg" alt="">
         </div>
         <div>
            <a href="#">精确搜索</a>
            <ul>
               <li @click="show_1">
                  <a href="#">游戏名称<span class="pic"></span></a> 
               </li>
               <li @click="show_2">
                  <a href="#">游戏大区<span class="pic"></span></a>  
               </li>
               <li @click="show_3">
                  <a href="#">游戏服务器<span class="pic"></span></a> 
               </li>
               <li @click="show_4">
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
      <div class="hide_1" data_hide="1">
         <ul>
            <li class="li_1">
               <input type="text" placeholder="请输入汉字或拼音">
               <i class="pic"></i>
            </li>
            <li class="li_2"><a href="#">热门游戏</a></li>
            <li class="li_3" v-for="(elem,i) of A_Z" :key="i"><a href="javasctipt:;" :data-id="i" @click="select">{{elem}}</a></li>
            <li class="li_4" @click="show_1">×</li>
         </ul>
         <div class="hide_content">
            <div>
               <div class="active" @click="select_1" data-btn="0">
                  网<br>络<br>游<br>戏
               </div>
               <div @click="select_1" data-btn="1">
                  手<br>机<br>游<br>戏
               </div>
            </div>
            <div>
               <div id="pc_games" class="active">
                  <ul class="content">
                  <li v-for="(elem,i) of pc_games" :key="i">
                     <i class="pic"></i>
                     <a href="">{{elem}}</a>
                  </li>
               </ul>
               </div>
               <div id="phone_games">
                  <ul class="content">
                     <li v-for="(elem,i) of phone_games" :key="i">
                        <i class="pic"></i>
                        <a href="">{{elem}}</a>
                     </li>
                  </ul>
               </div>
            </div>
         </div>
         
      </div>
      <div class="hide_2" data_hide="1">
         <ul>
            <li class="li_1">
               <input type="text" placeholder="请输入中文搜索大区">
               <i class="pic"></i>
            </li>
            <li class="li_2"><a href="#">请选择游戏区</a></li>
            <li class="li_3_2"><a href="javasctipt:;">找不到游戏、区服?</a></li>
            <li class="li_4" @click="show_2">×</li>
         </ul>
      </div>
      <div class="hide_3" data_hide="1">
         <ul>
            <li class="li_1">
               <input type="text" placeholder="请输入中文搜索服务器">
               <i class="pic"></i>
            </li>
            <li class="li_2"><a href="#">请选择游戏服务器</a></li>
            <li class="li_3_2"><a href="javasctipt:;">找不到游戏、区服?</a></li>
            <li class="li_4" @click="show_3">×</li>
         </ul>
      </div>
      <div class="hide_4" data_hide="1">
         <ul>
            <li class="li_2"><a href="#">请选择物品类型</a></li>
            <li class="li_3_4"><a href="javasctipt:;">找不到游戏、区服?</a></li>
            <li class="li_4" @click="show_4">×</li>
         </ul>
      </div>
   </div>
</template>

<script>
   export default {
      data(){
         return{
            hot_game:["地下城与勇士","剑灵","天涯明月刀","英雄联盟","传奇永恒","流放之路","笑傲江湖OL","传奇永恒(归真版)"],
            A_Z:["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"],
            pc_games:["完美国际2","地下城与勇士","英雄联盟","上古世纪","笑傲江湖OL","流放之路","古剑奇谭网络","剑灵","传奇永恒","天涯明月刀","诛仙3","轩辕传奇2","新天龙八部","QQ","梦幻诛仙2","诺亚传说","天谕","Apex英雄","steam游戏","绝地求生"],
            phone_games:["王者荣耀","一起来捉妖","妖精的尾巴:魔","拉结尔","遇见逆水寒","云梦四时歌","完美世界手游","绝地求生：刺","阴阳师","DNF手游","梦幻西游","猎鱼达人手游","梦幻西游3D","决战平安京"]
         }
      },
      methods: {
         show_1(){
            var data_hide=document.querySelectorAll("div[data_hide='1']")
            var hide_1=document.querySelector(".hide_1");
            console.log(hide_1.classList.contains("active"))
            //hide_1.hasAttribute("active")?hide_1.classList.remove(".active"):hide_1.classList.add(".active");
            if(!hide_1.classList.contains("active")){
               for(var i=0;i<data_hide.length;i++){
               data_hide[i].classList.remove("active")
               }
               hide_1.classList.add("active")
            }else if(hide_1.classList.contains("active")){
               console.log(123)
               hide_1.classList.remove("active")
            }
            
         },
         show_2(){
            var data_hide=document.querySelectorAll("div[data_hide='1']")
            var hide_1=document.querySelector(".hide_2");
            if(!hide_1.classList.contains("active")){
               for(var i=0;i<data_hide.length;i++){
               data_hide[i].classList.remove("active")
            }
               hide_1.classList.add("active")
            }else if(hide_1.classList.contains("active")){
               hide_1.classList.remove("active")
            }
         },
         show_3(){
            var data_hide=document.querySelectorAll("div[data_hide='1']")
            var hide_1=document.querySelector(".hide_3");
            if(!hide_1.classList.contains("active")){
               for(var i=0;i<data_hide.length;i++){
               data_hide[i].classList.remove("active")
            }
               hide_1.classList.add("active")
            }else if(hide_1.classList.contains("active")){
               hide_1.classList.remove("active")
            }
         },
         show_4(){
            var data_hide=document.querySelectorAll("div[data_hide='1']")
            //console.log(data_hide)
            var hide_1=document.querySelector(".hide_4");
            if(!hide_1.classList.contains("active")){
               for(var i=0;i<data_hide.length;i++){
               data_hide[i].classList.remove("active")
            }
               hide_1.classList.add("active")
            }else if(hide_1.classList.contains("active")){
               hide_1.classList.remove("active")
            }
         },
         select(e){
            var tar=e.target;
            //console.log(tar.dataset.id)
            var alpha=document.querySelectorAll(".li_3>a")
            alpha[tar.dataset.id]
            //console.log(alpha[tar.dataset.id]);
            for(var i=0;i<alpha.length;i++){
               alpha[i].classList.remove("active")
            }
            alpha[tar.dataset.id].classList.add("active")
         },
         select_1(e){
            var pc_phone=document.querySelectorAll(".hide_content>div>div")
            console.log(pc_phone)
            for(var i=0;i<pc_phone.length;i++){
               pc_phone[i].classList.remove("active")
            }
            e.target.classList.add("active");
            var num=parseInt(e.target.dataset.btn)+2;
            pc_phone[num].classList.add("active")
         }
      },
   }
</script>
// 
<style scoped>
   body,div,p,ul,li{margin:0;padding:0}
   a{text-decoration: none;color:#666;}
   ul{list-style: none;}
   .pic{
    background: url("../../img/index/header.png") no-repeat; 
   }
   .container{
      width:100%;
   }
   .top_2{
      width:1200px;
      height:110px;
      margin:auto;
      position: relative;
   }
   .top_2 div:nth-child(2){
      float: left;
      margin-top: 7px;
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
   
   .hide_1,.hide_2,.hide_3,.hide_4{
      width:1200px;
      border:2px solid #00bff0;
      position: absolute;;
      top:115px;
      left:81px;
      background-color: white;
      display: none;
      z-index: 1000;
   }
   .hide_1.active,.hide_2.active,.hide_3.active,.hide_4.active{
      display: block;
   }
   .hide_1>ul,.hide_2>ul,.hide_3>ul,.hide_4>ul{
      width:1200px;
      height:40px;
      background-color: #00B0FF;
   }
   .li_1{
      float: left;
      width:180px;
      height:40px;
      text-align: center;
      line-height: 40px;
   }
   .li_1 input{
      height:23px;
   }
   .li_1 i{
      display: inline-block;
      width:20px;
      height:20px;
      background-position:-22px -63px;
      position: relative;
      top:-35px;
      left:65px;
   }
   .li_2{
      float:left;
      width:105px;
      height:40px;
      text-align: center;
      line-height: 40px;
      margin-right: 20px;
   }
   .li_2 a{
      color:#fff;
      font-size: 14px;
   }
   .li_3,.li_3_2,.li_3_4{
      float: left;
   }
   .li_3 a{
      display:inline-block;
      width:24px;
      height:40px;
      line-height: 40px;
      font-weight: bold;
      color: black;
   }
   .li_3 a.active{
      color:white;
   }
   .li_3 a:hover{
      color:#f00;
   }
   .li_3_2 a,.li_3_4 a{
      display:inline-block;
      width:130px;
      height:40px;
      line-height: 40px;
      font-weight: bold;
      color: white;
      font-size: 14px;
      position: relative;
      right:-730px;
   }
   .li_3_4 a{right:-920px}
   .li_4{
      float:right;
      width:40px;
      height:40px;
      text-align: center;
      line-height: 40px;
      font-size:24px;
      color:white;
      font-weight: bold;
      cursor: pointer;
   }
   .hide_content{
      display: flex;
   }
   .hide_content>div:first-child{
      width:38px;
      height:158px;
   }
   .hide_content>div:first-child>div{
      width:38px;
      height:75px;
      border:2px solid #00b0ff;
      font-size: 14px;
      text-align: center;
      cursor: pointer;
   }
   .hide_content>div:first-child>div.active{
      color:white;
      background-color: #00B0FF;
   }  
   .hide_content>div:last-child{
      width:1160px;
      height:145px;
   }
   .hide_content>div:last-child div{
      display: none
   }
   .hide_content>div:last-child div.active{
      display: block;
   }
   .content li{
      float: left;
      width:106px;
      height:40px;
      line-height: 40px;
      margin:5px 0 0 5px;
      font-size: 14px;
   }
   .content li i{
      display: inline-block;
      width:10px;
      height:10px;
      background-position: -78px -26px;
      margin-right: 5px;
   }
</style>