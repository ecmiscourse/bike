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

//	if(window.top.$("#divHeader").length>0){
//		window.top.location.href="/xzyc/login";
//	}
//	window.history.pushState({},"徐州烟草后台管理系统","/xzyc/login");
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
		
		$.ajax({
			type: "POST",
			url:'login',
			data: "personId=" + $("#user").val() + '&password=' + $("#passwd").val(),
			dataType: 'json',
			success: function(result) {
				if( result == "success" ){
					var url ='main';
					  $('<form method="post" action="' + url + '"></form>').appendTo('body').submit().remove();
				}else if( result == "notExist" ){
					alert("用户不存在，请重新输入!");
					$("#user").value = "";
					$("#passwd").value = "";
					$("#user").focus();
				}else if( result == "error" ){
					window.location.href="/error";
				}else if( result == "modifyPass" ){
					window.location.href="/xzyc/modifyPass";
				}else{
					alert("密码错误，请修改后登录!");
					$("#passwd").value = "";
					$("#passwd").focus();
				}
				
			}
		});

	});
	

});