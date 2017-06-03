<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>真假酒水后台系统</title>
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/image/favicon.ico" type="image/x-icon">
	<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style type="text/css">
		.test {
			height: 650px;
			background-color:#ffffff;
			margin-top:20px;
			border-radius:5px;
		}
	</style>
	<script type="text/javascript">
		/* //初始化页面时验证是否记住了密码
		$(document).ready(function() {	
			var msg="${requestScope.errorMessage}";	
			if(msg!=""){
				$.messager.alert("强制下线",msg,'error',function(){
						window.top.location.href="${pageContext.request.contextPath}/login";				
					});
			}
		}); */
		$(function(){
		    history.pushState({},'','/error');
			$('#loginForm').click(function(){
				window.top.location.href="${pageContext.request.contextPath}/login";
			})
		})
	</script>
</head>
<body style="padding-top: 50px;background:#E7E8EB">
	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<div class="col-md-8 col-md-offset-2 col-lg-8 col-lg-offset-2">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><button id="loginForm" type="button" class="btn btn-success navbar-btn" style="">重新登录</button></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
	</div>
	</nav>
	<div class="container-fluid">
		<div class="col-md-8 col-md-offset-2 col-lg-8 col-lg-offset-2 test" 
			style="padding: 20px 30px;">
			
			<div style="margin:0 auto;">
				<div class="page-header">
				  <h1 style="color:#555555;">微信授权登陆失败提示</h1>
				</div>
				<div class="panel panel-info">
				  <div class="panel-heading" style="font-size:20px;">可能导致微信登录失败的原因如下：</div>
				  <div class="panel-body" style="font-size:18px;">
				    <p>1、第一次使用微信扫码登录，微信号尚未在系统内添加，请联系管理人员添加</p>
				    <p>2、微信登录授权失败，请稍后重试</p>
				    <p>3、如果以上建议扔无法解决，请与管理员联系，给您带来的不便我们深感歉意！</p>
				  </div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>