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
String author=(String)session.getAttribute("username");

java.sql.Date datatime=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());

sql="insert tb_Placard values(null,'"+title+"','"+content+"','"+author+"','"+datatime+"')";



boolean bb=connection.executeUpdata(sql);


if(bb)
{%>
<script language="javascript">
alert("您输入的公告信息已经成功完成！！！");
</script>
<%
response.sendRedirect("placard_select.jsp");
}else
{
%>
<script language="javascript">
alert("您输入的公告信息插入失败！！！");
history.back();
</script>
<%
}
%>
</body>
</html>
