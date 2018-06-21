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
	   $( "#item" ).draggable();
		$( "#outer_area" ).droppable({
		   over: function(event, ui) {
			    $(this).removeClass("ui-state-hover") 
			    $(this).addClass("ui-state-error") 
		   },		
		   drop: function( event, ui ) {
			    $(this).removeClass("ui-state-error") 
				$(this).addClass("ui-state-hover") 
		   },
		   out: function(event, ui) {
			   $(this).removeClass("ui-state-hover") 
			   $(this).removeClass("ui-state-error") 
           }, 
		});
	   
   }); 
  </script>
  <body>
   <h1>div droppable 投掷 </h1> 
     <img id="item" class="item" alt="可投掷" src="/JqueryUI/img/photo.jpg" /> 
    <div id ="outer_area" class ="outer_area">  
    </div>    
  </body>
</html>
