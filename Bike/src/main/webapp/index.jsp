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
	<script>
		$(function(){
			$('#switch_qlogin').click(function(){
				$('#switch_login').removeClass("switch_btn_focus").addClass('switch_btn');
				$('#switch_qlogin').removeClass("switch_btn").addClass('switch_btn_focus');
				$('#switch_bottom').animate({left:'0px',width:'70px'});
				$('#qlogin').css('display','none');
				$('#web_qr_login').css('display','block');
				
			});
			$('#switch_login').click(function(){
				
				$('#switch_login').removeClass("switch_btn").addClass('switch_btn_focus');
				$('#switch_qlogin').removeClass("switch_btn_focus").addClass('switch_btn');
				$('#switch_bottom').animate({left:'154px',width:'70px'});
				
				$('#qlogin').css('display','block');
				$('#web_qr_login').css('display','none');
			});
			if(getParam("a")=='0')
			{
				$('#switch_login').trigger('click');
			}
			//回车登录
			$("body").keydown(function() {
			    if (event.keyCode == "13") {//keyCode=13是回车键
			    	$("#btn input").click();
			    }
			});
		});
			
		function logintab(){
			scrollTo(0);
			$('#switch_qlogin').removeClass("switch_btn_focus").addClass('switch_btn');
			$('#switch_login').removeClass("switch_btn").addClass('switch_btn_focus');
			$('#switch_bottom').animate({left:'154px',width:'96px'});
			$('#qlogin').css('display','none');
			$('#web_qr_login').css('display','block');
			
		}
	
	
		//根据参数名获得该参数 pname等于想要的参数名 
		function getParam(pname) { 
		    var params = location.search.substr(1); // 获取参数 平且去掉？ 
		    var ArrParam = params.split('&'); 
		    if (ArrParam.length == 1) { 
		        //只有一个参数的情况 
		        return params.split('=')[1]; 
		    } 
		    else { 
		         //多个参数参数的情况 
		        for (var i = 0; i < ArrParam.length; i++) { 
		            if (ArrParam[i].split('=')[0] == pname) { 
		                return ArrParam[i].split('=')[1]; 
		            } 
		        } 
		    } 
		}  
	
	
		$(document).ready(function() {
	
	//		if(window.top.$("#divHeader").length>0){
	//			window.top.location.href="/xzyc/login";
	//		}
	//		window.history.pushState({},"徐州烟草后台管理系统","/xzyc/login");
			$('#reg').click(function() {
	
				if ($('#user').val() == "") {
					$('#user').focus().css({
						border: "1px solid red",
						boxShadow: "0 0 2px red"
					});
					return false;
				}
	
				if ($('#passwd').val() == "") {
					$('#passwd').focus().css({
						border: "1px solid red",
						boxShadow: "0 0 2px red"
					});
					return false;
				}

				/** 提交表单 */
				$("#loginForm").submit();
// 				var url ='${pageContext.request.contextPath}/login';
// 				  $('<form method="post" action="' + url + '">'+
// 						  '<input type="hidden"  name="name"  value="'+$("#user").val() +'"/>'+
// 						  '<input type="hidden"  name="password"  value="'+$("#passwd").val()+'"/>'+
// 				  '</form>').appendTo('body').submit().remove();
			});
		});
	</script>
</head>
<body>
<h1>校园自行车后台登录<sup>V2017</sup></h1>

<div class="login" style="margin-top:30px;">
    <div class="qlogin" id="qlogin" >
		<div class="web_login">
			<form name="form2" id="loginForm"  action="login" accept-charset="utf-8" method="post">
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