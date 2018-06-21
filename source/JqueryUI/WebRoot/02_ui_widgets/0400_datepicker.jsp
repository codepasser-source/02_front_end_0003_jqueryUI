<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>"> 
    <title>ui datepicker</title> 
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
       <label for="date_input">生日:</label> <input type="text" id="date_input"/> 
       <div id="datepicker" style="display: none"></div>
    </div> 
  </body>
  <script type="text/javascript">
     $(document).ready(function(){
    	 init_datepicker();
    	 $("#date_input").focus(function(){
    		 $( "#datepicker" ).slideDown(500);
         }) 
      });

     function  init_datepicker(){ 
    		 $( "#datepicker" ).datepicker({
    			    disabled:false,
    			    altField:"#date_input", //设置日期时间选择后更新输入框内容
    			    altFormat: "yy-mm-dd", //设置日期格式
    			    appendText: "(yyyy-mm-dd)",
    			    autoSize:true,  //设置自适应大小
    			    buttonImage:"/JqueryUI/photoset/black/avatar.png",//按钮图片
    			    buttonImageOnly: false,
    			    buttonText:"Choose", 
    			    changeYear:true, //设置年份
    			    changeMonth:true,  //设置月份
    			    closeText: 'X', //关闭按钮文字
    			    constrainInput:false, 
    			    dateFormat: 'yy/mm/dd',
    			    dayNames:["周一","周二","周三","周四","周五","周六","周日"], 
    			    dayNamesMin:["一","二","三","四","五","六","日"],
    			    dayNamesShort:["一","二","三","四","五","六","日"],
    			    defaultDate: +0, //设置默认日期 据今天
    			    duration: 'slow', //显示效果  
    			    firstDay: 0, //设置第一天开始位置
    			    gotoCurrent: false,
    			    hideIfNoPrevNext: true,
    			    isRTL: false, // 设置从右端显示
    			    maxDate: '+10y +3w', //最大日期
    			    minDate: new Date(1900, 1 - 1, 1), //最小日期
    			    monthNames:['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'],
    			    monthNamesMin:['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'],
    			    monthNamesShort:['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'],
    			    navigationAsDateFormat: false, 
    			    numberOfMonths: [1, 1], //设置一次显示几个月，行列  	  
    			    selectOtherMonths:true,
    			    shortYearCutoff: 50,
    			    showAnim: 'fold', //设置显示 隐藏动画
    			    showButtonPanel:true,
    			    nextText: '下月',
    			    prevText: '上月' ,
    			    currentText: '今天',
    			    
    			    showCurrentAtPos: 0,//设置据今天几个月前
    			    showMonthAfterYear:true, //设置月份显示在年后面
    			    showOn: 'both',
    			    showOptions: {direction: 'up' },
    			    showOtherMonths:true,
    			    showWeek: true, //设置显示周信息
    			    stepMonths: 1, // 设置月份跨度
    			    weekHeader: "周", //设置周题目信息
    			    yearRange: '1960:2011', //设置范围
    			    yearSuffix: '',
    			     
    			    onSelect:fold
        		 }); 
     }

     var fold = function(){
    	 $( "#datepicker" ).slideUp(100);
      }
  </script>
</html>
