<%@ page contentType="text/html; charset=GB2312" %>
<%@ page import="java.util.Date"%>
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
%>
<body bgcolor="#ffffff">
<%
request.setCharacterEncoding("gb2312");
String title=request.getParameter("title");
String content=request.getParameter("content");
String style=request.getParameter("style");
java.sql.Date datatime=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());
sql="update tb_Knowledge set Title='"+title+"',Content='"+content+"',IssueDate='"+datatime+"',Reside='"+style+"'where ID="+request.getParameter("id");
boolean bb=connection.executeUpdata(sql);
if(bb)
{%>
<script language="javascript">
alert("您输入的物流知识已经发布成功！！！");
</script>
<%
response.sendRedirect("knowledge_select.jsp");
}else
{
%>
<script language="javascript">
alert("您输入的物流知识存储失败！！！");
history.back();
</script>
<%
}
%>
</body>
</html>
