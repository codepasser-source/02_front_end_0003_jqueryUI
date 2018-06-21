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
      .area{ 
        height:300px;
        width:300px; 
        border: 1px solid #cccccc;
        background-color: #cccccc;
        margin: 0px auto;
        overflow: hidden;
       }        
    
</style>
  </head>
  <script type="text/javascript">   
   $(document).ready(function(){   
	    $("#area").resizable();
   }); 
   
  </script>
  <body>
   <h1>div resizable 重置大小</h1> 
      <div id="area" class="area"></div>
  </body>
</html>
