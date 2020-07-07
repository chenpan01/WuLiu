<%@ page contentType="text/html; charset=gb2312" %>
<html>
<head>
<title>
login
</title>
<link href="../CSS/style.css" type="text/css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<Script language="javascript">
function check()
{
if(form1.name.value=="")
{
alert("请输入姓名");
form1.name.focus();
return false;
}
if(form1.password.value=="")
{
alert("请输入密码");
form1.password.focus();
return false;
}
}
function goback()
{
window.location.href="../index.jsp";
}
</Script>
<body bgcolor="#ffffff">
<center>

  
  
  
  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr>
    <td  height="80" align="center" background="../image/top_1.png">
	
      <table height="80" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="787"><img src="../image/top_2.png"></td>
        </tr>
      </table>
	  
 	</td>
  </tr>
</table>

<table width="100%" height="42" border="0" cellpadding="0" cellspacing="0" background="../image/20.jpg">
  <tr>
    <td valign="bottom"><table width="100" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><img src="../image/21.jpg" width="791" height="35"></td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="100" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="../image/22.jpg" width="791" height="83"></td>
  </tr>
</table>
<table width="791" border="0" cellpadding="0" cellspacing="0" background="../image/23.jpg">
  <tr>
    <td height="149">	
    <form name="form1" action="manager_config.jsp" method="post">
	<table width="272" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="30">      
		  &nbsp;用户名:
          <input type="text" name="name" size="11" maxlength="20">
	    密码:
	    <input type="password" name="password" size="11" maxlength="20">  </td>
        </tr>
      <tr>
        <td height="30">
        <input type="submit" value="登录" name="submit" onClick="return check()">
	  &nbsp;&nbsp;<input type="button" name="back" value="返回主页" onClick="goback()">&nbsp;
		</td>
        </tr>
    </table></form></td>
  </tr>
</table>
<table width="100" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="../image/24_1.jpg" width="791" height="203"></td>
  </tr>
</table>
    
  
  
  
  
  
  
  
  
  
  
</center>
</body>
</html>
