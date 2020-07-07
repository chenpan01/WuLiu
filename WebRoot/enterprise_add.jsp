<%@ page language="java" contentType="text/html;charset=gb2312" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="CSS/style.css">
<title>New Page 1</title>
</head>
<script language="javascript">
function check()
{
if(form1.name.value=="")
{
alert("请输入企业名称！1");
form1.name.focus();
return false;
}
if(form1.style.value=="")
{
alert("请输入企业类型！！！");
form1.style.focus();
return false();
}
if(form1.operation.value=="")
{
alert("请输入企业的经营范围！！");
form1.operation.focus();
return false;
}
if(form1.area.value=="")
{
alert("请输入企业所属区域！！");
form1.area.focus();
return false;
}
if(form1.address.value=="")
{
alert("请输入企业地址！！！");
form1.address.focus();
return false;
}
if(form1.phone.value=="")
{
alert("请输入企业联系电话！！！");
form1.phone.focus();
return false;
}
if(form1.linkman.value=="")
{
alert("请输入企业联系人！！！");
form1.linkman.focus();
return false;
}
if(form1.hand.value=="")
{
alert("请输入手机号！！！");
form1.hand.focus();
return false;
}
if(form1.fax.value=="")
{
alert("请输入企业传真号！！！");
form1.fax.focus();
return false;
}
if(form1.email.value=="")
{
alert("请输入企业邮件网址！！！");
form1.email.focus();
return false;
}
if(form1.web.value=="")
{
alert("请输入企业网址！！！");
form1.web.focus();
return false;
}
if(form1.intr.value=="")
{
alert("请输入企业类型介绍！！！");
form1.intr.focus();
return false;
}
}
</script>

<body><jsp:include page="top.jsp"/>
  <form method="POST" action="enterprise_addConfig.jsp" name="form1">
<table width="786" height="345" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
    <td width="758" height="40" colspan="4">
      <p align="center"><font size="6">企业信息发布</font></td>
  </tr>
  <tr>
    <td width="115" height="36" align="center">企业类型：</td>
    <td width="265" height="36"><input type="text" name="style" size="20"></td>
    <td width="125" height="36" align="center">企业名称：</td>
    <td width="253" height="36"><input type="text" name="name" size="20"></td>
  </tr>
  <tr>
    <td width="115" height="35" align="center">经营范围</td>
    <td width="265" height="35"><input type="text" name="operation" size="20"></td>
    <td width="125" height="35" align="center">所属区域：</td>
    <td width="253" height="35"><input type="text" name="area" size="20"></td>
  </tr>
  <tr>
    <td width="115" height="38" align="center">企业地址</td>
    <td width="265" height="38"><input type="text" name="address" size="20"></td>
    <td width="125" height="38" align="center">联系电话：</td>
    <td width="253" height="38"><input type="text" name="phone" size="20"></td>
  </tr>
  <tr>
    <td width="115" height="34" align="center">联系人：</td>
    <td width="265" height="34"><input type="text" name="linkman" size="20"></td>
    <td width="125" height="34" align="center">手机号：</td>
    <td width="253" height="34"><input type="text" name="hand" size="20"></td>
  </tr>
  <tr>
    <td width="115" height="35" align="center">传真号：</td>
    <td width="265" height="35"><input type="text" name="fax" size="20"></td>
    <td width="125" height="35" align="center">邮件网址</td>
    <td width="253" height="35"><input type="text" name="email" size="20"></td>
  </tr>
  <tr>
    <td width="115" height="34" align="center">企业网址：</td>
    <td width="265" height="34"><input type="text" name="web" size="20"></td>
    <td width="125" height="34" align="center">类型介绍：</td>
    <td width="253" height="34"><input type="text" name="intr" size="20"></td>
  </tr>
  <tr>
    <td width="758" height="45" colspan="4" align="center">
      <p><input type="submit" value="发布" name="B1" onClick="return check()"><input type="reset" value="重写" name="B2"></td>
  </tr>
</table>
</form>
</body>

</html>
