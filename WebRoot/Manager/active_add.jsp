<%@ page contentType="text/html; charset=gb2312" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../CSS/style.css">

<title>
placard_show page
</title>
<style type="text/css">
<!--
.style2 {color: #FF0000}
-->
</style></head>
<script language="javascript">
function check()
{
if(form1.title.value=="")
{
alert("请填写标题！！！");
form1.title.focus();
return false;
}
if(form1.content.value=="")
{
alert("请填写内容！！！");
form1.content.focus();
return false;
}
if(form1.author.value=="")
{
alert("请填写作者！！！");
form1.author.focus();
return false;
}
}
</script>
<body bgcolor="#ffffff"><jsp:include page="mtop.jsp"/>
<form method="POST" action="active_config.jsp"name="form1">
<table width="785" height="174" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
    <td width="100%" height="39"><div align="center">物流动态信息发布</div></td>
  </tr>
  <tr>
    <td width="100%" height="37">标题：
   <input type="text" name="title" size="37"> 
   * 标题最多能够填写50个字符.</td>
  </tr>
  <tr>
    <td width="100%" height="37">*  注意以下内容最多可以写2000个字</td>
  </tr>
  <tr>
    <td width="100%" height="36">
   <textarea rows="20" name="content" cols="100"></textarea></td>
  </tr>
<tr>
    <td width="100%" height="37">作者：
   <input type="text" name="author" size="37"></td>
  </tr>
  <tr>
    <td width="100%" height="16">
   <input type="submit" value="发布" name="B1"onClick="return check()">
   <input type="reset" value="重写" name="B2">
&nbsp;&nbsp;&nbsp;<a href="active_select.jsp">返回</a>
</td>
  </tr>
</table>
</form><jsp:include page="down.jsp"/>
</body>
</html>
