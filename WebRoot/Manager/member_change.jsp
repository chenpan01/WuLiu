<%@ page contentType="text/html; charset=GBK" import="java.sql.*,java.util.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<link rel="stylesheet" href="../CSS/style.css">
<title>
Member_change page
</title>
</head>
<script language="javascript">
      function check(){
		if(form1.name.value==""){
			alert("请输入你的用户名");
			form1.name.focus();
			return false;
		}

		if(form1.password.value==""){
			alert("请输入你注册的密码");
			form1.password.focus();
			return false;
		}
		if(form1.repassword.value==""){
			alert("请输入确认密码");
			form1.repassword.focus();
			return false;
		}
		if(form1.password.value!=form1.repassword.value){
			alert("你输入的两次密码不一致");
			return false;
		}
		if(form1.email.value==""){
			alert("请输入你的Email址");
			form1.email.focus();
			return false;
		}


		if(form1.phone.value==""){
			alert("请输入你的联系电话");
			form1.phone.focus();
			return false;
		}
		if(form1.question.value==""){
			alert("输入密码提示问题便于取回密码");
			form1.question.focus;
			return false;
		}
		if(form1.result.value==""){
			alert("请输入回答问题的答案");
			form1.result.focus();
			return false;
		}
	}
</script>
<%!
ResultSet rs=null;
String sql;
int code;
%>
<body><jsp:include page="mtop.jsp"/>
<%
sql="select * from tb_Customer where ID="+request.getParameter("id");
rs=connection.executeQuery(sql);
while(rs.next())
{
code=rs.getInt("ID");
%>
<form method="POST" action="member_changeConfig.jsp" name="form1">
    <div align="center">
会员修改
   <p> *&nbsp; 注意以下内容必须填写完整。</p>
<table width="46%" height="216" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF" >
<tr>
    <td width="100%" align="left" height="34">名字：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="text" name="name" size="20" value="<%=rs.getString("Name")%>"></td>
  </tr>
  <tr>
    <td width="100%" height="16">
      <p>密码：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="password" name="password" size="20" value="<%=rs.getString("Password")%>"></p>
    </td>
  </tr>
  <tr>
    <td width="100%" height="16">
      <p>确认密码：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <input type="password" name="repassword" size="20" value="<%=rs.getString("Password")%>"></p>
    </td>
  </tr>
  
  <tr><td width="100%" height="16">
      <p>Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="text" name="email" size="20" value="<%=rs.getString("Email")%>">　</p>
    </td>
    
  </tr>
  <tr>

    <td width="100%" height="16">
      性别：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <%String xb=rs.getString("sex");
	  if(xb.equals("man"))
	  {
	  %>
	  男
      <input type="radio" value="man" checked name="sex">&nbsp;&nbsp;&nbsp;&nbsp;
      女<input type="radio" name="sex" value="moman">
	  <%}else
	  {
	  %>
	   男
      <input type="radio" value="man"  name="sex">&nbsp;&nbsp;&nbsp;&nbsp;
      女<input type="radio" name="sex"checked value="moman">
	  <%
	  }
	  %>
    </td>
  </tr>
  <tr>
    <td width="100%" height="16">
      <p>电话：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="text" name="phone" size="20" value="<%=rs.getString("Phone")%>">
      </p>
    </td>
  </tr>
  <tr>
    <td width="100%" height="16">
    <p>找回密码问题：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" name="question" size="20" value="<%=rs.getString("Question")%>">
    </p>
    </td>
  </tr>
  <tr>
    <td width="100%" height="16">问题答案：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="text" name="result" size="20" value="<%=rs.getString("Result")%>"></td>
  </tr>
<tr>
    <td width="100%" height="16">&nbsp;ID&nbsp;  &nbsp;   &nbsp;  &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;
      <%=code%><input type="hidden" name="code" size="20"value="<%=code%>"></td>
  </tr>
  <tr>
    <td width="100%" height="16">
    <input type="submit" value="修改" name="Submit"onClick="return check()"> 　<input type="reset" value="重置">
&nbsp;&nbsp;<a href="member_select.jsp">返回</a>
    </td>
  </tr>
</table>
</div>
</form>
<%}%><jsp:include page="down.jsp"/>
</body>
</html>
