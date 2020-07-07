<%@ page contentType="text/html; charset=gb2312"  language="java" %>
<%@ page import="java.util.*"%>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<jsp:useBean id="countTime" scope="page" class="com.wy.CountTime"/>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr>
    <td  height="80" align="center" background="image/top_1.png">
	
      <table height="80" border="0" cellpadding="0" cellspacing="0" background="image/top_2.png">
        <tr>
          <td width="787"></td>
        </tr>
      </table>
	  
 	</td>
  </tr>
</table>





<table width="100%" height="32" border="0" cellpadding="0" cellspacing="0" background="image/3.jpg">
  <tr>
    <td><table width="786"  border="0" align="center" cellpadding="0" cellspacing="0" background="image/4.jpg">
      <tr>
        <th width="189" height="31" align="center">
       
        &nbsp; <%=countTime.currentlyTime()%> </th>
        <th width="597" height="31" align="center"><a href="index.jsp" class="a1">本站首页</a>&nbsp;|&nbsp;<a href="active_select.jsp" class="a1">物流动态</a>&nbsp;|&nbsp;<a href="knowledge_select.jsp" class="a1">物流知识</a>&nbsp;|&nbsp;<a href="goods_select.jsp" class="a1">货物信息</a>&nbsp;|&nbsp;<a href="car_select.jsp" class="a1">车辆信息</a>&nbsp;|&nbsp;<a href="enterprise_select.jsp" class="a1">企业信息</a>&nbsp;|&nbsp;<a href="tool_assistant.jsp" class="a1">辅助工具</a>&nbsp;|&nbsp;<a href="logout.jsp" class="a1">退出</a></th>
        </tr>
    </table></td>
  </tr>
</table>
  <%--<table width="100%" height="115" border="0" cellpadding="0" cellspacing="0" background="image/5.jpg" >
  <tr>

  
  
    <td valign="top">
    <table width="787" height="151" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><table width="585" align="right">
          <tr>
            <td width="577" height="109" valign="top">
			</td>
          </tr>
        </table></td>
        
      </tr>
    </table>
    </td>
     
  </tr>
</table>
--%>