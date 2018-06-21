<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>ui dialog</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link type="text/css" href="css/ui-lightness/jquery-ui-1.8.13.custom.css" rel="stylesheet" />	
	<script type="text/javascript" src="js/jquery-1.5.1.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.8.13.custom.min.js"></script>
    
    <style type="text/css">
       body{ font: 62.5% "Trebuchet MS", sans-serif; margin: 50px;}
       .demoHeaders { margin-top: 2em; }  
       #dialog_link {padding: .4em 1em .4em 20px;text-decoration: none;position: relative;}
	   #dialog_link span.ui-icon {margin: 0 5px 0 0;position: absolute; left: .2em;top: 3%;margin-top: -8px;}
	 
       
    </style>
    <script type="text/javascript">
    
      $().ready(function(){
    	// Dialog			
			$('#dialog').dialog({
				disabled:false,   //是否禁用
				autoOpen: false,   //初始化显示
				width: 600,	
				height: 200,	 		
				buttons: {
					"确定": function() { 
				        alert("buttons 确定 functions");
						$(this).dialog("close"); 
					}, 
					"取消": function() { 
						alert("buttons 取消 functions");
						$(this).dialog("close"); 
					} 
				},
				closeOnEscape:true,  //esc 键 推出
				closeText:"hide",
				dialogClass: 'alert' ,
				draggable : true,   //是否可移动
                show: 'fade',  //设置显示时 的动画  slide toggle fade
				hide: 'slide',  //设置隐藏时 的动画  slide toggle fade
			    maxHight: 400,
			    maxWidth: 1000,
			    minHight:200,
			    minWidth:600,
			    modal: true,  //设置页面其他部分失效
			    position: 'center', //显示时的绝对位置   top  bottom
			    resizable: true , //是否可以改变大小
			    stack : true ,
			    title:"Dialog Title", //设置标题 也可以在div title属性中设置
			    zIndex: 1000  //设置层序号  默认为 1000
			});
			
			// Dialog Link
			$('#dialog_link').click(function(){
				$('#dialog').dialog('open');
				return false;
			});
	      
          });
    </script>
  </head>
  
  <body>
      
		 <!-- Dialog 注:对话框界面不产生在这个演示,它可以按照themeroller视觉-->
		<h2 class="demoHeaders">Dialog</h2>
		<div>
		  <a href="#" id="dialog_link" class="ui-state-default ui-corner-all">
		  <span class="ui-icon ui-icon-newwin"></span>
		   Open Dialog
		  </a>
		</div> 
		
		<!-- ui-dialog -->
		<div id="dialog" title="Dialog Title" >
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
		</div>
		 
        
  </body>
</html>
