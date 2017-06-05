<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
	<title>校园自行车管理系统</title> 
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport"content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/image/favicon.ico" type="image/x-icon">
	<link type="text/css" href="${pageContext.request.contextPath}/css/login2.css" rel="stylesheet" />
	<script src="//cdn.bootcss.com/jquery/3.1.1/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/loginForm.js"></script>
</head>
<body>
<h1>校园自行车后台登录<sup>V2017</sup></h1>

<div class="login" style="margin-top:30px;">
    <div class="qlogin" id="qlogin" >
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
</div>
<div class="jianyi">Copyright © 2017 校园自行车(支持最新版的360浏览器极速模式、Chrome浏览器、Firefox浏览器) 苏ICP备12345678号-1
</div>
</body>
</html>