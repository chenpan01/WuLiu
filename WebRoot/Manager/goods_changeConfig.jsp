<%@ page contentType="text/html; charset=GB2312" import="java.sql.*,java.util.Date"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<title>
Goods_change_config page
</title>
</head>
<body bgcolor="#ffffff">
<%!
Date date=new Date();
String sql;
ResultSet rs;
int i;
%>
<%
request.setCharacterEncoding("gb2312");
String gclass=request.getParameter("gclass").trim();
String gname=request.getParameter("gname").trim();
String gcount=request.getParameter("gcount").trim();
String gunit=request.getParameter("gunit").trim();
String startProvince=request.getParameter("startProvince").trim();
String gstartcity=request.getParameter("gstartcity").trim();
String endProvince=request.getParameter("endProvince").trim();
String gendcity=request.getParameter("gendcity").trim();
String gtransstyle=request.getParameter("gtransstyle").trim();
String gtime=request.getParameter("gtime").trim();
String glink=request.getParameter("glink").trim();
String gphone=request.getParameter("gphone").trim();
String gremark=request.getParameter("gremark").trim();
String grequest=request.getParameter("grequest").trim();
String username=request.getParameter("username").trim();
java.sql.Date gshowdate=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());
sql="update tb_GoodsMeg set GoodsStyle='"+gclass+"',GoodsName='"+gname+"',GoodsNumber='"+
gcount+"',GoodsUnit='"+gunit+"',StartProvince='"+startProvince+"',StartCity='"+gstartcity+"',EndProvince='"+
endProvince+"',EndCity='"+gendcity+"',Style='"+gtransstyle+"',TransportTime='"+
gshowdate+"',Phone='"+gphone+"',Link='"+glink+"',IssueDate='"+
gshowdate+"',Remark='"+gremark+"',Request='"+grequest+"',UserName='"+
username+"' where ID="+request.getParameter("code");
boolean sert=connection.executeUpdata(sql);
if(sert)
{%>
<script language="javascript">
alert("您输入的货物信息已经成功修改！！！");

<%
response.sendRedirect("goods_select.jsp");
}else
{
%>
<script language="javascript">
alert("您输入的货物信息修改失败！！！");
history.back();
<%
}
%>
</script>
</body>
</html>
