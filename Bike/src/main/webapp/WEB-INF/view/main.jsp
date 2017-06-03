<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/image/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/layout.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/layout.js" charset="gb2312"></script>
<script type="text/javascript">
	$(document).ready(function() {
		window.history.pushState({},"真假酒水后台管理系统","main");
	});
  	$(function(){
  		var role = "${session.roles}";
  		if(role.indexOf("CJGLY")!=-1 || role.indexOf("CJCXRY")!=-1 || role.indexOf("JXSGLY")!=-1 || role.indexOf("JXSCXRY")!=-1 || role.indexOf("XTGLY")!=-1){
		var rows=[];
		var total=0;
		var type = 0;
		$('#date').datebox({
		    onSelect: function(date){
		    	var sum = 0.0;
		 		var a = $('#typeName').css("display");
		 		var dateEnd =  new Date($('#date1').datebox('getValue'));
		 		if(a=="none"){  //如果该控件为隐藏，证明是经销商
		 			type =2;	
			 	}else{
			 		type = $('#type').combobox('getValue');	
			 	};
				$.ajax({ url: "${pageContext.request.contextPath}/redPackageDetails/redPackageDetailsAction_queryReceivedByDate",
					data:{dateStart:date,dateEnd:dateEnd,type:type,sellerSn:$('#sellerSn').val()},success: function(res){
					var obj = eval('(' + res + ')');
					$("#money").textbox('setValue',obj.sum);
					$('#dg').datagrid('load',{
						dateStart:date,
						dateEnd:dateEnd,
						type:type,
						sellerSn:$('#sellerSn').val()
					});										
			      }});
		    }
		});
// 		var date1 = new Date();
// 		var y = date1.getFullYear();
// 		var m = date1.getMonth()+1;
// 		var d = date1.getDate()-1;
		var nowTimestamp = Date.parse(new Date());
		var pastTimestamp = eval(nowTimestamp-86400000);

		var dateState=getLocalTime(new Date(pastTimestamp));
		var dateEnd=getLocalTime(new Date(pastTimestamp));
		
// 		var dateState =  y+'-'+m+'-'+d;	
// 		var dateEnd =  y+'-'+m+'-'+d;	
		$('#date').datebox('setValue',dateState);
		$('#date1').datebox({
		    onSelect: function(date){
		 		var sum = 0.0;
		 		var a = $('#typeName').css("display");
		 		var dateStart =  new Date($('#date').datebox('getValue'));
		 		if(a=="none"){  //如果该控件为隐藏，证明是经销商
		 			type =2;	
			 	}else{
			 		type = $('#type').combobox('getValue');	
			 	};
				$.ajax({ url: "${pageContext.request.contextPath}/redPackageDetails/redPackageDetailsAction_queryReceivedByDate",
					data:{dateStart:dateStart,dateEnd:date,type:type,sellerSn:$('#sellerSn').val()},success: function(res){
					var obj = eval('(' + res + ')');
					$("#money").textbox('setValue',obj.sum);
					$('#dg').datagrid('load',{
						dateStart:dateStart,
						dateEnd:date,
						type:type,
						sellerSn:$('#sellerSn').val()
					});										
			      }});
		    }
		});
		$('#date1').datebox('setValue',dateEnd);
		
		$('#dg').datagrid({
			url: '${pageContext.request.contextPath}/redPackageDetails/redPackageDetailsAction_queryRedPacketReceivedByDate',
			idField: 'id',
            //title:'补充金额',
            toolbar:'#toolbar',
            rownumbers: true,	//显示一个行号列
		    fitColumns:true,	//自动适应列
           	fit:true,			//表格宽高自适应
            nowrap:false,
            checkOnSelect:true,
            striped:true,		//斑马线效果
            loadmsg:'请等待...',	//加载等待时显示
            pagination:true,	//显示分页组件
            pageNumber:1,
            pageSize:10,
            pageList:[10,15,20,25,30],
            onBeforeLoad:function(data){
                /* var sellerSn = $('#sellerSn').val(); */
                var sellerSn = data.sellerSn;
				if(sellerSn==null || sellerSn==""){
					return false;
					}
				else{
					return true;
					}
                },
            
			columns:[[
			          {field:'categoryName',title:'品规',width:70,align:'center'},			          
			          {field:'count',title:'瓶数',width:70,align:'center'},
			          {field:'money',title:'小计',width:70,align:'center'}
			     ]],
				 onDblClickCell: function(){
					$('#dg').datagrid("uncheckAll");
				}
		});
	 	 	var role = "${session.roles}";
	 	 	 	if(role.indexOf("XTGLY")!=-1 ) {
					$('#vender').combobox({    
					 	width:132,    
					    editable:false,
					 	url:'${pageContext.request.contextPath}/seller/seller_queryAllSeller.action',  
					    valueField:'id',    
					    textField:'text',
					    onChange:function(newValue,oldValue){
					    	var dateEnd =  new Date($('#date1').datebox('getValue'));
					    	var dateStart =  new Date($('#date').datebox('getValue'));
					    	var type =  $('#type').combobox('getValue'); 
						    $('#sellerSn').val(newValue);
					    	$('#dg').datagrid('load',{
								sellerSn:newValue,
								type:type,
								dateStart:dateStart,
								dateEnd:dateEnd
						    	});
							$.ajax({ url: "${pageContext.request.contextPath}/redPackageDetails/redPackageDetailsAction_queryReceivedByDate",data:{sellerSn:newValue,dateStart:dateStart,dateEnd:dateEnd,type:type},success: function(res){
								var obj = eval('(' + res + ')');
								$("#money").textbox('setValue',obj.sum);									
						      }}); 
					    },
					    onLoadSuccess:function(data){
							var val = $(this).combobox('getData');  
// 							$(this).combobox('select', val[0]);  
							$(this).combobox('setValue', val[0].id);  
							var dateStart =  new Date($('#date').datebox('getValue'));
							var dateEnd =  new Date($('#date1').datebox('getValue'));
							$('#dg').datagrid('load',{
								sellerSn:val[0].id,
								type:0,
								dateStart:dateStart,
								dateEnd:dateEnd
						    });
							$.ajax({ url: "${pageContext.request.contextPath}/redPackageDetails/redPackageDetailsAction_queryReceivedByDate",data:{sellerSn:val[0].id,dateStart:dateStart,dateEnd:dateEnd,type:0},success: function(res){
								var obj = eval('(' + res + ')');
								$("#money").textbox('setValue',obj.sum);									
						     }}); 
						}
					});
		 			$('#typeName').css("display",""); 
		 			$('#type').combobox({       
		 			    valueField:'id',    
		 			    textField:'text',
					    editable:false,
		 			    data:[{id:0,text:'全部'},{id:1,text:'厂家' },{id:2,text:'经销商' }],
						onChange:function(newValue,oldValue){
					 		var sum = 0.0;
					 		var type = newValue; 
					 		var dateStart =  new Date($('#date').datebox('getValue'));
							var dateEnd =  new Date($('#date1').datebox('getValue'));
							$.ajax({ url: "${pageContext.request.contextPath}/redPackageDetails/redPackageDetailsAction_queryReceivedByDate",data:{dateStart:dateStart,dateEnd:dateEnd,type:type,sellerSn:$('#sellerSn').val()},success: function(res){
								var obj = eval('(' + res + ')');
								$("#money").textbox('setValue',obj.sum);
								$('#dg').datagrid('load',{
									dateStart:dateStart,
									dateEnd:dateEnd,
									type:newValue,
									sellerSn:$('#sellerSn').val()
								});										
						      }});	   
							}  
			 		}) 
	 	 	 	}
		 		else if(role.indexOf("CJGLY")!=-1 || role.indexOf("CJCXRY")!=-1 || role.indexOf("JXSGLY")!=-1 || role.indexOf("JXSCXRY")!=-1){
					var url = "";
			 		if(role.indexOf("CJGLY")!=-1 || role.indexOf("CJCXRY")!=-1){
			 			url = "${pageContext.request.contextPath}/seller/sellers_querySeller?type="+'0';
/* 			 			$('#type').css("display","");*/
			 			$('#typeName').css("display",""); 
			 			$('#type').combobox({       
			 			    valueField:'id',    
			 			    textField:'text',
			 			    data:[{id:0,text:'全部'},
				 			    	{id:1,text:'厂家'},
									{id:2,text:'经销商'}],
							onChange:function(newValue,oldValue){
						 		var sum = 0.0;
						 		var type = newValue; 
						 		var dateStart =  new Date($('#date').datebox('getValue'));
								var dateEnd =  new Date($('#date1').datebox('getValue'));
								$.ajax({ url: "${pageContext.request.contextPath}/redPackageDetails/redPackageDetailsAction_queryReceivedByDate",data:{dateStart:dateStart,dateEnd:dateEnd,type:type,sellerSn:$('#sellerSn').val()},success: function(res){
									var obj = eval('(' + res + ')');
									$("#money").textbox('setValue',obj.sum);
									$('#dg').datagrid('load',{
										dateStart:dateStart,
										dateEnd:dateEnd,
										type:newValue,
										sellerSn:$('#sellerSn').val()
									});										
							      }});	   
 							}
				 		});
			 			$.ajax({ url: url,success: function(res){
			 				var dateStart =  new Date($('#date').datebox('getValue'));
							var dateEnd =  new Date($('#date1').datebox('getValue'));
			 				var obj = eval('(' + res + ')');
			 				var m = obj.sellerName;
			 				$('#vender').textbox({       
			 				});
		 		 			$('#vender').textbox('setValue',m);
			 				$('#vender').textbox('readonly',true);
			 				$('#sellerSn').val(obj.sellerSn);
					    	$('#dg').datagrid('load',{
								sellerSn:obj.sellerSn,
								type:0,
								dateStart:dateStart,
								dateEnd:dateEnd
						    	});
				 			var sellerSn = $("#sellerSn").val();

								$.ajax({ url: "${pageContext.request.contextPath}/redPackageDetails/redPackageDetailsAction_queryReceivedByDate",data:{sellerSn:$("#sellerSn").val(),dateStart:dateStart,dateEnd:dateEnd,type:0},success: function(res){
									var obj = eval('(' + res + ')');
									$("#money").textbox('setValue',obj.sum);									
							      }});					    	
			 		      }});
			 		}
			 		else{
			 			url = "${pageContext.request.contextPath}/seller/sellers_querySeller?type="+'1';
			 			$.ajax({ url: url,success: function(res){
			 				var obj = eval('(' + res + ')');
			 				var m = obj.sellerName;
			 				$('#vender').textbox({       
			 				});
		 		 			$('#vender').textbox('setValue',m);
			 				$('#vender').textbox('readonly',true);
			 				$('#sellerSn').val(obj.sellerSn);
					    	$('#dg').datagrid('load',{
								sellerSn:obj.sellerSn,
								type:0
						    	});
					    	var dateStart =  new Date($('#date').datebox('getValue'));
							var dateEnd =  new Date($('#date1').datebox('getValue'));
				 			var sellerSn = $("#sellerSn").val();
				 			if(sellerSn!=null && sellerSn!=""){
								$.ajax({ url: "${pageContext.request.contextPath}/redPackageDetails/redPackageDetailsAction_queryReceivedByDate",data:{sellerSn:$("#sellerSn").val(),dateStart:dateStart,dateEnd:dateEnd,type:0},success: function(res){
									var obj = eval('(' + res + ')');
									$("#money").textbox('setValue',obj.sum);									
							      }});
					 			}
			 		      }});
				 		}
			 		}
		  		}
		    	else{
		    		$('#dg').css('display','none');
		    		$('#toolbar').css('display','none');
		    		var tab = $('#tabs').tabs('getTab',0);  // 取得第一个tab 
		    		//修改tab title
		    		 $('#tabs').tabs('update', { 
	    	            tab: tab, 
	    	            options: { 
	    	                title: '主页'
	    	            } 
	    	        });
		    	}
		});
	  	function getLocalTime(now) {     
			var   year=now.getFullYear();
	        var   month=p(now.getMonth()+1);     
	        var   date=p(now.getDate());     
	        return   year+"-"+month+"-"+date;     
	    };
	    function p(s) {
		    return s < 10 ? '0' + s: s;
		}
	</script>
	<title>真假酒水后台管理系统</title>
	</head>
	<body class="easyui-layout">
	    <div id="divHeader" data-options="region:'north',border:false,href:'header'"></div>
	    <div id="divMenuBar" data-options="region:'west',split:true,collapsed:false,title:'菜单栏',href:'menu'"></div>
	    <div id="divFooter" data-options="region:'south',border:false,href:'footer'"></div>
	    <div id="divContent" data-options="region:'center',title:false">
	        <div id="tabs" class="easyui-tabs" data-options="fit:true,border:false">
	            <div id="divTitleBar" title="补充金额">
	            	<input id="sellerSn" type="hidden">
	            	<div id="dg"></div>            
	            	<div id="toolbar">
	            		<div style="float: left">
	            			   开始日期：<input id="date" class="easyui-datebox" data-options="editable:false">
	            			   结束日期：<input id="date1" class="easyui-datebox" data-options="editable:false">
	            				厂家：<input id="vender">
	            			<label id="typeName" style="display:none">类型：</label>
	            			<input id="type" style="display:none" />
	            		</div>            		
	            		<div style="text-align: right;margin-right: 30px" >
	            			<label>需补充金额合计(元)：<input id="money" style="width: 100px" class="easyui-textbox" readonly="readonly"></label>
	            		</div>
	            	</div>
	            </div>
	        </div>
	    </div>
	</body>
	</html>