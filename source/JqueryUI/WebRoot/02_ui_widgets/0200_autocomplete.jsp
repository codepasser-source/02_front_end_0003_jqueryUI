<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>ui autoCompent</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link type="text/css" href="css/ui-lightness/jquery-ui-1.8.13.custom.css" rel="stylesheet" />	
	<script type="text/javascript" src="js/jquery-1.5.1.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.8.13.custom.min.js"></script>
    
    <style type="text/css">
      .complete_layout{
         margin:50px auto;
         width:300px;
         height: 30px;
         border: 1px solid;
      }
    </style>
  </head>
  <script type="text/javascript">
      $(document).ready(function (){

    	      var availableTags = [ "ActionScript", "AppleScript", "Asp","BASIC", "C", "C++",
    	           			        "Clojure", "COBOL", "ColdFusion", "Erlang", "Fortran", "Groovy",
    	           			        "Haskell", "Java", "JavaScript", "Lisp", "Perl",
    	           			        "PHP", "Python", "Ruby", "Scala", "Scheme"
    	           		          ];
    	      $( "#comp" ).autocomplete({
    	    	    disabled:false,//设置是否启用 默认为false
    	            source: availableTags,//设置自动补齐数据
   	 	            autoFocus:true, //自动获取焦点
    	            delay:1000,  //延迟
    	            minLength: 1, //最少输入的字符数量
    	            position:  { my: "left top", at: "left bottom", collision: "none" }
    	            
    	      });
    	      
      });
  </script>
  <body>
       <div class="complete_layout">
             <div class="ui-widget">
               <label for="comp">Tags: </label> <input id="comp"/>
             </div>
      </div>
  </body>
</html>
