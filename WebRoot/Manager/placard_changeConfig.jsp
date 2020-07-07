<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="java.util.Date,java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<title>
placard_show_config page
</title>
</head>
<%!
String sql;
Date date=new Date();
ResultSet rs=null;
%>
<body bgcolor="#ffffff">
<%
request.setCharacterEncoding("gb2312");

String title=request.getParameter("title");
String content=request.getParameter("content");
String author=request.getParameter("author");
String code=request.getParameter("id");
java.sql.Date datatime=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());
String tsql="select * from tb_Placard where Title='"+title+"'or Content='"+content+"'or Author='"+author+"'";
rs=connection.executeQuery(tsql);
if(!rs.next())
{
%>
<script language="javascript">
alert("您没有对此公告信息进行修改!!!");
history.back();
</script>
<%
}else
{
sql="update tb_Placard set Title='"+title+"',Content='"+content+"',Author='"+author+"',IssueDate='"+datatime+"' where ID="+code;
boolean bb=connection.executeUpdata(sql);
if(bb)
{%>
<script language="javascript">
alert("您输入的公告信息已经修改完成！！！");
</script>
<%
response.sendRedirect("placard_select.jsp");
}else
{
%>
<script language="javascript">
alert("您输入的公告信息修改失败！！！");
history.back();
</script>
<%
}}
%>
</body>
</html>
