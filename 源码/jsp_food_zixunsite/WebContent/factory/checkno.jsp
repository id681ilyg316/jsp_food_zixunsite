﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
<%
String table = request.getParameter("table")==null?"":request.getParameter("table");
String col = request.getParameter("col")==null?"":request.getParameter("col");
String value = request.getParameter("value")==null?"":request.getParameter("value");
String checktype = request.getParameter("checktype")==null?"":request.getParameter("checktype");
String valuecopy = "";
for(String str:value.split(","))
{
if(str.startsWith("sysuser-"))
{
str = Info.getUser(request).get(str.split("-")[1]).toString();
}
valuecopy+=str+",";
}
if(valuecopy.length()>1)valuecopy=valuecopy.substring(0,valuecopy.length()-1);
value = valuecopy;
if(checktype.equals("insert"))
{
value = Info.getUTFStr(value);
System.out.println(value);
List list = new CommDAO().select("select * from "+table+" where "+col+"='"+value+"'");
if(list.size()>0)
{
out.print("Y");
}else{
out.print("N");
}
}


if(checktype.equals("iinsert"))
{
value = Info.getUTFStr(value);
String fno = request.getParameter("fno"); 
List list = new CommDAO().select("select * from fangyd where fno='"+fno+"' and stime<='"+value+"' and etime>='"+value+"'");
if(list.size()>0)
{
out.print("Y");
}else{
out.print("N");
}
}




if(checktype.equals("zhinsert"))
{
value = Info.getUTFStr(value);
System.out.println(value);
String sql = "select * from "+table+" where 1=1 ";
String[] cols = col.split(",");
String[] values = value.split(",");
for(int i=0;i<cols.length;i++)
{
String pcol = cols[i]==null?"":cols[i];
String pvalue = values[i]==null?"":values[i];
if(pcol.equals(""))continue;
if(pvalue.equals(""))continue;
sql+=" and "+pcol+"='"+pvalue+"' " ;
}
System.out.println(sql);
List list = new CommDAO().select(sql);
if(list.size()>0)
{
out.print("Y");
}else{
out.print("N");
}
}


if(checktype.equals("zhinserts"))
{
value = Info.getUTFStr(value);
System.out.println(value);
String sql = "select * from "+table+" where 1=1 ";
String[] cols = col.split(",");
String[] values = value.split(",");
 
sql+=" and "+cols[0]+"='"+values[0]+"' " ;
String sdate = values[1];
String edate = values[2];
sql+=" and status in('待受理','受理') and  ( 1!=1 " ;
sql+=" or (sdate<='"+sdate+"' and edate>='"+sdate+"' ) " ;
sql+=" or (sdate<='"+edate+"' and edate>='"+edate+"' ) " ;
sql+=" or (sdate<='"+sdate+"' and edate>='"+edate+"' ) " ;
sql+=" or (sdate>='"+sdate+"' and edate<='"+edate+"' ) " ;
sql+=" ) " ;
 
System.out.println(sql);
List list = new CommDAO().select(sql);
if(list.size()>0)
{
out.print("Y");
}else{
out.print("N");
}
}

if(checktype.equals("update"))
{
String id = request.getParameter("id")==null?"":request.getParameter("id");
value = Info.getUTFStr(value);
System.out.println(value);
List list = new CommDAO().select("select * from "+table+" where "+col+"='"+value+"' and id!="+id);
System.out.println("select * from "+table+" where "+col+"='"+value+"' and id!="+id);
if(list.size()>0)
{
out.print("Y");
}else{
out.print("N");
}
}


if(checktype.equals("zhupdate"))
{
String id = request.getParameter("id")==null?"":request.getParameter("id");
value = Info.getUTFStr(value);
String sql = "select * from "+table+" where 1=1 ";
String[] cols = col.split(",");
String[] values = value.split(",");
for(int i=0;i<cols.length;i++)
{
String pcol = cols[i]==null?"":cols[i];
String pvalue = values[i]==null?"":values[i];
if(pcol.equals(""))continue;
if(pvalue.equals(""))continue;
sql+=" and "+pcol+"='"+pvalue+"' " ;
}
sql+=" and id!="+id;
System.out.println(sql);
List list = new CommDAO().select(sql);
 
if(list.size()>0)
{
out.print("Y");
}else{
out.print("N");
}
}

%>