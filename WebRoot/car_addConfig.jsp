<%@ page contentType="text/html; charset=GB2312" import="java.util.Date"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<title>
CarMessageadd_config page
</title>
</head>
<%!
Date date=new Date();
String sql;
%>
<%
request.setCharacterEncoding("gb2312");

String numbers=request.getParameter("numbers");
String types=request.getParameter("type");
String carname=request.getParameter("carname");
String usetime=request.getParameter("usetime");
String loads=request.getParameter("loads");
String transtyle=request.getParameter("style");
String drivername=request.getParameter("name");
String number=request.getParameter("number");
String styles=request.getParameter("styles");
String drivertime=request.getParameter("time");
String meg=request.getParameter("meg");
String linkman=request.getParameter("linkman");
String phone=request.getParameter("phone");
String gremark=request.getParameter("gremark");
String username=(String)session.getAttribute("name");

java.sql.Date showdate=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());

sql="insert into tb_CarMessage values('"+numbers+"','"+carname+"','"+types+"','"+loads+"','"+usetime+"','"+drivername+"','"+drivertime+"','"+number+"','"+styles+"','"+transtyle+"','"+linkman+"','"+
phone+"','"+meg+"','"+showdate+"','"+username+"')";



boolean sert=connection.executeUpdata(sql);



if(sert)
{%>
<script language="javascript">
alert("您输入的车辆信息已经成功完成！！！");
</script>
<%
response.sendRedirect("car_select.jsp");
}else
{
%>
<script language="javascript">
alert("您输入的车辆信息插入失败！！！");
</script>
<%
response.sendRedirect("car_select.jsp");
}
%>
<body bgcolor="#ffffff">
</body>
</html>
