<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>ui droggable</title>    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">  
    <link type="text/css" href="css/ui-lightness/jquery-ui-1.8.13.custom.css" rel="stylesheet" />	
	<script type="text/javascript" src="js/jquery-1.5.1.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.8.13.custom.min.js"></script>
<style type="text/css"> 
      .outer_area{ 
        height:300px;
        width:300px; 
        border: 1px solid #cccccc;
        background-color: #cccccc;
        margin: 0px auto;
        overflow: hidden;
       }        
      .item{ 
         height: auto;
         width:auto;
         border:1px solid;
      }
</style>
  </head>
  <script type="text/javascript">   
   $(document).ready(function(){  
        $("#item").draggable({
          disabled:false, 
          //axis: 'y',  //设置拖拽方向 
          containment: "#outer_area",  //约束区域
          cursor : "pointer",//拖拽时设置光标样式
          //cursorAt:{left:5}, //设置显示在 默认为 false
          addClass:true,
          appendTo:"#outer_area",
          cancel:"button",//防止拖拽上指定的元素
          delay: 0, //长按时间设置            
          distance:0,//设置当鼠标脱离多少距离开始移动
          //grid:[100,100],//拖拽格子
          handle:'h2',
          //helper: 'clone',//帮助 设置为 clone
          iframeFix: true,//
          opacity: 0.35 ,//拖拽时的透明度
          refreshPositions: true ,
          revert: false ,//设为true时,拖拽结束时会回到初始位置
          revertDuration:5000,//设置当revert为true时，恢复动画时间
          scope: 'tasks',
          scroll: true, 
          snap: true ,
          snapMode: 'outer',
          snapTolerance: 40,
          stack: ".products",
          zIndex: 2700 
        });  
        
   }); 
  </script>
  <body>
   <h1>div drappable 拖拽 </h1> 
    <div id ="outer_area" class ="outer_area"> 
       <img id="item" class="item" alt="拖拽" src="/JqueryUI/img/photo.jpg" />  
    </div>    
  </body>
</html>
