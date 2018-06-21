<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String strPath = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+strPath+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'photoset.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	 
	<link type="text/css" href="<%=strPath%>/05_ex_photoset/cutpic.css" rel="stylesheet" />
	
	<script type="text/javascript" src="<%=strPath%>/js/jquery-1.5.1.js"></script>
	<script type="text/javascript" src="<%=strPath%>/js/jquery-1.5.1.min.js"></script>
    <script type="text/javascript" src="<%=strPath%>/js/jquery-ui-1.8.13.custom.min.js"></script>
    <script type="text/javascript" src="<%=strPath%>/05_ex_photoset/CutPic.js"></script>
  </head>
  
  <body>
    <div id="cut_logo">
                	<div class="desc">您可以拖动照片以裁剪满意的头像</div>                              
	                <div id="Canvas" class="margintop">
						<div id="ImageDragContainer">                               
							<img id="ImageDrag" class="imagePhoto" src="<%=strPath%>/05_ex_photoset/black/avatar.png" style="border-width:0px;" />                                                        
						</div>
						<div id="IconContainer">                               
							<img id="ImageIcon" class="imagePhoto" src="<%=strPath%>/05_ex_photoset/black/avatar.png" style="border-width:0px;" />                                                        
						</div>                          
					</div>
					<div class="margintop">
						<table>
							<tr>
								<td id="Min">
									<img alt="缩小" src="<%=strPath%>/05_ex_photoset/black/_c.gif" 
									onmouseover="this.src='<%=strPath%>/05_ex_photoset/black/_c.gif';" 
									onmouseout="this.src='<%=strPath%>/05_ex_photoset/black/_h.gif';" 
									id="moresmall" class="smallbig" />
								</td>
								<td>
									<div id="bar"><div class="child"></div></div>
								</td>
								<td id="Max">
									<img alt="放大" src="<%=strPath%>/05_ex_photoset/black/c.gif" 
									onmouseover="this.src='<%=strPath%>/05_ex_photoset/black/c.gif';" 
									onmouseout="this.src='<%=strPath%>/05_ex_photoset/black/h.gif';" 
									id="morebig" class="smallbig" />
								</td>
							</tr>
						</table>
					</div>
					<form action="<%=strPath%>/mwfm/upap?ctrl=save&p=regist" method="post" name="logoFormStep2" id="logoFormStep2">
						<div style="display:none;">
							图片实际宽度： <input name="txt_width" type="hidden" value="1" id="txt_width" /><br />
							图片实际高度： <input name="txt_height" type="hidden" value="1" id="txt_height" /><br />
							距离顶部： <input name="txt_top" type="hidden" value="52" id="txt_top" /><br />
							距离左边： <input name="txt_left" type="hidden" value="43" id="txt_left" /><br />
							截取框的宽： <input name="txt_DropWidth" type="hidden" value="180" id="txt_DropWidth" /><br />
							截取框的高： <input name="txt_DropHeight" type="hidden" value="180" id="txt_DropHeight" /><br />
							放大倍数： <input name="txt_Zoom" type="text" id="txt_Zoom" />
						</div>
						<input class="submit margintop" id="id_submit" type="submit"  value="保存头像"/>
					</form>
                </div>
  </body>
</html>
