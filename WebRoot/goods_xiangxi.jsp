<%@ page contentType="text/html; charset=gb2312" import="java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="CSS/style.css">
<title>
Goods_xiangxi page

</title>
</head>
<%!
ResultSet rs=null;
String sql;
String code,userName;
String username,login;
int num;
%>

<body bgcolor="#ffffff">
<%
code=request.getParameter("id");
sql="select * from tb_GoodsMeg where ID="+code;

login=(String)session.getAttribute("login");
username=(String)session.getAttribute("name");
if(login==null)
{
%>
<script language="javascript">
alert("您还未登录，不能浏览详细信息！！！");
<%
response.sendRedirect("login.jsp");
%>
</script>
<%}
%>
<jsp:include page="top.jsp"/>
<table width="785" height="480" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
    <td width="100%" height="52" colspan="4" align="center">
  货物详细信息</td>
  </tr>
<%try
{
rs=connection.executeQuery(sql);
if(rs.next())
{
%>
<tr>
    <td width="17%" height="29" align="center">货物类型：</td>
    <td width="36%" height="29" align="center"><%=rs.getString("GoodsStyle")%></td>
    <td width="17%" height="29" align="center" valign="middle">货物名称：</td>
    <td width="30%" height="29" align="center"><%=rs.getString("GoodsName")%></td>
  </tr>
  <tr>
    <td width="17%" height="29" align="center">货物数量：</td>
    <td width="36%" height="29" align="center"><%=rs.getString("GoodsNumber")%> </td>
    <td width="17%" height="29" align="center" valign="middle">数量单位：</td>
    <td width="30%" height="29" align="center">  <%=rs.getString("GoodsUnit")%></td>
  </tr>
  <tr>
    <td width="17%" height="29" align="center">起始省份：</td>
    <td width="36%" height="29" align="center"><%=rs.getString("StartProvince")%></td>
    <td width="17%" height="29" align="center" valign="middle">起始城市：</td>
    <td width="30%" height="29" align="center"><%=rs.getString("StartCity")%></td>
  </tr>
  <tr>
    <td width="17%" height="29" align="center">抵达省份：</td>
    <td width="36%" height="29" align="center"><%=rs.getString("EndProvince")%></td>
    <td width="17%" height="29" align="center" valign="middle">抵达城市：</td>
    <td width="30%" height="29" align="center"><%=rs.getString("EndCity")%></td>
  </tr>
  <tr>
    <td width="17%" height="30" align="center">运输类型：</td>
    <td width="36%" height="30" align="center"> <%=rs.getString("Style")%></td>
    <td width="17%" height="30" align="center" valign="middle">运输时间：</td>
    <td width="30%" height="30" align="center"> <%=rs.getString("TransportTime")%></td>
  </tr>
  <tr>
    <td width="17%" height="29" align="center">联系电话：</td>
    <td width="36%" height="29" align="center"><%=rs.getString("Phone")%></td>
    <td width="17%" height="29" align="center" valign="middle">联系人：</td>
    <td width="30%" height="29" align="center"><%=rs.getString("Link")%> </td>
  </tr>
  <tr>
    <td width="17%" height="31" align="center">发布时间：</td>
    <td width="36%" height="31" align="left" colspan="3"><%=rs.getDate("IssueDate")%></td>

  </tr>
  <tr>
    <td width="17%" height="1" align="center">备注：</td>
    <td width="83%" height="1" align="center" colspan="3">
      <p align="left"><textarea rows="3" name="S1" cols="76"><%=rs.getString("Remark")%></textarea></td>
  </tr>
  <tr>
    <td width="17%" height="52" align="center">车辆要求：</td>
    <td width="83%" height="52" align="center" colspan="3">
      <p align="left"><textarea rows="3" name="S1" cols="76"><%=rs.getString("Request")%></textarea></td>
  </tr>
<tr>
 <%
userName=rs.getString("UserName");
 %>
    <td width="17%" height="31" align="center">发布人：</td>
    <td width="36%" height="31" align="left" colspan="3"><%=userName%></td>
  
  </tr>
<%
if(userName.equals(username))
   {
   %>
    <tr>
      <td width="100%" height="45" colspan="4" align="center">
        <a href="goods_change.jsp?id=<%=code%>">修改</a>&nbsp;&nbsp;
        <a href="goods_delete.jsp?id=<%=code%>">删除</a></td>
  </tr>

<%
   }

}

}catch(SQLException e)
{
 System.out.print("查询异常！！");
}

%>
</table>
</body>
</html>
