<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" %>
<% request.setCharacterEncoding("gb2312"); %>
<link href="CSS/style.css" type="text/css" rel="stylesheet">
<html>
<head>
<title>找回密码窗口</title>
</head><script language="javascript">

        function check(){
                if(form1.username.value==""){
                        alert("这样都能找回密码太好笑了");
                        form1.username.focus();
                        return false;

                }
                if(form1.email.value==""){
                        alert("请输入你的Email址");
                        form1.email.focus();
                        return false;
                }
                if(form1.question.value==""){
                        alert("请输入提示的问题");
                        form1.question.focus();
                        return false;
 }
                if(form1.result.value==""){
                        alert("请输入提示问题的答案");
                        form1.result.focus();
                        return false;

                }
        }
		</script>
<body>

<br>  <form action="found_config.jsp" name="form1" method="post">
<table width="502" height="213" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#E8FFFF" class="tableBorder">

  <tr>
    <td height="43" colspan="4" align="center" class="head">&nbsp;</td>
  </tr>
  <tr>
    <td width="33" rowspan="4" align="center" valign="middle" >&nbsp;</td>
    <td width="176" height="23">用户名:    </td>
    <td width="258"><input name="username" type="text" size="31"></td>
    <td width="35" rowspan="4">&nbsp;</td>
  </tr>
  <tr>
    <td height="23">Email:</td>
    <td height="23"><input name="email" type="text" size="31"></td>
    </tr>
  <tr>
    <td height="23">提示的问题:</td>
    <td height="23"><input name="question" type="text" size="31"></td>
    </tr>
  <tr>
    <td height="53">答案:</td>
    <td height="53"><input name="result" type="text" size="31"></td>
    </tr>
  <tr align="center">
    <td height="46" colspan="4">
<input name="Submit" type="submit" value="查找" onClick="return check()">
      &nbsp;
      <input name="Submit2" type="reset" value="重置">
&nbsp;&nbsp;<a href="index.jsp">返回到主页</a>
</td>
  </tr>

</table>  </form>
</body>
</html>
