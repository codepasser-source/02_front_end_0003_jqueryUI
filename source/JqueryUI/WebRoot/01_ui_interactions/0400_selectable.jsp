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
	#selectable .ui-selecting { background: #FECA40; }
	#selectable .ui-selected { background: #F39814; color: white; }
	#selectable { list-style-type: none; margin: 0; padding: 0; width: 60%; }
	#selectable li { margin: 3px; padding: 0.4em; font-size: 1.4em; height: 18px; }
      
</style>
  </head>
  <script type="text/javascript">   
   $(document).ready(function(){   
	    $("#selectable").selectable();
   }); 
   
  </script>
  <body>
   <h1>div selectable 可选择table</h1> 
   <ol id="selectable">
      <li   class="ui-widget-content">item1</li>
      <li   class="ui-widget-content">item2</li>
      <li   class="ui-widget-content">item3</li>
      <li   class="ui-widget-content">item4</li>
      <li   class="ui-widget-content">item5</li>
      <li   class="ui-widget-content">item6</li>
   </ol>
  </body>
</html>
