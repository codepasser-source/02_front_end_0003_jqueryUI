<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>ui sortTable</title> 
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">   
    <link type="text/css" href="css/ui-lightness/jquery-ui-1.8.13.custom.css" rel="stylesheet" />	
	<script type="text/javascript" src="js/jquery-1.5.1.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.8.13.custom.min.js"></script>
<style type="text/css">
      .sortTable{
        position: absolute;
        width:400px;
        height:300px;
        top: 100px;
        left:100px;
        border: 1px solid;
      }
       .item{
        position: relative;
        width:320px;
        height:30px; 
        border: 1px solid;
        margin-top: 5px;
        margin-bottom: 5px;
        margin-left: 20px
      }
</style>
  </head>
  <script type="text/javascript">   
    
    var layout = "";
      
     $(document).ready(function(){
      
       	$("#sortTable").sortable({  
       	  stop:function(event,ui){
       	    saveLayout();
       	  }
       	});
	    $("#sortTable").disableSelection();
	     
     });
     
     function saveLayout(){
       var layoutArray = $("#sortTable").sortable("toArray");
         alert(layoutArray);
     }
  </script>
  <body>
   <h1> div srotTable 排序 </h1> 
   <div id ="sortTable" class ="sortTable">  
        <div id ="item1" class ="item">itme1</div> 
        <div id="item2" class="item">itme2</div>
        <div id="item3" class="item">itme3</div>
        <div id="item4" class="item">itme4</div>
        <div id="item5" class="item">itme5</div>
        <div id="item6" class="item">itme6</div> 
    </div>
    
  </body>
</html>
