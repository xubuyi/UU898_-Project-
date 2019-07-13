


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />  
   <title>用户登录－悠悠网络游戏服务网 专业、快捷、安全的网络游戏交易平台</title>
    <link rel="stylesheet" href="/login/css/index_zccb1d45v.css" />
    <link rel="stylesheet" href="/login/css/common_zccb1d45v.css" />
    <script src="/login/js/jquery_zccb1d45v.js"></script>
    <script src="/login/js/common_zccb1d45v.js"></script>

    
    <meta name="renderer" content="webkit" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

    <script type="text/javascript">
        $(function(){
	        $("ul.rgsm_tit li").click(function(){
		        $(this).addClass("rgsm_selected").siblings().removeClass("rgsm_selected");
	        });
        });
    </script>
</head>

<body>


    <!--头部-->
    <div class="top">
        <ul class="top_logo">
            <li><a href="//www.uu898.com"><img src="/login/images/dlzc_logo.png" alt="logo" width="240" height="100" /></a></li>
                <li><p>欢迎登录</p></li>


          </ul>

        <ul class="top_right black">
            <li><a href="//service.uu898.com/">客服中心</a></li>
            <li><a href="//www.uu898.com">UU898首页</a></li>
        </ul>
    </div>
    <div style="clear:both;"></div>
    


<!--中间部分-->
<div class="middle">
    <div class="middle_bg">
        <div class="denglu_kd clearfix">
            <!--登录-->
            <div class="denglu ">
                <!--   冒险岛2宣传页跳转 -->
                <!--<a href="//www.uu898.com/Activities/mxd2/index.aspx" target="_blank" class="mxdClick">&nbsp;&nbsp;  </a>-->
                <!--<style>
                    .denglu{position: relative;}
                    .mxdClick{position: absolute;z-index:2;width: 700px;height: 450px;top: 0;left: -700px;}
                </style>-->
                <ul class="denglu_tit">
                    <h3>用户登录</h3>
                </ul>
                <div style="clear:both;"></div>
                <div class="denglu_info">
                    <p class="gray">还没有UU898账号？<span class="Blue f18"><a href="/login/Register/Phone/" >7秒注册</a></span></p>

                    <!--用户名-->
                    <ul class="denglu_list">
                        <li class="biank">
                            <label class="label_01"><img src="/login/images/dlzc_01.png" alt="用户名" /></label>
                            <input id="txtUserID" name="UserName" type="text" class="input_01" placeholder="用户名/手机/邮箱" />
                        </li>
                        <!--<p class="gray">请输入用户名手机号</p>-->
                    </ul>
                    <div style="clear:both;"></div>

                    <!--密码-->
                    <ul class="denglu_list">
                        <li class="biank">
                            <label class="label_01"><img src="/login/images/dlzc_02.png" alt="密码" /></label>
                            <input id="txtPassword" name="PassWord" type="password" class="input_01" placeholder="请输入密码" />
                        </li>
                    </ul>
                    <div style="clear:both;"></div>

                    <!--验证码-->
                    <ul class="denglu_list" id="div_code">
                        <li>
                            <input id="txtCheckCode" name="Code" type="text" class="input_02" placeholder="验证码" maxlength="4" />
                            <span style="position: absolute; top: 392px; left: 981px;">
                                <img alt="" id="checkImg" src="">
                            </span>
                            <label class="label_02" style="width:74px;margin-left:0px"><img alt="验证码" id="chkImg" /></label>
                            <label class="label_03">看不清？<span class="Blue"><a style="cursor:pointer" id="btncode">换一张</a></span></label>
                        </li>
                    </ul>
                    <span style="color:red;" id="errmsg"></span>
                    <div style="clear:both;"></div>

                    <!--立即登录-->
                    <ul class="ljdl">
                        <li><input type="submit" class="button_01" id="btn_login" value="立即登录" /></li>
                        <li>
                            <p><input style="margin-left:0px;" type="checkbox" class="checkbox_01" name="AutoLogin" id="chkAutoLogin" /><label for="chkAutoLogin">自动登录</label></p>
							<p class="Blue" style="float:right;"><a href="/login/ForgetAccount/" >忘记账号？</a></p>
                            <p class="Blue" style="float:right;"><a href="/login/RefindPwd/" >忘记密码？</a></p>
                        </li>
                        <div style="clear:both;"></div>

                        <div class="tishi" style="display:none">公共场合不建议自动登录，以防账号丢失</div>
                    </ul>
                </div>
                <div style="clear:both;"></div>

                <!--第三方登录-->
                <ul class="dsfdl">
                    <li class="Blue">使用第三方登录</li>
                    <li><a onclick="QQLogin();return false;" style="cursor:pointer"><img src="/login/images/dlzc_qq.png" alt="QQ" /></a></li>
                    <li><a href="https://api.weibo.com/oauth2/authorize?client_id=1256572866&response_type=code&redirect_uri=http://user.uu898.com/login/PartnerLogin/?type=weibo"><img src="/login/images/dlzc_sina.png" alt="新浪微博" /></a></li>
                    <li><a onclick="WXLogin();return false;" style="cursor:pointer"><img src="/login/images/dlzc_wx.png" alt="微信" /></a></li>
                    <li><a href="//user.uu898.com/ZhifubaoLogin.aspx" onfocus="this.blur();"><img src="/login/images/dlzc_zfb.png" alt="支付宝" /></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>

