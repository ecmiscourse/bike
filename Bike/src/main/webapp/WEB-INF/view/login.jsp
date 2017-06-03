<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
	<title>真假酒水后台系统</title> 
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport"content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/image/favicon.ico" type="image/x-icon">
	<link type="text/css" href="${pageContext.request.contextPath}/css/login2.css" rel="stylesheet" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery1.9.0.min.js"></script>
	<script src="https://res.wx.qq.com/connect/zh_CN/htmledition/js/wxLogin.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/loginForm.js"></script>
	<script type="text/javascript">
		function getSessionId(){
			return "${pageContext.session.id}";
		}
	</script>
</head>
<body>
<h1>真假酒水后台登录<sup>V2017</sup></h1>

<div class="login" style="margin-top:50px;">
    
    <div class="header">
        <div class="switch" id="switch"><a class="switch_btn_focus" id="switch_qlogin" href="javascript:void(0);" tabindex="7">扫码登录</a>
			<a class="switch_btn" id="switch_login" href="javascript:void(0);" tabindex="8" style="margin-left:6px">账号登录</a><div class="switch_bottom" id="switch_bottom" style="position: absolute; width: 64px; left: 0px;"></div>
        </div>
    </div>    
    <div class="web_qr_login" id="web_qr_login" style="display: block; height: 440px;">    
        <!--登录-->
		<div id="userCue" class="cue" style="width:282px;margin-left:45px;color:gray">请用微信扫一扫登录</div>
		<div id="qrcode" style="width:350px;height:400px;margin-left:34px;margin-top:0px"></div>
        <!--登录end-->
  </div>

  <!--注册-->
    <div class="qlogin" id="qlogin" style="display: none; ">
		<div class="web_login">
			<form name="form2" id="regUser" accept-charset="utf-8" method="post">
				<ul class="reg_form" id="reg-ul" style="margin-top:25px;margin-right:52px">
					<li>
						<label for="user"  class="input-tips2">账号：</label>
						<div class="inputOuter2">
							<input type="text" id="user" name="name" maxlength="16" class="inputstyle2"/>
						</div>
					</li>
					<li>
					<label for="passwd" class="input-tips2">密码：</label>
						<div class="inputOuter2">
							<input type="password" id="passwd"  name="password" maxlength="16" class="inputstyle2"/>
						</div>
					</li>
					<li>
						<div class="inputArea" id="btn">
							<input type="button" id="reg" style="margin-top:10px;margin-left:85px;width:150px;" class="button_blue" value="登录"/>
						</div>
					</li><div class="cl"></div>
				</ul>
			</form>
		</div>
    </div>
    <!--注册end-->
</div>
<div class="jianyi">Copyright © 2017 真假酒水(支持最新版的360浏览器极速模式、Chrome浏览器、Firefox浏览器) 苏ICP备17004841号-1
</div>
</body></html>