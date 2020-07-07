<%@ page contentType="text/html; charset=GBK" import="java.sql.*,java.util.Date"%>
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
%>
<%
request.setCharacterEncoding("gb2312");

String gclass=request.getParameter("gclass");
String gname=request.getParameter("gname");
String gcount=request.getParameter("gcount");
String gunit=request.getParameter("gunit");

String startProvince=request.getParameter("StartProvince");
String gstartcity=request.getParameter("StartCity");
String endProvince=request.getParameter("EndProvince");
String gendcity=request.getParameter("EndCity");



String gtransstyle=request.getParameter("gtransstyle");
String gtime=request.getParameter("gtime");
String glink=request.getParameter("glink");
String gphone=request.getParameter("gphone");
String gremark=request.getParameter("gremark");
String grequest=request.getParameter("grequest");
String username=request.getParameter("username");
String code=request.getParameter("code");
java.sql.Date gshowdate=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());





sql="update tb_GoodsMeg set GoodsStyle='"+
    gclass+"',GoodsName='"+gname+"',GoodsNumber='"+gcount+"',GoodsUnit='"+
    gunit+"',StartProvince='"+startProvince+"',StartCity='"+
    gstartcity+"',EndProvince='"+endProvince+"',EndCity='"+gendcity+"',Style='"+
    gtransstyle+"',TransportTime='"+gshowdate+"',Phone='"+
    gphone+"',Link='"+glink+"',IssueDate='"+gshowdate+"',Remark='"+
    gremark+"',Request='"+grequest+"',UserName='"+
    username+"' where ID="+request.getParameter("code");
	
	
boolean sert=connection.executeUpdata(sql);


if(sert)
{%>
<script language="javascript">
alert("您输入的货物信息已经成功修改！！！");
</script>
<%
response.sendRedirect("goods_select.jsp");
}else
{
%>
<script language="javascript">
alert("您输入的货物信息修改失败！！！");
history.back();
</script>
<%
}
%>
</body>
</html>