<input type="hidden" id="hid_code" value="0" />
<input type="hidden" id="hid_model" />

 
<!--底部-->
<div class="bottom">
        <div class="bottom_kd">
            <p>郑州市易晟信息技术有限公司 公司地址：河南省郑州市高新区科学大道53号中原广告产业园3号楼18层</p>
            <p><a href="//html.uu898.com/images/qywz_31.jpg?ver20190520" target="_blank">豫网文(2019)0809-026号</a>&nbsp;&nbsp;&nbsp;&nbsp;ICP证：<a href="//html.uu898.com/images/qywz_36.jpg?ver20190520" target="_blank">豫B2-20190069-1</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.beian.miit.gov.cn/" target="_blank"></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=41019702002074" target="_blank"><img src="//images.uu898.com/images/b.png">豫公网安备41019702002065号</a></p>
            <p>Copyright Reserved ©2008-2021 悠悠游戏服务网(www.uu898.com)　版权所有：郑州市易晟信息技术有限公司</p>
        </div>
    </div>


    <div style="clear:both;"></div>

    <!--底部-->
    

    
    <script type="text/javascript" src="//imglist.img898.com/baidu/www.js"></script>
    <script src="/login/js/jquery.md5.js"></script>
    

    <script type="text/javascript">
        $(function () {
            var _vcode = $("#hid_code").val();
            if (_vcode == "1") {
                $("#div_code").show();
                reloadCheckCode();
            } else {
                $("#div_code").hide();
            }

            $("#txtCheckCode").bind("input propertychange", function () {
                var txtCode = $("#txtCheckCode").val();
                if (txtCode.length == 4) {
                    $.get("/ashx/CheckUserLoginCode.ashx?action=checkCodeLogin", "&codeVal=" + $(this).val(), function (data) {
                        if (data == 1) {
                            $("#errmsg").text("");
                        } else {
                            $("#errmsg").text("验证码错误");
                        }
                    });
                } else if (txtCode.length > 4) {
                    $("#txtCheckCode").val($("#txtCheckCode").val().substr(0, 4));
                }
            });

            $("#chkAutoLogin").bind("click", function () {
                if (this.checked)
                    $(".tishi").show();
                else
                    $(".tishi").hide();
            })

            $("#btn_login").on("click", function () {
                ValidateAndLogin();
            })

            $("#chkImg,#btncode").on("click", function () {
                reloadCheckCode();
            })

            $('#txtUserID,#txtPassword,#txtCheckCode').bind('keyup', function (event) {
                if (event.keyCode == "13") {
                    ValidateAndLogin();
                }
            });
        });

        function ValidateAndLogin() {
            var _vcode = $("#hid_code").val();
            var _uname = $("#txtUserID").val();
            var _pwd = $("#txtPassword").val();
            var _code = "";

            if (_uname == "") {
                $("#errmsg").text("请输入用户名");
                return false;
            }

            if (_pwd == "") {
                $("#errmsg").text("请输入密码");
                return false;
            }

            if (_vcode == "1") {
                _code = $("#txtCheckCode").val();
                if (_code == "") {
                    $("#errmsg").text("请输入验证码");
                    return false;
                }
            }

            myReplace($("#txtUserID"));
            myReplace($("#txtPassword"));

            AjaxLogin(_uname, _pwd, _code);
        }

        function AjaxLogin(uname, pwd, code) {
            $("#btn_login").attr("disabled", true);
            var modal = $("#hid_model").val();

            var autologin = 0;
            if ($("#chkAutoLogin").checked)
                autologin = 1;

           // $.post("/login/Login/GetPwd", { value: pwd }, function (respdata) {
            var data = { UserName: uname, PassWord: $.md5(pwd).toUpperCase(), Code: code, Modal: modal, AutoLogin: autologin };
                $.post("/login/Login/LoginAjax", data, function (resp) {
                    $("#btn_login").attr("disabled", false);

                    var reg = /^[0-9]*$/;
                    if (pwd.length <= 9 && reg.test(pwd)) {
                        $("#errmsg").text("您的密码设置的过于简单，为了您帐号的安全，请修改您的密码!");
                        window.top.location = "/ReFindPassword/ModifyUserPwd.aspx";
                    }
                    else
						if (resp.RedUrl) {
							// 智能化推荐写入浏览记录
							recommend(resp.RedUrl)
                            //window.top.location = resp.RedUrl;
                        } else {
                            if (resp.ErrCode < 0) {
                                $("#errmsg").text(resp.ErrMsg);
                                if (resp.NeedCode) {
                                    $("#hid_code").val(1);
                                    $("#div_code").show();
                                    reloadCheckCode();
                                } else {
                                    $("#hid_code").val(0);
                                    $("#div_code").hide();
                                }
                            }
                        }
              //  })
            })
        }

        function QQLogin() {
            var href = "https://graph.qq.com/oauth2.0/authorize?response_type=code&client_id=100302186&scope=get_user_info&redirect_uri=http%3A%2F%2Fuser.uu898.com%2Flogin%2FpartnerLogin%3Ftype%3Dqq";
            var state = Math.round(Math.random() * 10000);
            window.open(href + "&state=" + state);
            return false;
        }

        function WXLogin() {
            var href = "https://open.weixin.qq.com/connect/qrconnect?appid=wx7ab366fa5bd5f174&redirect_uri=http%3a%2f%2fuser.uu898.com%2Flogin%2Fpartnerlogin%3Ftype%3Dwx&response_type=code&scope=snsapi_login";
            var state = Math.round(Math.random() * 10000);
            window.open(href + "&state=" + state + "#wechat_redirect");
            return false;
        }

        function myReplace(obj) {
            var regDaYu = new RegExp("<", "g");
            var regXiaoYu = new RegExp(">", "g");
            var _tmpval = obj.val().replace(regDaYu, "").replace(regXiaoYu, "");
            obj.val(_tmpval);
        }

        function reloadCheckCode() {
            $("#chkImg").attr("src", "/checkCode.aspx?num=1&s=16/checkCode.aspx?num=1&s=" + Math.round(Math.random() * 100));
            $("#txtCheckCode").val('');
		}

		function recommend(url) {
			$.ajax(
				{
					type: "GET",
					url: "//user.uu898.com/inc/Recommend.ashx?opt=get",
					dataType: "json",
					success: function (res) {
						window.top.location = url;
					}
				}
			);
		}
    </script>
    
    <script type="text/javascript">
        NTKF_PARAM = {
            siteid: "kf_9725",
            settingid: "kf_9725_1421659802125",
            uid: "",
            uname: ""
        };

        function NtalkerKefu(type) {
            try { NTKF.im_openInPageChat(); }
            catch (er) { }
        }
    </script>
    <script type="text/javascript" src="//s.img898.com/js/NTalker.js" charset="utf-8"></script>
</body>
</html>
