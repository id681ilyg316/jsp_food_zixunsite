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
new CommDAO().delete(request,"tgroup"); 
String id = request.getParameter("id"); 
String erjitype = request.getParameter("erjitype"); 
String myztree = request.getParameter("myztree"); 
HashMap ext = new HashMap(); 
new CommDAO().update(request,response,"tgroup",ext,true,false); 
HashMap mmm = new CommDAO().getmap(id,"tgroup"); 
mmm = new CommDAO().dyTform(mmm); 
%>
<body class="skin-orange">
 
		<jsp:include page="../top.jsp"></jsp:include>

<section>
<div class="">
 
<!-- servletformstart 
<form  action="/food_zixunsite/food_zixunsite?ac=tgroupxg&id=<%=mmm.get("id")%>"   autocomplete="off"  style="display: inline;font-size: 15px" name="f1"  onsubmit="return checkform()" >
  servletformend -->
  <!-- s2formstart -->
<form  name="f1"  onsubmit="return checkform()" action="/food_zixunsite/food_zixunsite/tgroupxg.do?id=<%=mmm.get("id")%>" > 
  <!-- s2formend -->
<center>

<div align="left" style="height: 40px;vertical-align: middle;padding-top: 8px;font-weight: 700;font-size: 15px">
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    当前位置 : 信息修改
</div>

<table  align="center" width=97%  class="table5">
 

<tr ng-repeat="x in names">
<td width="21%" height="32" align="center">名称</td>
<td width="79%" align="left"  style="padding-left: 5px"><input type=text  onblur='checkform()'  class='' id='gname' name='gname' size=35 /><label  style='display:inline'  id='clabelgname' /></td>
</tr>
<tr ng-repeat="x in names">
<td width="21%" height="32" align="center">导游</td>
<td width="79%" align="left"  style="padding-left: 5px"><span id="guidedanx"><%=Info.getradio("guide","guides","gno~hnoname"," 1=1 ")%></span></td>
</tr>
<tr ng-repeat="x in names">
<td width="21%" height="32" align="center">出发时间</td>
<td width="79%" align="left"  style="padding-left: 5px"><input type=text size='16' onblur='checkform()'  class=''  id='sdate'  name='sdate' onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'});" /> <label id='clabelsdate' /></td>
</tr>
<tr ng-repeat="x in names">
<td width="21%" height="32" align="center">返回时间</td>
<td width="79%" align="left"  style="padding-left: 5px"><input type=text size='16' onblur='checkform()'  class=''  id='edate'  name='edate' onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'});" /> <label id='clabeledate' /></td>
</tr>


<tr ng-repeat="x in names">
<td height="35" align="center" colspan="2">

<label>
<input  type="button"  onclick="if(checkform()){f1.submit();}"   name="button" id="button" value="提交信息" />
</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                      
<input type=button value='返回上页' onclick='window.location.replace("tgroupcx.jsp")' />                               
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
<script language=javascript src='/food_zixunsite/js/ajax.js'></script> 
<script language=javascript src='/food_zixunsite/js/popup.js'></script> 
<%@page import="util.Info"%> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
<script language=javascript >  
 
</script>  
<script language=javascript >  
 function checkform(){  
var gnameobj = document.getElementById("gname");  
if(gnameobj.value==""){  
document.getElementById("clabelgname").innerHTML="&nbsp;&nbsp;<font color=red>请输入名称</font>";  
return false;  
}else{ 
document.getElementById("clabelgname").innerHTML="  ";  
}  
return true;   
}   
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
