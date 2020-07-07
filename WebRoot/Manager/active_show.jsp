<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.util.Date,java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../CSS/style.css">
<title>
placard_show page
</title>
</head>
<script language="javascript">
function check()
{
 if(form1.title.vlaue=="")
{
alert("请填写标题！！！");
form1.title.focus();
}
if(form1.content.value=="")
{
alert("请填写内容！！！");
form1.content.focus();
}
if(form1.author.value=="")
{
alert("请填写作者！！！");
form1.author.focus();
}
}
</script>
<%!
ResultSet rs;
String sql;
int code;
%>
<body bgcolor="#ffffff"><jsp:include page="mtop.jsp"/>
<form method="POST" action="active_changeConfig.jsp"name="form1">
<table width="785" height="238" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
    <td width="100%" height="39">
      <p align="center">动态信息修改</td>
  </tr>
<%
sql="select * from tb_logistics where ID="+request.getParameter("id");
try
{
rs=connection.executeQuery(sql);
if(rs.next())
{
code=rs.getInt("ID");
%>
  <tr>
    <td width="100%" height="37"><font size="5"> 标题：
   <input type="text" name="title" size="37" value="<%=rs.getString("Title")%>"></font></td>
  </tr>
  <tr>
    <td width="100%" height="37"> *  注意以下内容最多可以写2000个字</td>
  </tr>
  <tr>
    <td width="100%" height="36">
   <textarea rows="20" name="content" cols="100">
   <%=rs.getString("Content")%></textarea></td>
  </tr>
<tr>
<td width="100%" height="16">  发布人:
  <input type="text" name="author" size="37" value="<%=rs.getString("Author")%>">
</td>
</tr>
<tr>
<td width="100%" height="16"> 发布时间:
<%=rs.getDate("IssueDate")%>
</td>
</tr>
<tr>
<td width="100%" height="16"> 文章号:<%=code%>
<input type="hidden" name="id" size="37" value="<%=code%>">
</td>
</tr>
<%
}
}catch(Exception e)
{
e.printStackTrace();
}
%>
<tr>
<td width="30%" height="16">
   <input type="submit" value="修改" name="B1"onClick="return check()">
   <input type="reset" value="重写" name="B2">
   &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
   <a href="active_select.jsp">返回</a>
</td>
   </tr>
</table>
</form>
<jsp:include page="down.jsp"/>
</body>
</html>
