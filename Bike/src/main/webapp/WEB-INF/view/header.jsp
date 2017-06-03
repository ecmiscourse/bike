<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.min.js"></script>
<title></title>
</head>
<body>
    <div class="header1">
        <div class="header2">
            <div class="logo">
                <strong>码上放心购后台管理系统</strong>
            </div>
            <div class="contact">
                <div class="prompt">
                    <span id="today"></span>
                </div>
                <div id="headerMenu" class="headerMenu">
                    <ul>
                        <li><a href="#" class="easyui-linkbutton" data-options="plain:true" onclick="exit()">安全退出</a></li>
                        <li><a href="#" class="easyui-menubutton" data-options="menu:'#mm2',plain:true" >您好，<s:property value="#session.name"/></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div id="mm2">
        <div onclick="person_information()"><a id="mm25">个人信息</a></div>
        <div onclick="modify_password()"><a id="mm23">修改密码</a></div>
    </div>
    <div id="win" data-options="collapsible:false,minimizable:false,maximizable:false,modal:true"></div>
    <script type="text/javascript">
    
		$(document).ready( function(){
			$("#today").text("");
			// 指定向JSONExample发送请求，将id为form1的表单所包含的表单控件转换为请求参数
			$.post("${pageContext.request.contextPath}/chinaDate" , function(data , statusText)
			{
				for(var propName in data)
				{
					$("#today").append(data[propName]);
				}
			},
				// 指定服务器响应为JSON数据
				"json");
		});
		//退出
		function exit(){
			$.messager.confirm('确认','您确认想要安全退出吗？',function(r){    
			    if (r){
					var url ='${pageContext.request.contextPath}/exitAction_exit.action';
					  $('<form method="post" action="' + url + '"></form>').appendTo('body').submit().remove();
			    }    
			});
		};
		//个人信息
		function person_information(){
			$('#win').window({
				title:"个人信息",
				width:300,
				height:400,
				content:'<iframe src="${pageContext.request.contextPath}/base/person_information" frameborder="0" width="100%" height="100%" />'
			});
		};
		//修改密码
		function modify_password(){
			$('#win').window({
				title:"修改密码",
				width:300,
				height:250,
				content:'<iframe src="${pageContext.request.contextPath}/base/modify_password" frameborder="0" width="100%" height="100%" />'
			});
		};
	</script>
</body>
</html>