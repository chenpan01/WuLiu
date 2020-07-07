<%@ page contentType="text/html; charset=GB2312" %>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<title>
knowledge
</title>
</head>
<body bgcolor="#ffffff">
<%
String sql="delete tb_Knowledge where ID="+request.getParameter("id");
boolean dele=connection.executeUpdata(sql);
if(dele)
{
%>
<script language="javascript">
alert("É¾³ý³É¹¦£¡£¡£¡");
</script>
<%
response.sendRedirect("knowledge_select.jsp");
}else
{
%>
<script language="javascript">
alert("É¾³ýÊ§°Ü£¡£¡£¡");
history.back();
</script>
<%
}
%>
</body>
</html>
