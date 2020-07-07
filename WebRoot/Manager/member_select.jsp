<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<html>
<head>
<link rel="stylesheet" href="../CSS/style.css">
<title>
mMember  page
</title>
</head>
<%!
ResultSet rs=null;
String sql;
int code;
int pagesize=10;
int rowcount=0;
int pagecount=1;
%>

<body bgcolor="#ffffff"><jsp:include page="mtop.jsp"/>
<table width="785" height="123" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
    <td height="54" colspan="10" align="center">会员资料信息修改</td>
  </tr>
  <tr>
    <td width="8%" height="16" align="center">ID</td>
    <td width="11%" height="16" align="center">名字</td>

    <td width="13%" height="16" align="center">Email</td>
    <td width="9%" height="16" align="center">性别</td>
    <td width="11%" height="16" align="center">电话</td>
    <td width="14%" height="16" align="center">问题</td>
    <td width="11%" height="16" align="center">答案</td>
    <td width="12%" height="16" align="center">申请日</td>
    <td width="11%" height="16" align="center">操作</td>
  </tr>
  <%
sql="select * from tb_Customer";
try
{
rs=connection.executeQuery(sql);
if(!rs.next())
{
%>
  <script language="javascript">
	alert("没有会员信息！！");
	history.back();
</script>
  <%
}else
{
rs.last();
rowcount=rs.getRow();
int showpage=1;
pagecount=((rowcount%pagesize)==0?(rowcount/pagesize):(rowcount/pagesize)+1);
 String topage=request.getParameter("topage");
if(topage!=null)
{
showpage=Integer.parseInt(topage);
if(showpage>pagecount){
  showpage=pagecount;
  }else if(showpage<=0){
  showpage=1;
  }
}
rs.absolute((showpage-1)*pagesize+1);
for(int i=1;i<=pagesize;i++)
{
code=rs.getInt("ID");
%>
  <tr>
    <td width="8%" height="35" align="center"><%=code%></td>
    <td width="11%" height="35" align="center"><%=rs.getString("Name")%></td>

    <td width="13%" height="35" align="center"><%=rs.getString("Email")%></td>
    <td width="9%" height="35" align="center"><%=rs.getString("Sex")%></td>
    <td width="11%" height="35" align="center"><%=rs.getString("Phone")%></td>
    <td width="14%" height="35" align="center"><%=rs.getString("Question")%></td>
    <td width="11%" height="35" align="center"><%=rs.getString("Result")%></td>
    <td width="12%" height="35" align="center"><%=rs.getString("IssueDate")%></td>
    <td height="35" align="center"> <a href="member_change.jsp?id=<%=code%>">修改</a> <a href="member_delete.jsp?id=<%=code%>">删除</a></td>
  </tr>
  <%
if(!rs.next())
break;
}
%>
  <tr>
    <td height="30" colspan="9" align="right">
      <table width="88%" align="center">
        <tr>
          <td width="104%" height="30" colspan="9" align="right"> 共<%=pagecount%>页&nbsp;&nbsp; <a href="member_select.jsp?topage=<%=1%>">第一页</a>&nbsp;&nbsp; <a href="member_select.jsp?topage=<%=showpage-1%>">上一页</a>&nbsp;&nbsp; <a href="member_select.jsp?topage=<%=showpage+1%>">下一页</a>&nbsp;&nbsp; <a href="member_select.jsp?topage=<%=pagecount%>">最后一页</a> </td>
        </tr>
    </table></td>
  </tr>
  <%
}
}catch(Exception e)
{e.printStackTrace();}
%>
</table>
<jsp:include page="down.jsp"/>
</body>
</html>
