<%@ page contentType="text/html; charset=gb2312" import="java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="CSS/style.css">
<title>
Goods_change page
</title>
</head>
<Script language="javascript">
function check()
{
 if(form1.gclass.value=="")
{
 alert("请填写货物类型！！");
form1.gclass.focus();
return false;
}
if(form1.gname.value=="")
{
alert("请填写货物名称！！！");
form1.gname.focus();
return false;
}
if(form1.gcount.value=="")
{
alert("请填写货物数量！！！");
form1.gcount.focus();
return false;
}
if(form1.gunit.value=="")
{
alert("请填写货物数量单位！！！");
form1.gunit.focus();
return false;
}
if(form1.startProvince.value=="")
{
alert("请填写起始省份！！！");
form1.startProvince.focue();
return false;
}
if(form1.gstartcity.value=="")
{
alert("请填写起始城市！！！");
form1.gstartcity.focue();
return false;
}
if(form1.endProvince.value=="")
{
alert("请填写抵达省份！！！");
form1.endProvince.focus();
return false;
}
if(form1.gendcity.value=="")
{
alert("请填写抵达城市！！！");
form1.gendfirm.focus();
return false;
}
if(form1.gtransstyle.value=="")
{
alert("请填写运输类型！！！");
form1.gtransstyle.focue();
return false;
}
if(form1.gtime.value=="")
{
alert("请填写运输时间！！！");
form1.gtime.focus();
return false;
}
if(form1.glink.value=="")
{alert("请填写联系人！！！");
form1.glink.focus();
return false;
}
if(form1.gphone.value=="")
{
alert("请填写联系电话！！！");
form1.gphone.focus();
return false;
}
if(form1.gremark.value=="")
{
alert("请填写备注！！！");
form1.gremark.focus();
return false;
}
if(form1.grequest.value=="")
{
alert("请填写要求！！！");
form1.grequest.focus();
return false;}
if(form1.username.value=="")
{
alert("请填写完整发布人名！！！");
form1.grequest.focus();
return false;
}
}
</Script>

<body bgcolor="#ffffff"><jsp:include page="top.jsp"/>
<p align="center"><b>货物信息修改</b></p>
<form method="POST" action="goods_changeConfig.jsp" name="form1">
<%
int num;
String sql="select * from tb_GoodsMeg where ID="+request.getParameter("id");
ResultSet rs=connection.executeQuery(sql);
if(rs.next())
{
num=rs.getInt("ID");
%>
  <table width="786" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
    <tr>
      <td width="20%" height="43">
        <p align="center">货物类型：</p>
      </td>
      <td width="36%" height="43">
        <p align="center"><input type="text" name="gclass" value=" <%=rs.getString("GoodsStyle")%>" size="20"></p>
      </td>
      <td width="18%" height="43">
        <p align="center">货物名称：</p>
      </td>
      <td width="30%" height="43">
        <p align="center"><input type="text" name="gname" size="20" value="<%=rs.getString("GoodsName")%>"></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="42">
        <p align="center">货物数量：</p>
      </td>
      <td width="36%" height="42">
        <p align="center"><input type="text" name="gcount" size="20"value="<%=rs.getString("GoodsNumber")%>"></p>
      </td>
      <td width="18%" height="42">
        <p align="center">数量单位：</p>
      </td>
      <td width="30%" height="42">
        <p align="center"><input type="text" name="gunit" size="20" value=" <%=rs.getString("GoodsUnit")%>"></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="43">
        <p align="center">起始省份：</p>
      </td>
      <td width="36%" height="43">
        <p align="center"><input type="text" name="StartProvince" size="20" value="<%=rs.getString("StartProvince")%>"></p>
      </td>
      <td width="18%" height="43">
        <p align="center">起始城市：</p>
      </td>
      <td width="30%" height="43">
        <p align="center"><input type="text" name="StartCity" size="20" value="<%=rs.getString("StartCity")%>"></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="46">
        <p align="center">抵达省份：</p>
      </td>
      <td width="36%" height="46">
        <p align="center"><input type="text" name="EndProvince" size="20" value="<%=rs.getString("EndProvince")%>"></p>
      </td>
      <td width="18%" height="46">
        <p align="center">抵达城市：</p>
      </td>
      <td width="30%" height="46">
        <p align="center"><input type="text" name="EndCity" size="20" value="<%=rs.getString("EndCity")%>"></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="45">
        <p align="center">运输类型：</p>
      </td>
      <td width="36%" height="45">
      <p align="center">
      &nbsp; <select size="1" name="gtransstyle">
        <option value="普通" selected>普通</option>
        <option value="快速">快速</option>
        <option value="特快">特快</option>
        <option value="加急">加急</option>
       </select>
      </p>
      </td>
      <td width="18%" height="45">
        <p align="center">运输时间：</p>
      </td>
      <td width="30%" height="45">
        <p align="center"><input type="text" name="gtime" size="20" value="<%=rs.getString("TransportTime")%>"></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="45">
        <p align="center">联系电话></p>
      </td>
      <td width="36%" height="45">
        <p align="center"><input type="text" name="gphone" size="20" value="<%=rs.getString("Phone")%>"></p>
      </td>
      <td width="18%" height="45">
        <p align="center">联系人：</p>
      </td>
      <td width="30%" height="45">
        <p align="center"><input type="text" name="glink" size="20"value="<%=rs.getString("Link")%>"></p>
      </td>
    </tr>
 <tr>
      <td width="20%" height="40"  c>
        <p align="center">发布时间：</td>
      <td width="36%" height="40" colspan="3">
       <input type="text" name="dd" size="20" value="<%=rs.getDate("IssueDate")%>">
       </td>
    </tr>
    <tr>
      <td width="20%" height="78">
        <p align="center">备注：</p>
      </td>
      <td width="84%" height="78" colspan="3">
        <p align="left"><textarea rows="5" name="gremark" cols="80"><%=rs.getString("Remark")%></textarea></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="74">
        <p align="center">车辆要求：</p>
      </td>
      <td width="84%" height="74" colspan="3">
        <p align="left"><textarea rows="5" name="grequest" cols="80"><%=rs.getString("Request")%></textarea></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="33">
      <p align="center">发布人：</td>
      <td width="36%" height="33">
      <p align="center"><input type="text" name="username" size="20" value="<%=rs.getString("UserName")%>"></td>
       <td width="20%" height="33">
      <p align="center">ID</td>
	   <td width="20%" height="33">
      <p align="center"><%=num%><input type="hidden" name="code" value="<%=num%>"></p>      </td>
    </tr>
    <tr>
      <td width="786" height="40" colspan="4">
        <p align="center">
        <input type="submit" name="change" value="修改" onClick="return check()">
       <input type="reset" value="重置">
     </td>
    </tr>
  </table>
<%}%>
</form>
</body>
</html>
