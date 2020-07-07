<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<% request.setCharacterEncoding("gb2312"); %>
<link rel="stylesheet" href="CSS/style.css">
<html>
<head>
<title>找回密码</title>
</head>
<body>
<%
try
{
	String username=request.getParameter("username");
	String email=request.getParameter("email");
	String question=request.getParameter("question");
	String result=request.getParameter("result");
	String sql="select * from tb_Customer where Name='"+username+"' and Email='"+email+"' and Question='"+question+"' and Result='"+result+"'";
	ResultSet rs=connection.executeQuery(sql);
	String password="";
	String pass="你的密码是:";
	if(rs.next()){
		 password=rs.getString("password");
%>
<center><h2>
请注意保留您的密码！！
<br>
您的密码是：<%=password%>
</h2>
  <h2><br>
    <a href="index.jsp">返回</a>
  </h2>
</center>
<%
}else{
%>
<script language='javaScript'>
alert('你输入信息有误');history.back();
</script>
<%
	}
}catch(Exception e)
{System.out.println("存在异常！！！");}
%>
</body>
</html>
