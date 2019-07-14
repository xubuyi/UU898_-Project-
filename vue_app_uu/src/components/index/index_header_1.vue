<template>
  <div>
    <div class="top">
      <ul>
        <li>您好，欢迎来到UU898!</li>
        <li><a href="#">请登录</a> 或 <a href="#">免费注册 </a> </li>
        <li><a href="#" class="pic"></a></li>
      </ul>
      <ul>
        
        <li>
          <a href="#">官方微博</a>
          <i class="pic"></i>
          <span class="pic"></span>
          <div class="blog">
            <ul>
              <li><em class="pic sina"></em><a href="#">新浪微博</a></li>
              <li><em class="pic tx"></em><a href="#">腾讯微博</a></li>
            </ul>
          </div>
        </li>
        <li>
          <a href="#">客服中心</a>
          <i class="pic"></i> 
          <span class="pic"></span>
          <div class="kf_center">
            <ul>
              <li><a href="#">我要咨询</a></li>
              <li><a href="#">我要投诉</a></li>
              <li><a href="#">安全中心</a></li>
              <li><a href="#">帮助中心</a></li>
            </ul>
          </div>
        </li>
        <li>
          <a href="#" class="cz">充值</a>
          <a href="#" class="zx">个人中心</a>
          <span class="pic"></span>
        </li>
        <li>
          <a href="#">卖家中心</a>
          <i class="pic"></i> 
          <span class="pic"></span>
          <div class="sale_center">
            <ul>
              <li><a href="#">出售中的商品</a></li>
              <li><a href="#">我要卖</a></li>
            </ul>
          </div>
        </li>
        <li>
          <a href="#">买家中心</a>
          <i class="pic"></i>
          <span class="pic"></span>
          <div class="buy_center">
            <ul>
              <li><a href="#">我购买的订单</a></li>
              <li><a href="#">我要买</a></li>
            </ul>
          </div>
        </li>
        <li><a href="#">我的订单</a><span class="pic"></span></li>
        <li>
          <span class="pic phone"></span>
          <a href="#"> 关注UU898</a>
          <span class="pic"></span>
          <div class="code">
            <img src="../../img/index/uu898weixin.jpg" alt="">
          </div>
        </li> 
      </ul>
    </div>
  </div>
</template>

<script>
// 
  export default {
    
  }
</script>

<style lang="scss" scoped>
  body,div,p,ul,li{margin:0;padding:0}
  a{text-decoration: none;color:#666;}
  .pic{
    background: url("../../img/index/header.png") no-repeat; 
  }
  .top{
    position: relative;
    height:34px;
    background-color: #f7f7f7;
    border-bottom: 1px solid #E7E7E7;
    line-height: 34px;
    font-size: 12px;
    color: #666;
    clear: both;
  }
  .top>ul:first-child li{
    float: left;
  }
  .top>ul:last-child li{
    float: right;
  }
  .top>ul{
    list-style: none;
    margin:0 60px;
    justify-content: space-around;
  }
  .top>ul>li{
    margin-left:10px;
  }
  .top>ul:first-child a:hover{
    color: #00b1ff;
    text-decoration:underline;
  }
  .top>ul>li>a.pic{
    display: inline-block;
    width:68px;
    height:18px;
    background-position:-3px -3px;
    margin-top: 5px;
  }
  .top>ul>li>span.pic,.top>ul>li>span.pic.phone,.top>ul>li>i.pic{
    display: inline-block;
    width:7px;
    height:20px;
    background-position:-7px -138px;
    vertical-align: middle;
  }
  .top>ul>li>span.pic{
    margin-left: 8px;
  }
  .top>ul>li>span.pic.phone{
    width:20px;
    height:20px;
    background-position:-71px -3px;
  }
  .top>ul>li>i.pic{
    width:15px;
    height:20px;
    background-position:-73px -40px;
  }
  .cz,.zx{
    display: inline-block;
    width:50px;
    height:18px;
    background-color: #00b1ff;
    color:white;
    line-height: 18px;
    text-align: center;
    border-radius: 3px;
    
  }
  .zx{
    width:60px;
    background-color: #F7536E;
    margin-left: 20px;
  }
  .cz:hover{
    background-color: #179DD8;
  }
  .zx:hover{
    background-color: #F51F43;
  }
  .code{
    position: absolute;
    left:620px;
    width:100px;
    height:100px;
    display: none;
  }
  .code img{
    width:100%
  }
  .top>ul:last-child li:last-child:hover .code{
    display: block;
  }
  .top>ul:last-child li:nth-child(5):hover .buy_center{
    display: block;
  }
  .top>ul:last-child li:nth-child(4):hover .sale_center{
    display: block;
  }
  .top>ul:last-child li:nth-child(2):hover .kf_center{
    display: block;
  }
  .top>ul:last-child li:nth-child(1):hover .blog{
    display: block;
  }
  .top>ul:last-child li ul li:hover{
    background-color:#B4B4B4;
  }
  .buy_center,.sale_center,.kf_center,.blog{
    width:90px;
    border:1px solid #E7E7E7;
    background-color: #f7f7f7;
    position: absolute;
    right:480px;
    display: none;
  }
  .blog{
    right:60px;
  }
  .kf_center{
    right:150px;
  }
  .buy_center>ul,.sale_center>ul,.kf_center>ul,.blog>ul{
    list-style: none;
  }
  /***/
  .buy_center>ul li,.sale_center>ul li,.kf_center>ul li,.blog>ul li{
    width:90px;
    height:35px;
    text-align:center;
    line-height: 35px;
  }
  .sale_center{
    right:393px;
  }
  em{
    display: inline-block;
    width:20px;
    height:20px;
  }
  em.sina{
    background-position:-55px -59px; 
  }
  em.tx{
    background-position:-35px -39px;
  }
</style>