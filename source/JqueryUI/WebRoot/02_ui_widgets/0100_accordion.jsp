<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>ui accordion</title>
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
       .accordionHeaders { margin-top: 2em; }
       .content{height: 20em;}
    </style>
    <script type="text/javascript">
    
      $().ready(function(){
                $("#accordion").accordion({header:"h3"});
          });
    </script>
  </head>
  
  <body>
         <!-- Accordion -->
		<h2 class="accordionHeaders">Accordion 手风琴样式</h2>
		<div id="accordion">
			<div>
				<h3><a href="#">First</a></h3>
				<div class="content">Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.</div>
			</div>
			<div>
				<h3><a href="#">Second</a></h3>
				<div class="content">Phasellus mattis tincidunt nibh.</div>
			</div>
			<div>
				<h3><a href="#">Third</a></h3>
				<div class="content">Nam dui erat, auctor a, dignissim quis.</div>
			</div>
		</div>

  </body>
</html>
