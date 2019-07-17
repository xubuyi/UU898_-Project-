<template>
   <div>
      <div class="white">
         <table></table>
         <div>
            <div>
               <ul>
                  <li v-for="(elem,i) of List" :key="i">
                     <span>{{elem}}</span>
                     <ul>
                        <li v-for="(elem,j) of list0[i]" :key="j"><a href="#">{{elem}}</a></li>
                     </ul>
                  </li>
               </ul>
            </div>
            <div>
               <p>0371-56522898</p>
               <p>（无外拨功能）</p>
               <a href="#"><i></i>&nbsp;&nbsp;<span>24小时在线客服</span></a>
            </div>
         </div>
      </div>
      <div class="black">
         <table></table>
         <div>
            <div class="left">
               <ul>
                  <li v-for="(elem,i) of list1" :key="i"><a href="#">{{elem}}</a></li>
               </ul>
               <p>
                  郑州市易晟信息技术有限公司 公司地址：郑州高新技术产业开发区科学大道53号2号楼18层282号-293号
               </p>
               <p>
                  <a href="#">豫网文(2019)0809-026号</a>    
                  域名备案：<a href="#">豫B2-20190069-1</a>     
                  ICP证:  <a href="#">豫B2-20190069-1 </a> 
                  <a href="#"><i></i>豫公网安备41019702002065号</a> 
               </p>
               <p>
                  Copyright Reserved ©2008-2021 悠悠游戏服务网
                  <a href="#">WWW.UU898.COM </a> 
                  版权所有：郑州市易晟信息技术有限公司
               </p>
               <ul>
                  <li><a href="#" class="pic"></a></li>
                  <li><a href="#" class="pic"></a></li>
                  <li><a href="#" class="pic"></a></li>
                  <li><a href="#" class="pic"></a></li>
                  <li><a href="#" class="pic"></a></li>
               </ul>
            </div>
            <div class="right">
               <ul>
                  <li> 
                     <p class="pic"></p>
                     <span>新浪微博</span>
                  </li>
                  <li> 
                     <p class="pic"></p>
                     <span>官方微信</span>
                  </li>
               </ul>
            </div>
         </div>
      </div>
   </div>
</template>

<script>
   export default {
      data(){
         return{
            List:["新手入门","项目购买","出售项目","充值方式","客服中心","了解UU898"],
            list0:[
               ["如何购买商品","如何出售商品","如何搜索商品","如何发布求购"],
               ["发布求购","寄售信息","担保信息","购买点卡","购买账号"],
               ["发售寄售信息","发售担保信息","发售账号信息","搜索求购信息"],
               ["网银充值","支付宝充值","财付通充值","银行柜台充值","海外充值"],
               ["帮助中心","常见问题","联系我们","验证中心"],
               ["关于UU898","免责声明","隐私保护","公司荣誉","商务合作"],
            ],
            list1:["关于我们","联系我们","咨询建议","免责声明","诚聘人才","客服中心","商务合作","家长监护"]
         }
      }
   }
</script>

<style lang="scss" scoped>
   body,div,p,ul,li{margin:0;padding:0}
   a{text-decoration: none;color:#666;}
   .pic{
      background: url("../../img/index/footer.png") no-repeat;
   }
   ul{list-style: none;}
   .white,.black{
      width:100%;
      height:216px;
   }
   .white>div,.black>div{
      width:1200px;
      height:160px;
      margin:auto;
      margin-top: 30px;
   }
   .black{
      background-color: black;
   }
   .white>div div:first-child,.black>div div:first-child{
      float: left;
      width:75%;
      height:160px;
      border-right:1px solid #dddddd
   }
   .black>div div:first-child{
      border:0;
   }
   .white>div div:first-child>ul{
      display: flex;
      justify-content: space-between;
      padding-right:80px;
      color: #222;
      font-size: 15px;
   }
   .white>div div:first-child>ul ul li{
      margin: 7px 0;
   }
   .white>div div:first-child>ul a{
      font-size: 12px;
      color:#888888;
   }
   .white>div div:first-child>ul a:hover{
      color:#00b0ff
   }
   .white>div div:last-child,.black>div div:last-child{
      float:right;
      width:24%;
      height:160px;
      text-align: center;
      line-height: 40px;
   }
   .white>div div:last-child p:first-child{
      font-size: 20px;
      color:#f40;
   }
   .white>div div:last-child p:nth-child(2){
      font-size: 12px;
      color:#888888;
   }
   .white>div div:last-child a{
      display: inline-block;
      width:133px;
      height:25px;
      border:1px solid #00b0ff;
      line-height: 25px;
      font-size: 12px;
      color: #00b0ff;
   }
   .white>div div:last-child a i{
      background: url("../../img/index/footer_lxkf.png") no-repeat;
      display: inline-block;
      width:15px;
      height:15px;
      vertical-align: middle;
   }
   .white>div div:last-child a:hover{
      background-color: #00b0ff;
      color:white;
   }
   .white>div div:last-child a:hover i{
      background-position: 0 -15px;
   }
   .white>div div:last-child a img{
      vertical-align:-18px;
   }
   .left>ul:first-child>li{
      float: left;
      width:70px;
      height:20px;
      border-right: 1px solid #AAAAAA;
      margin-right: 10px;
      margin-bottom: 20px;
      font-size: 14px;
   }
   .left>ul:first-child>li a{color:#AAAAAA}
   .left>ul:first-child>li a:hover{color:#E0DEDE}
   .left p{
      font-size: 12px;
      clear: both;
      color:#AAAAAA;
      margin:10px 0;
   }
   .left p a{
      color:#AAAAAA
   }
   .left p a:hover{
      color:#E0DEDE;
   }
   .left p i{
      display: inline-block;
      width:21px;
      height:21px;
      background: url("../../img/login/b.png");
   }
   .left>ul:last-child li{
      float: left;
      margin-right: 15px;
   }
   .left>ul:last-child li a{
      display: inline-block;
      width:84px;
      height:30px;
   }
   .left>ul:last-child li:nth-child(2) a{
      background-position:-93px 0;
   }
   .left>ul:last-child li:nth-child(3) a{
      background-position:-186px 0;
   }
   .left>ul:last-child li:nth-child(4) a{
      background-position:0 -35px;
   }
   .left>ul:last-child li:last-child a{
      background-position:-186px -35px;
   }
   .right>ul li{
      float:left;
      margin-right: 20px;
   }
   .right>ul li p{
      width:108px;
      height:108px;
      background-position: 0 -92px;
   }
   .right>ul li:first-child p{
      background-position: -120px -92px;
   }
   .right>ul li span{
      display: inline-block;
      width:108px;
      height:25px;
      background-color: white;
      line-height: 25px;
      font-size: 12px;
      position:relative;
      top:-10px;
   }
</style>