<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<%
if(request.getAttribute("login")==null){
response.sendRedirect("../index.jsp");
}
%>



<table width="100%" height="78" border="0" cellpadding="0" cellspacing="0" background="../image/top_1.png" >
  <tr>
    <td><table width="769" height="78" border="0" align="center" cellpadding="0" cellspacing="0" background="../image/top_2.png" >
      <tr>
        <td></td>
      </tr>
    </table></td>
  </tr>
</table>











<table width="100%" height="39" border="0" cellpadding="0" cellspacing="0" background="../image/bg-3.jpg" >
  <tr>
    <td valign="top"><table width="796" height="32" border="0" align="center" cellpadding="0" cellspacing="0" background="../image/bg-4.jpg">
      <tr>
        <th><a href="index.jsp"  class="a1">首页</a> |&nbsp;<a href="active_select.jsp" class="a1">物流动态管理</a>&nbsp;| <a href="knowledge_select.jsp" class="a1">物流知识管理</a>&nbsp;|&nbsp;<a href="goods_select.jsp" class="a1">货物管理</a>&nbsp;|&nbsp;<a href="car_select.jsp" class="a1">车辆管理</a>&nbsp;|&nbsp;<a href="enterprise_select.jsp" class="a1">企业管理</a>&nbsp;|&nbsp;&nbsp;<a href="placard_select.jsp" class="a1">公告管理</a>&nbsp;|&nbsp;<a href="member_select.jsp" class="a1">会员管理</a>&nbsp;|&nbsp;<a href="tool_assistant.jsp" class="a1">辅助工具</a>&nbsp;|&nbsp;<a href="../logout.jsp" class="a1">退出</a></th>
      </tr>
    </table></td>
  </tr>
</table>
