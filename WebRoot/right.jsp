<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<table  border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><img src="image/11.jpg" width="215" height="39"></td>
      </tr>
</table>
	
	<table width="169" height="29" border="0" align="center" cellpadding="0" cellspacing="0">
     <%
	  try{
	 String placardsql="select ID,Title from tb_Placard order by id desc limit 0,10";
	 ResultSet rs1=connection.executeQuery(placardsql);
	  while(rs1.next()){
	  %>   <tr> 
      <td width="22" height="25">&nbsp;</td>
      <td width="147"><a href="#" onClick="window.open('placard_select.jsp?id=<%=rs1.getInt("ID")%>','','width=786,height=430');"><%=rs1.getString("Title")%></a></td>
     </tr> <%}
}catch(Exception e)
{e.printStackTrace();}
%>
    </table>
	<table width="100" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><img src="image/15.jpg" width="215" height="240"></td>
      </tr>
    </table>