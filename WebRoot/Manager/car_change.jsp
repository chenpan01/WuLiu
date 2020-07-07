<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../CSS/style.css">
<title>
CarMessage_change page
</title>
</head>
<Script language="javascript">
function check()
{
 if(form1.numbers.value=="")
{
alert("请填写车牌号码！！");
form1.numbers.focus();
return false;
}
if(form1.type.value=="")
{
alert("请填写车辆类型！！！");
form1.type.focus();
return false;
}
if(form1.carname.value=="")
{
alert("请填写车辆品牌！！！");
form1.carname.focus();
return false;
}
if(form1.loads.value=="")
{
alert("请填写车辆限重！！！");
form1.loads.focus();
return false;
}
if(form1.usetime.value=="")
{
alert("请填写使用年限！！！");
form1.usetime.focus();
return false;
}
if(form1.transtyle.value=="")
{
alert("请填写运输类型！！！");
form1.transtyle.focus();
return false;
}
if(form1.name.value=="")
{
alert("请填写驾驶员姓名！！！");
form1.name.focus();
return false;
}
if(form1.number.value=="")
{
alert("请填写驾驶证号码！！！");
form1.number.focus();
return false;
}
if(form1.styles.value=="")
{
alert("请填写驾驶证类型！！！");
form1.styles.focus();
return false;
}
if(form1.time.value=="")
{
alert("请填写驾驶员驾龄！！！");
form1.time.focus();
return false;
}
if(form1.linkman.value=="")
{alert("请填写联系人！！！");
form1.linkman.focus();
return false;
}
if(form1.phone.value=="")
{
alert("请填写联系电话！！！");
form1.phone.focus();
return false;
}
}
</Script>
<%!
ResultSet rs=null;
String sql;
String userName;
int num,code;
%>

<body bgcolor="#ffffff"><jsp:include page="mtop.jsp"/>
<form action="car_changeConfig.jsp" method="post"name="form1">
<table width="785" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
    <td width="100%" height="62" colspan="4" align="center">车辆信息修改</td>
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
    <td width="18%" height="34" align="center">车牌号码：</td>
    <td width="32%" height="34" align="center"><input type="text" name="numbers" size="20"value="<%=rs.getString("TradeMark")%>"></td>
    <td width="19%" height="34" align="center">车辆品名：</td>
    <td width="31%" height="34" align="center"><input type="text" name="carname" size="20"value="<%=rs.getString("Brand")%>"></td>
  </tr>
  <tr>
    <td width="18%" height="36" align="center">车辆类型：</td>
    <td width="32%" height="36" align="center"><input type="text" name="type" size="20"value="<%=rs.getString("Style")%>"></td>
    <td width="19%" height="36" align="center">车辆限量：</td>
    <td width="31%" height="36" align="center"><input type="text" name="loads" size="20"value="<%=rs.getString("CarLoad")%>">吨</td>
  </tr>
  <tr>
    <td width="18%" height="37" align="center">已使用：</td>
    <td width="32%" height="37" align="center"><input type="text" name="usetime" size="20"value="<%=rs.getString("UsedTime")%>">年</td>
       <td width="18%" height="37" align="center">驾驶员名称：</td>
    <td width="32%" height="37" align="center"><input type="text" name="name" size="20"value="<%=rs.getString("DriverName")%>"></td>
  </tr>
  <tr>
    <td width="19%" height="37" align="center">驾驶员驾龄：</td>
    <td width="31%" height="37" align="center"><input type="text" name="time" size="20"value="<%=rs.getString("DriverTime")%>">年</td>
    <td width="18%" height="36" align="center">驾驶证号码：</td>
    <td width="32%" height="36" align="center"><input type="text" name="number" size="20"value="<%=rs.getString("LicenceNumber")%>"></td>
  </tr>
  <tr>
    <td width="19%" height="36" align="center">驾驶证类型：</td>
    <td width="31%" height="36" align="center">
      <%
String styles=rs.getString("LicenceStyle");
 %>
     &nbsp; <select size="1" name="styles">
       <option value="<%=styles%>" selected><%=styles%></option>
        <option value="A类">A类</option>
        <option value="B类">B类</option>
        <option value="C类">C类</option>
       </select>
  </td>
   <td width="19%" height="37" align="center">运输类型：</td>
     <td width="31%" height="37" align="center">
      <%
String trans=rs.getString("TranspotStyle");
 %>
<select size="1" name="transtyle">
       <option value="<%=trans%>" selected><%=trans%></option>
        <option value="短途">短途</option>
        <option value="长途">长途</option>
       </select>
  </td>
</tr>
  <tr>
    <td width="18%" height="42" align="center">联系人：</td>
    <td width="32%" height="42" align="center"><input type="text" name="linkman" size="20"value="<%=rs.getString("LinkMan")%>"></td>
    <td width="19%" height="42" align="center">联系电话：</td>
    <td width="31%" height="42" align="center"><input type="text" name="phone" size="20"value="<%=rs.getString("LinkPhone")%>"></td>
  </tr>
  <tr>
    <td width="18%" height="65" align="center">备注：</td>
    <td width="82%" height="65" colspan="3">
   <textarea rows="3" name="meg" cols="76">
  <%=rs.getString("Remark")%></textarea></td>
  </tr>
  <tr>
    <td width="18%" height="42" align="center">发布时间：</td>
    <td width="32%" height="42">
      <p align="center"><%=rs.getString("IssueDate")%></td>
    <td width="19%" height="42" align="center">ID:</td>
    <td width="31%" height="42"><%=code%><input type="hidden" name="code" value="<%=code%>">  </td>
  </tr>
<tr>
    <td width="18%" height="42" align="center">发布人：</td>
    <td width="32%" height="42" colspan="3">
 
    <input type="text" name="username" size="20"value="<%=rs.getString("UserName")%>"></td>
  
  </tr>
<tr>
 <td width="104%" height="40" colspan="4">
    <p align="center">
 <input type="submit" name="show" value="修改" onClick="return check()">&nbsp;&nbsp;
  <input type="submit" name="reset" value="重置">       </td>
</tr>

<%
}

}catch(SQLException e)
{
 System.out.print("查询异常！！");
}
%>
</table>
</form><jsp:include page="down.jsp"/>
</body>
</html>
