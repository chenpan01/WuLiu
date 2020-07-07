<%@ page contentType="text/html; charset=gb2312" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<title>
登录
</title>
</head>
<Script language="javascript">
function check()
{
	if(form1.name.value=="")
	{
		alert("请输入用户名！！");
		form1.name.focus();
		form1.password.value="";
		return false;
	}
	if(form1.password.value=="")
	{
		alert("请输入密码！！！");
		form1.password.focus();
		return false;
	}
}
function goback()
{
	window.location.href="index.jsp";
}
</Script>
<link rel="stylesheet" href="CSS/style.css">
<body bgcolor="#ffffff">
<center>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr>
    <td  height="80" align="center" background="image/top_1.png">
	
      <table height="80" border="0" cellpadding="0" cellspacing="0" background="image/top_2.png">
        <tr>
          <td width="787"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="100%" height="75">
    <param name="movie" value="top.swf" />
    <param name="quality" value="high" />
    <param name="wmode" value="transparent" />
    <embed src="image/top.swf" width="100%" height="75" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent"></embed>
  </object></td>
        </tr>
      </table>
	  
 	</td>
  </tr>
</table>

<table width="100%" height="42" border="0" cellpadding="0" cellspacing="0" background="image/20.jpg">
  <tr>
    <td valign="bottom"><table width="100" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><img src="image/21.jpg" width="791" height="35"></td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="100" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="image/22.jpg" width="791" height="83"></td>
  </tr>
</table>
<table width="791" border="0" cellpadding="0" cellspacing="0" background="image/23.jpg">
  <tr>
    <td height="149">	<form name="form1" action="login_config.jsp" method="post">
	<table width="272" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="30">
        用户名:<input type="text" name="name" size="11" maxlength="20"></td>
       </tr>
       <tr>
			<td>密码:
			  <input type="password" name="password" size="12" maxlength="20"></td>
       </tr>
      <tr>
        <td height="30">
		<input type="submit" value="登录" name="login" onClick="return check()">
<input type="button" value="返回主页" name="back" onClick="goback()">
             &nbsp;&nbsp;</td>
        </tr>
    </table></form></td>
  </tr>
</table>
<table width="100" border="0" cellpadding="0" cellspacing="0">
</table>


</center>
</body>
</html>

