<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>ui slider</title>
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
       .slider{width: 300px};
       
    </style>
    <script type="text/javascript">
    
      $().ready(function(){
            var valueNode = $("#value");
            
  	        // Slider
			$('#slider').slider({
				range: false,  //仅可在范围内滑动
				values: [20],  //可以添加 多个初始值 最大值
				max:100, //最大值
				min:0,   //最小值
				disabled:false,
				orientation: 'horizontal', //显示方式  水平'horizontal' 垂直	'vertical'
				animate:1000, // 设置动画   boolean  string  number 表示速度
				step: 1,   //设置滑动间隔		
				create:function(event,ui){
                     alert("slider event create ")
		          },
		        start:function(event,ui){
                     alert("slider event start |value:"+ui.value);
	             },
		         slide:function(event,ui){
                    alert("slider event slide |value:"+ui.value);
		         },
				change: function(event, ui) {
		        	 alert("slider event change |value:"+ui.value);
		        },
		         stop: function(event, ui) {
		        	alert("slider event  stop |value:"+ui.value);
	            }
				
						 
			});
	      
          });
    </script>
  </head>
    
  <body> 
		<!-- Slider -->
		<h2 class="demoHeaders">Slider 滑动条</h2>
		<div id="slider" class="slider"></div> 
		 
  </body>
</html>
