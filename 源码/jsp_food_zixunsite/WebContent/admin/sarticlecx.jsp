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

	<body class="skin-orange">
 
		<jsp:include page="../top.jsp"></jsp:include>

<section>
<div class="">
 
<form name="f1" autocomplete="off"  action="sarticlecx.jsp"  style="display: inline;font-size: 14px">
<center>

<div align="left" style="height: 40px;vertical-align: middle;padding-top: 8px;font-weight: 700;font-size: 15px">
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    当前位置 : 美食分享推荐管理
</div>

<table align="center" width=97%  class="table5">
   
 
  <tr ng-repeat="x in names">
    <td colspan=4 height=45>  &nbsp;
<% 
String puname = request.getParameter("uname")==null?"":request.getParameter("uname"); 
String pytitle = request.getParameter("ytitle")==null?"":request.getParameter("ytitle"); 
   %>

<%
 HashMap mmm = new HashMap();%> 

&nbsp;
网友 
: 
<input type=text class=''  size=15 name='uname' />
&nbsp;

&nbsp;
标题 
: 
<input type=text class=''  size=15 name='ytitle' />
&nbsp;

<input type=submit class='' value='查询信息' />
 &nbsp;
<!--   <jsp:include page='/food_zixunsite/sarticlecx.do'>
<jsp:param name="uname" value="<%=puname %>" /> 
<jsp:param name="ytitle" value="<%=pytitle %>" /> 
</jsp:include>   -->
   
&nbsp;</td> 
  </tr> 

   <tr ng-repeat="x in names">
       <td align="center" height=33>网友  </td>
    <td align="center" height=33>标题  </td>
<td align="center" height=33>发布时间  </td>
<td align="center" height=33>操作  </td> 
  </tr> 

  <% 
new CommDAO().delete(request,"article"); 
if(request.getParameter("unameid1")!=null){ 
 new CommDAO().commOper("update article set uname ='' where id="+request.getParameter("unameid1"));  
} 
if(request.getParameter("unameid2")!=null){ 
 new CommDAO().commOper("update article set uname ='' where id="+request.getParameter("unameid2"));  
} 
HashMap<String,String> selectmap = new HashMap();
HashMap<String,String> selectymap = new HashMap();
HashMap<String,String> selectbmap = new HashMap();
 selectmap.put("uname","");  
 selectmap.put("ytitle","");  
String sql = Info.selectBuild3("article",selectmap,selectymap,selectbmap,request) ;
String url = "sarticlecx.jsp?1=1&uname="+puname+"&ytitle="+pytitle+""; 
ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
//ArrayList<HashMap> list = (ArrayList<HashMap>)PageManager.getPages(request); 
for(HashMap map:list){ %>
<tr ng-repeat="x in names">
<td align="center" height=33><%=map.get("uname")%></td>
    <td align="center" height=33><%=map.get("ytitle")%></td>
    <td align="center" height=33><%=map.get("savetime")%></td>
    <td align="center" height=33>
<a href="sarticlexg.jsp?id=<%=map.get("id")%>">查看</a>
&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;

<a onclick="return confirm('确定要删除这条记录吗?')" href="sarticlecx.jsp?scid=<%=map.get("id")%>">删除</a>
</td>
</tr>
<%}%> 

<tr>
<td colspan=4 height="35" align="center">${page.info}</td>
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
            <script language=javascript src='/food_zixunsite/js/ajax.js'></script>
<% 
mmm.put("uname",puname); 
mmm.put("ytitle",pytitle); 
%>
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript src='/food_zixunsite/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/food_zixunsite/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('sarticlexg.jsp?id='+no,'信息修改',550,'100%') 
}
</script> 
<script language=javascript> 
function add(){ 
pop('articletj.jsp','信息添加',550,'100%') 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
