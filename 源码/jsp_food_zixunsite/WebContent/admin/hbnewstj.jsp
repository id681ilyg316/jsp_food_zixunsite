﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> 
<%@page import="java.io.InputStream"%> 
<%@page import="java.io.IOException"%> 
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
   <%
HashMap user = Info.getUser(request);
String uname = user.get("uname").toString();
String utype = user.get("utype").toString();
String userid = user.get("id").toString();
 %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="description" content="Magz is a HTML5 & CSS3 magazine template is based on Bootstrap 3.">
		
		
		<title>Magzz - Responsive HTML5 and CSS3</title>
		
	</head>

	<% 
HashMap ext = new HashMap(); 
String tglparentid=request.getParameter("tglparentid")==null?"":request.getParameter("tglparentid"); 
ext.put("tglparentid",tglparentid); 
new CommDAO().insert(request,response,"hbnews",ext,true,false); 
%>
<body class="skin-orange">
 
		<jsp:include page="../top.jsp"></jsp:include>

<section>
<div class="">
 
<!-- servletformstart 
<form  action="/food_zixunsite/food_zixunsite?ac=hbnewstj&tglparentid=<%=tglparentid%>"   autocomplete="off"  style="display: inline;font-size: 15px" name="f1"  onsubmit="return checkform()" >
  servletformend -->
  <!-- s2formstart -->
<form name="f1" onsubmit="return checkform()" action="/food_zixunsite/food_zixunsite/hbnewstj.do?tglparentid=<%=tglparentid%>" > 
  <!-- s2formend -->
<center>

<div align="left" style="height: 40px;vertical-align: middle;padding-top: 8px;font-weight: 700;font-size: 15px">
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    当前位置 : 信息添加
</div>

<table  align="center" width=97%  class="table5">
 

<tr ng-repeat="x in names">
<td width="21%" height="32" align="center">标题</td>
<td width="79%" align="left"  style="padding-left: 5px"><input type=text  onblur='checkform()' class='' id='title' name='title' size=60 /><label style='display:inline' id='clabeltitle' /></td>
</tr>
<tr ng-repeat="x in names">
<td width="21%" height="32" align="center">类别</td>
<td width="79%" align="left"  style="padding-left: 5px"><span id="itypedanx"><label  style='display:inline' ><input type=radio checked=checked name='itype' id='itype' value='优惠活动' />&nbsp;优惠活动 </label>&nbsp;
<label  style='display:inline' ><input type=radio  name='itype' id='itype' value='旅游资讯' />&nbsp;旅游资讯 </label>&nbsp;
<label  style='display:inline' ><input type=radio  name='itype' id='itype' value='热门景点' />&nbsp;热门景点 </label>&nbsp;
</span></td>
</tr>
<tr ng-repeat="x in names">
<td width="21%" height="32" align="center">相关图片</td>
<td width="79%" align="left"  style="padding-left: 5px"><%=Info.getImgUpInfo(65)%></td>
</tr>
<tr ng-repeat="x in names">
<td width="21%" height="32" align="center">内容</td>
<td width="79%" align="left"  style="padding-left: 5px"><%=Info.fck(265,"")%></td>
</tr>


<tr ng-repeat="x in names">
<td height="35" align="center" colspan="2">

<label>
<input  type="button"  onclick="if(checkform()){f1.submit();}"   name="button" id="button" value="提交信息" />
</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                      
<input type=button value='返回上页' onclick='window.location.replace("hbnewscx.jsp")' />                               
</td> 
</tr>

 
</table>
</center>
</form>
 
 </div>
	</section>
	

    <jsp:include page="../foot.jsp"></jsp:include>
	</body>
</html>

 
<script type="text/javascript">
<%
if(session.getAttribute("suc")!=null)
{
session.removeAttribute("suc");
%>
alert("操作成功"); 
<%}
%>
</script>
            <script language=javascript src='/food_zixunsite/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/food_zixunsite/js/popup.js'></script>
<script language=javascript src='/food_zixunsite/js/ajax.js'></script>
<%@page import="util.Info"%>
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
<script language=javascript >  
 
 function checkform(){  
var titleobj = document.getElementById("title");  
if(titleobj.value==""){  
document.getElementById("clabeltitle").innerHTML="&nbsp;&nbsp;<font color=red>请输入标题</font>";  
return false;  
}else{
document.getElementById("clabeltitle").innerHTML="  ";  
}  
  
return true;   
}   
</script>  
