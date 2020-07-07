<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../CSS/style.css">
<title>
enterprise page
</title>
</head>
<%
ResultSet rs=null;
String sql;
int code;
%>
<body bgcolor="#ffffff">
<jsp:include page="mtop.jsp"/><form action="enterprise_changeConfig.jsp" method="post"name="form1">
<table width="784" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
<%
String userName=(String)session.getAttribute("name");
sql="select *  from tb_Enterprise where ID="+request.getParameter("id");
rs=connection.executeQuery(sql);
while(rs.next())
{
code=rs.getInt("ID");
%>
    <tr>
    <td width="786" height="40" colspan="4">
      <p align="center">企业信息展示</td>
  </tr>
  <tr>
    <td width="115" height="36">企业类型：</td>
    <td width="265" height="36"><input type="text" name="style" size="20"  value="<%=rs.getString("EnterpriseSort")%>"></td>
    <td width="125" height="36">企业名称：</td>
    <td width="253" height="36"><input type="text" name="name" size="20" value="<%=rs.getString("EnterpriseName")%>"></td>
  </tr>
  <tr>
    <td width="115" height="35">经营范围</td>
    <td width="265" height="35"><input type="text" name="operation" size="20" value="<%=rs.getString("Operation")%>"></td>
    <td width="125" height="35">所属区域：</td>
    <td width="253" height="35"><input type="text" name="area" size="20"value="<%=rs.getString("WorkArea")%>"></td>
  </tr>
  <tr>
    <td width="115" height="38">企业地址</td>
    <td width="265" height="38"><input type="text" name="address" size="20"value="<%=rs.getString("Address")%>"></td>
    <td width="125" height="38">联系电话：</td>
    <td width="253" height="38"><input type="text" name="phone" size="20"value="<%=rs.getString("Phone")%>"></td>
  </tr>
  <tr>
    <td width="115" height="34">联系人：</td>
    <td width="265" height="34"><input type="text" name="linkman" size="20"value="<%=rs.getString("LinkMan")%>"></td>
    <td width="125" height="34">手机号：</td>
    <td width="253" height="34"><input type="text" name="hand" size="20"value="<%=rs.getString("HandSet")%>"></td>
  </tr>
  <tr>
    <td width="115" height="35">传真号：</td>
    <td width="265" height="35"><input type="text" name="fax" size="20"value="<%=rs.getString("Fax")%>"></td>
    <td width="125" height="35">邮件网址</td>
    <td width="253" height="35"><input type="text" name="email" size="20"value="<%=rs.getString("Email")%>"></td>
  </tr>
  <tr>
    <td width="115" height="34">企业网址：</td>
    <td width="265" height="34"><input type="text" name="web" size="20"value="<%=rs.getString("Http")%>"></td>
    <td width="125" height="34">类型介绍：</td>
    <td width="253" height="34"><input type="text" name="intr" size="20"value="<%=rs.getString("Intro")%>"></td>
  </tr>
<tr>
    <td width="115" height="34">发布时间：</td>
    <td width="265" height="34"><%=rs.getString("IssueDate")%></td>
    <td width="125" height="34">发布人：</td>
   <td width="253" height="34"><input type="text" name="user" size="20"value="<%=rs.getString("UserName")%>">
   <input type="hidden" name="code" size="5"value="<%=code%>"></td>
  </tr>
  <tr>
    <td width="786" height="45" colspan="4" align="center">      
	 <input type="submit" name="show" value="修改" onClick="return check()">&nbsp;&nbsp;           
    <input type="submit" value="返回" name="B1" onClick="check()"> 
     <script language="javascript">
	 function check(){
	 window.location.href="enterprise_select.jsp";
	 }</script>
</td>
  </tr>

<%
}
%>
</table><jsp:include page="down.jsp"/>
</body>
</html>
