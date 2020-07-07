<%@ page contentType="text/html; charset=gb2312"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="CSS/style.css">
<title>
Enterprise_show  page
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
if(form1.style.value=="")
{
alert("请填写运输类型！！！");
form1.style.focus();
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
if(form1.meg.value=="")
{
alert("请填写备注！！！");
form1.meg.focus();
return false;
}
}
</Script>

<body bgcolor="#ffffff"><jsp:include page="top.jsp"/>
<p align="center"><b><font size="6">车辆信息发布</font></b></p>
<form action="car_addConfig.jsp" method="POST" name="form1">
  <table width="786" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
    <tr>
      <td width="20%" height="43">
        <p align="center">车牌号码：</p>
      </td>
      <td width="36%" height="43">
       <input type="text" name="numbers" size="20">
      </td>
      <td width="18%" height="43">
        <p align="center">车辆类型：</p>
      </td>
      <td width="30%" height="43">
        <input type="text" name="type" size="20">
      </td>
    </tr>
    <tr>
      <td width="20%" height="42">
        <p align="center">车辆品名：</p>
      </td>
      <td width="36%" height="42">
       <input type="text" name="carname" size="20">
      </td>
      <td width="18%" height="42">
        <p align="center">车辆限量：</p>
      </td>
      <td width="30%" height="42">
        <input type="text" name="loads" size="15">吨
      </td>
    </tr>
    <tr>
      <td height="45" align="center">已使用年限：</td>
      <td height="45"><input name="usetime" type="text" size="20"></td>
      <td height="45" align="center">运输类型：</td>
      <td height="45"><select name="style">
	  <option value="长途" selected >长途</option>
	  <option value="短途">短途</option>
	  </select></td>
    </tr>
    <tr>
      <td height="45" align="center">驾驶员姓名：</td>
      <td height="45"><input type="text" name="name" size="20"></td>
      <td height="45" align="center">驾驶证号码：</td>
      <td height="45"><input type="text" name="number" size="20"></td>
    </tr>
    <tr>
      <td height="45" align="center">驾驶员驾龄</td>
      <td height="45"><input type="text" size="20" name="time">年</td>
      <td height="45" align="center">驾驶类型：</td>
      <td height="45"><select size="1" name="styles">
	  <option value="A" selected>A</option>
	  <option value="B" >B</option>
	  <option value="C">C</option>
	  </select></td>
    </tr>
    <tr>
      <td width="20%" height="45">
        <p align="center">联系电话：</p>
      </td>
      <td width="36%" height="45">
       <input type="text" name="phone" size="20">
      </td>
      <td width="18%" height="45">
        <p align="center">联系人：</p>
      </td>
      <td width="30%" height="45">
      <input type="text" name="linkman" size="20">
      </td>
    </tr>
    <tr>
      <td width="20%" height="78">
        <p align="center">备注：</p>
      </td>
      <td width="84%" height="78" colspan="3">
       <textarea rows="3" name="meg" cols="72"></textarea>
      </td>
    </tr>
    <tr>
      <td width="104%" height="40" colspan="4">
        <p align="center">
        <input type="submit" name="show" value="发布" onClick="return check()">&nbsp;&nbsp;
        <input type="submit" name="reset" value="重置">
      </td>
    </tr>
  </table>
</form>
</body>
</html>
