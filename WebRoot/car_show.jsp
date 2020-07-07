<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="CSS/style.css">
<title>
CarMessageshow
</title>
</head>
<%!
ResultSet rs=null;
String sql;
String userName,username;
String login;
int code;
%>

<body bgcolor="#ffffff">
<%
login=(String)session.getAttribute("login");
 username=(String)session.getAttribute("name");
if(login==null)
{
%>
<script language="javascript">
alert("您未登录");
<%
response.sendRedirect("login.jsp");
%>
</script>
<%}
%><jsp:include page="top.jsp"/>
<table width="786" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
    <td width="100%" height="62" colspan="4">
      <p align="center"><font size="7">车辆信息展示</font></td>
  </tr>
<%

sql="select * from tb_CarMessage where Code="+request.getParameter("id");
try
{
rs=connection.executeQuery(sql);
if(rs.next())
{
code=rs.getInt("Code");
%>
  <tr>
    <td width="18%" height="34" align="center"><font size="4">车牌号</font></td>
    <td width="32%" height="34" align="center"><%=rs.getString("TradeMark")%></td>
    <td width="19%" height="34" align="center"><font size="4">车品名</font></td>
    <td width="31%" height="34" align="center"><%=rs.getString("Brand")%></td>
  </tr>
  <tr>
    <td width="18%" height="36" align="center"><font size="4">车辆类型</font></td>
    <td width="32%" height="36" align="center"><%=rs.getString("Style")%></td>
    <td width="19%" height="36" align="center"><font size="4">车辆载重</font></td>
    <td width="31%" height="36" align="center"><%=rs.getString("CarLoad")%>吨</td>
  </tr>
  <tr>
    <td width="18%" height="37" align="center"><font size="4">使用时间</font></td>
    <td width="32%" height="37" align="center"><%=rs.getString("UsedTime")%>年</td>
       <td width="18%" height="37" align="center"><font size="4">驾驶员姓名</font></td>
    <td width="32%" height="37" align="center"><%=rs.getString("DriverName")%></td>
  </tr>
  <tr>
    <td width="19%" height="37" align="center"><font size="4">驾驶时间</font></td>
    <td width="31%" height="37" align="center"><%=rs.getString("DriverTime")%></td>
    <td width="18%" height="36" align="center"><font size="4">驾照号码</font></td>
    <td width="32%" height="36" align="center"><%=rs.getString("LicenceNumber")%></td>
  </tr>
  <tr>
    <td width="19%" height="36" align="center"><font size="4">驾照类型</font></td>
    <td width="31%" height="36" align="center"><%=rs.getString("LicenceStyle")%></td>
   <td width="19%" height="37" align="center"><font size="4">运输类型</font></td>
     <td width="31%" height="37" align="center"><%=rs.getString("TranspotStyle")%></td>
</tr>
  <tr>
    <td width="18%" height="42" align="center"><font size="4">联系人</font></td>
    <td width="32%" height="42" align="center"><%=rs.getString("LinkMan")%></td>
    <td width="19%" height="42" align="center"><font size="4">联系电话</font></td>
    <td width="31%" height="42" align="center"><%=rs.getString("LinkPhone")%></td>
  </tr>
  <tr>
    <td width="18%" height="65" align="center"><font size="4">备注</font></td>
    <td width="82%" height="65" colspan="3">
    <%=rs.getString("Remark")%></td>
  </tr>
  <tr>
    <td width="18%" height="42" align="center">发布时间</td>
    <td width="32%" height="42">
      <p align="center"><%=rs.getString("IssueDate")%></td>
    <td width="19%" height="42" align="center">发布人</td>
  <%userName=rs.getString("UserName");%>
    <td width="31%" height="42" align="center"><%=userName%></td>
  </tr>
<%
 if(userName.equals(username))
{
 %>
 <tr>
      <td width="100%" height="33" colspan="4" align="center">
        <a href="car_change.jsp?id=<%=code%>">修改</a>&nbsp;&nbsp;
        <a href="car_delete.jsp?id=<%=code%>">删除</a>
    </td>
  </tr>
<%
}
}

}catch(SQLException e)
{
 System.out.print("查询异常");
}
%>
</table>
</body>
</html>
