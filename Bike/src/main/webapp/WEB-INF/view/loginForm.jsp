<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>真假酒水后台系统</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery1.9.0.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script>
<!-- 		<script src="https://res.wx.qq.com/connect/zh_CN/htmledition/js/wxLogin.js"></script> -->
		<style type="text/css">
			body{ background:#0066A8 url(img/login_bg.png) no-repeat center 0px;}
			.tit{ margin:auto; margin-top:170px; text-align:center; width:350px; padding-bottom:20px;}
			.login-wrap{ width:220px; padding:30px 50px 0 330px; height:220px; background:#fff url(img/20150212154319.jpg) no-repeat 30px 40px; margin:auto; overflow: hidden;}
			.login_input{ display:block;width:210px;}
			.login_user{ background: url(img/input_icon_1.png) no-repeat 200px center; font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif}
			.login_password{ background: url(img/input_icon_2.png) no-repeat 200px center; font-family:"Courier New", Courier, monospace}
			.btn-login{ background:#40454B; box-shadow:none; text-shadow:none; color:#fff; border:none;height:35px; line-height:26px; font-size:14px; font-family:"microsoft yahei";}
			.btn-login:hover{ background:#333; color:#fff;}
			.copyright{ margin:auto; margin-top:10px; text-align:center; width:370px; color:#CCC}
			@media (max-height: 700px) {.tit{ margin:auto; margin-top:100px; }}
			@media (max-height: 500px) {.tit{ margin:auto; margin-top:50px; }}
		</style>
		<script type="text/javascript">
// 			$(document).ready(function() {
// 				window.top.location.href="${pageContext.request.contextPath}/login";
// 				var url ='${pageContext.request.contextPath}/main';
// 		  		$('<form method="post" action="' + url + '"></form>').appendTo('body').submit().remove();
// 			});
			$(function(){
				var dataParams = {
					appid:'wx6b240b65dd778c2c',
					redirect_uri:encodeURI("https://www.52zjjs.com/scanLogin"),
					response_type:'code',
					scope:'snsapi_login',
					state:'14635431jgfv'
			    };
				var params = $.param(dataParams);
				var url = 'https://open.weixin.qq.com/connect/qrconnect?' + params;
				$('#win').window({
					left:'50%',
					title:"",
					width:400,
					height:800,
					content:"<iframe src='" + url + "' frameborder='0' width='100%' height='100%' />"
				});
				
				//账号密码输入
				if( $("#personId").val() == null || $("#personId").val() == "" ){
					$("#personId").focus();
				}else if( $("#password").val() == null || $("#password").val() == "" ){
					$("#password").focus();
				}
				//提交
				$("#btn").click(function(){
					if( $("#personId").val() == null || $("#personId").val() == "" ){
						$("#personId").focus();			
					}else if( $("#password").val() == null || $("#password").val() == "" ){
						$("#password").focus();
					}else{
						$('#formlogin').form('submit', {
							url:'${pageContext.request.contextPath}/person/person_login.action',
							success: function(result){
								var data = eval('(' + result + ')');
								console.log(data);
								if( data == "success" ){
									var url ='${pageContext.request.contextPath}/main';
									  $('<form method="post" action="' + url + '"></form>').appendTo('body').submit().remove();
								}else if( data == "notExist" ){
									alert("账号错误，请修改后登录!");
									$("#personId").value = "";
									$("#password").value = "";
									$("#personId").focus();
								}else{
									alert("密码错误，请修改后登录!");
									$("#password").value = "";
									$("#password").focus();
								}
							}
						});
					}
				});
			});
		</script>
	</head>

	<body>
		<div class="tit"><img src="img/tit.png" alt="" /></div>
		<form id="formlogin">
			<div class="login-wrap">
				<div id="win"></div>
			  <table width="100%" border="0" cellspacing="0" cellpadding="0">
			    <tr>
			      <td height="25" valign="bottom">用户名：</td>
			    </tr>
			    <tr>
			      <td><input type="text" name="personId" id="personId" class="login_input login_user" /></td>
			    </tr>
			    <tr>
			      <td height="35" valign="bottom">密  码：</td>
			    </tr>
			    <tr>
			      <td><input type="password" name="password" id="password" class="login_input login_password" /></td>
			    </tr>
			    <tr>
			      <td height="60" valign="bottom"><a id="btn" class="btn btn-block btn-login">登录</a></td>
			    </tr>
			   
			  </table>
			</div>
		</form>
		<div class="copyright">建议使用IE8以上版本或谷歌浏览器</div>
	</body>
</html>
