<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                <strong>校园自行车管理系统</strong>
            </div>
            <div class="contact">
                <div class="prompt">
                    <span id="today"></span>
                </div>
                <div id="headerMenu" class="headerMenu">
                    <ul>
                        <li><a href="#" class="easyui-linkbutton" data-options="plain:true" onclick="exit()">安全退出</a></li>
                        <li><a href="#" class="easyui-menubutton" data-options="menu:'#mm2',plain:true" >您好，趙本山</a></li>
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
</body>
</html>