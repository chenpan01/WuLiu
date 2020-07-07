<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="CSS/style.css">
<title>
CarMessage_change page
</title>
</head>
<Script language="javascript">
function check()
{
 if(form1.numbers.value=="")
{
alert("请输入车牌号！！");
form1.numbers.focus();
return false;
}
if(form1.type.value=="")
{
alert("请输入车辆类型！1");
form1.type.focus();
return false;
}
if(form1.carname.value=="")
{
alert("请输入车品名！！");
form1.carname.focus();
return false;
}
if(form1.loads.value=="")
{
alert("请输入车辆载重！！！");
form1.loads.focus();
return false;
}
if(form1.usetime.value=="")
{
alert("请输入车辆使用时间！！！");
form1.usetime.focus();
return false;
}
if(form1.transtyle.value=="")
{
alert("请输入运输类型！！！");
form1.style.focus();
return false;
}
if(form1.name.value=="")
{
alert("请输入驾驶员姓名！！1");
form1.name.focus();
return false;
}
if(form1.number.value=="")
{
alert("请输入驾证号码！！！");
form1.number.focus();
return false;
}
if(form1.styles.value=="")
{
alert("请输入驾证类型！！！");
form1.styles.focus();
return false;
}
if(form1.time.value=="")
{
alert("请输入驾驶员驾龄！！");
form1.time.focus();
return false;
}
if(form1.linkman.value=="")
{alert("请输入联系人姓名！！！");
form1.linkman.focus();
return false;
}
if(form1.phone.value=="")
{
alert("请输入联系电话！！");
form1.phone.focus();
return false;
}
}
</Script>
<%!
ResultSet rs=null;
String sql;
String userName;
int code;
%>
<body bgcolor="#ffffff">

<jsp:include page="top.jsp"/>
<form action="car_changeConfig.jsp" name="form1">
<table  width="786" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
    <td width="100%" height="38" colspan="4">
      <p align="center"><font size="7" >车辆信息修改</font></td>
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
    <td width="18%" height="34">车牌号</td>
    <td width="32%" height="34"><input type="text" readonly="yes"  name="numbers" size="20"value="<%=rs.getString("TradeMark")%>"></td>
    <td width="19%" height="34">车品名</td>
    <td width="31%" height="34"><input type="text" name="carname" size="20"value="<%=rs.getString("Brand")%>"></td>
  </tr>
  <tr>
    <td width="18%" height="36">车辆类型</td>
    <td width="32%" height="36"><input type="text" name="type" size="20"value="<%=rs.getString("Style")%>"></td>
    <td width="19%" height="36">载重</td>
    <td width="31%" height="36"><input type="text" name="loads" size="20"value="<%=rs.getString("CarLoad")%>">吨</td>
  </tr>
  <tr>
    <td width="18%" height="37">使用时间</td>
    <td width="32%" height="37"><input type="text" name="usetime" size="20"value="<%=rs.getString("UsedTime")%>">年</td>
       <td width="18%" height="37">驾驶员姓名</td>
    <td width="32%" height="37"><input type="text" name="name" size="20"value="<%=rs.getString("DriverName")%>"></td>
  </tr>
  <tr>
    <td width="19%" height="37">驾龄</td>
    <td width="31%" height="37"><input type="text" name="time" size="20"value="<%=rs.getString("DriverTime")%>"></td>
    <td width="18%" height="36">驾驶证号码</td>
    <td width="32%" height="36"><input type="text" name="number" size="20"value="<%=rs.getString("LicenceNumber")%>"></td>
  </tr>
  <tr>
    <td width="19%" height="36">驾驶证类型</td>
    <td width="31%" height="36"><input type="text" name="styles" size="20"value="<%=rs.getString("LicenceStyle")%>"></td>
   <td width="19%" height="37">运输类型</td>
     <td width="31%" height="37"><input type="text" name="transtyle" size="20"value="<%=rs.getString("TranspotStyle")%>"></td>
</tr>
  <tr>
    <td width="18%" height="42">联系人</td>
    <td width="32%" height="42"><input type="text" name="linkman" size="20"value="<%=rs.getString("LinkMan")%>"></td>
    <td width="19%" height="42">联系电话</td>
    <td width="31%" height="42"><input type="text" name="phone" size="20"value="<%=rs.getString("LinkPhone")%>"></td>
  </tr>
  <tr>
    <td width="18%" height="65">备注</td>
    <td width="82%" height="65" colspan="3">
   <textarea rows="3" name="remark" cols="76">
  <%=rs.getString("Remark")%></textarea></td>
  </tr>
  <tr>
    <td width="18%" height="42">发布时间</td>
    <td width="32%" height="42">
<input type="text" name="issuedate" size="20"value="<%=rs.getString("IssueDate")%>"></td>
    <td width="19%" height="42">ID:</td>
    <td width="31%" height="42"><input type="hidden" name="numb" value="<%=code%>"> <%=code%> </td>
  </tr>
<tr>
    <tr>
    <td width="18%" height="23">发布人</td>
    <td width="32%" height="23" colspan="3"><%=rs.getString("UserName")%>

<input type="hidden" name="user" size="20"value="<%=rs.getString("UserName")%>"></td>
  </tr>
<tr>
 <td width="786" height="40" colspan="4">

   <div align="center">
       <input type="submit" name="show" value="修改" onClick="return check()">
     &nbsp;&nbsp;
       <input type="submit" name="reset" value="重写">
&nbsp;&nbsp; 
    <input type="button" name="back" value="返回" onClick="history.back()">
   </div></td>
</tr>

<%
}


}catch(SQLException e)
{
 System.out.print("查询异常");
}
%>
</table>
</form>
</body>
</html>
