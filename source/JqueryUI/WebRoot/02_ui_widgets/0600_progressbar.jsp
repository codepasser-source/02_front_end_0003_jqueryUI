<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>"> 
    <title>ui progressbar</title> 
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page"> 
	<link type="text/css" href="css/ui-lightness/jquery-ui-1.8.13.custom.css" rel="stylesheet" />	
	<script type="text/javascript" src="js/jquery-1.5.1.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.8.13.custom.min.js"></script>
    <style type="text/css">
      .page_layout{
         margin: 50px auto;
         width:600px;
         padding:20px;
         border-bottom: 1px dashed #707070;
         text-align: center;
      }
     
    </style>
  </head>  
  <body> 
    <div class="page_layout"> 
       <div id="progressbar"></div>正在传输数据，请稍候...
    </div> 
  </body>
  <script type="text/javascript">

     var progressbar = null;
     var proTimer = null;
     $(document).ready(function(){
    	 init_progressbar();
    	 proTimer = window.setInterval(progressbarTimer, 50);
      });

     function  init_progressbar(){ 
    	 progressbar = $( "#progressbar" ).progressbar({
			    			 disabled:false,
			    			 value: 0,
			    			 complete:complete
			        	 }); 
     }

      var  complete = function(){
          window.clearInterval(proTimer);
    	  $( ".page_layout" ).fadeOut();
       }
      function progressbarTimer(){
         var value = progressbar.progressbar("option","value"); 
         value = value+2;  
         progressbar.progressbar("option","value",value);
          
      } 
  </script>
</html>
