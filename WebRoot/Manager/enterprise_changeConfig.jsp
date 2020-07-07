<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"  %>
<%@ page import="java.util.Date"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title></title>
</head>
<%!
ResultSet rs=null;
String sql,wsql;
Date date=new Date();
%>
<%
request.setCharacterEncoding("gb2312");
String ename=request.getParameter("name");
String style=request.getParameter("style");
String operation=request.getParameter("operation");
String area=request.getParameter("area");
String address=request.getParameter("address");
String phone=request.getParameter("phone");
String linkman=request.getParameter("linkman");
String email=request.getParameter("email");
String web=request.getParameter("web");
String intr=request.getParameter("intr");
String fax=request.getParameter("fax");
String hand=request.getParameter("hand");
java.sql.Date showdate=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());
String username=request.getParameter("user");

wsql="update tb_Enterprise set EnterpriseSort='"+style+"',EnterpriseName='"+ename+"',Operation='"+
   operation+"',WorkArea='"+area+"',Address='"+address+"',Phone='"+phone+"',LinkMan='"+linkman+"',HandSet='"+
   hand+"',Fax='"+fax+"',Email='"+email+"',Http='"+web+"',Intro='"+intr+"',IssueDate='"+
   showdate+"',Username='"+username+"'where ID= "+request.getParameter("code");
   boolean dd=connection.executeUpdata(wsql);
   if(dd)
   {
   %>
<script language="javascript">
alert("企业信息修改成功！！");
</script>
 <%
 response.sendRedirect("enterprise_select.jsp");
  }else
{
  %>
<script language="javascript">
alert("企业信息修改失败！！");
</script>
 <%
 response.sendRedirect("enterprise_select.jsp");
}
%>
<body>

</body>
</html>
