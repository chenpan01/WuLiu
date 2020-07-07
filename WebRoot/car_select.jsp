<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="java.sql.*, java.io.*,com.wy.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="CSS/style.css">
<title>Enterprise page</title>
</head>

<%!
	
	ResultSet rs = null;
	ResultSetMetaData rsmd=null;
	String sql, nsql,sql1="";
	String username, login;
	int n, count,id,rows,column,select=0;
	int pagenum=1;
	int pagesize=5;
	int pre_page=0,totalpage;
	%>
	<body bgcolor="#ffffff">
	<%
		request.setCharacterEncoding("utf-8");
		login = (String) session.getAttribute("login");
		
		username = (String) session.getAttribute("name");
		if (login == null) {
	%>
	<script language="javascript">
		alert("您还未登录，不能浏览详细信息！！！");
	<%response.sendRedirect("login.jsp");%>
		
	</script>
	<%
		}
	%>
	<jsp:include page="add_select.jsp" />
	<jsp:include page="top.jsp" />
	<%--
	 --%>
	
	<table align="center" width="800" style="position:absolute;left:250px;top:100px">
		<tr>
			<td width="786" colspan="9" height="40">
				<p align="center">车辆信息
			</td>
		</tr>
	<%--
	style="position:absolute;left:800px;top:90px"
	style="position:absolute;left:800px;top:130px" 
	 --%>
		<tr>
			<td width="786" height="30" colspan="9" align="right"><a href="car_add.jsp">发布信息...</a></td>
		</tr>
		<tr>
			<td height="30"></td>
		</tr>
		
		<%
			sql1=(String)request.getAttribute("sql");
			if(!"".equals(sql1)&&sql1!=null)
			{
			 	sql = "select * from db_wuliu.tb_carmessage "+sql1;
			}
			else
			 	sql = "select * from db_wuliu.tb_carmessage order by UsedTime desc";
			//System.out.println("网页上的        "+sql);
			try 
			{
				JDBConnection connection =new JDBConnection();
				rs=connection.executeQuery(sql);
		%>
			<tr height="30"></tr>
			<tr>
				<td width="8%" height="29" align="center">车辆编号</td>
				<td width="8%" height="29" align="center">车牌号码</td>
				<td width="8%" height="29" align="center">品牌</td>
				<td width="8%" height="29" align="center">类型</td>
				<td width="8%" height="29" align="center">最大装载</td>
				<td width="8%" height="29" align="center">使用时间</td>
				<td width="8%" height="29" align="center">司机姓名</td>
				<td width="8%" height="29"><p align="center">操作
				</td>
			</tr>
		
		<%
				if (!rs.next()) 
				{
		%>
		<script>
			alert("没有查询的信息！！");
		</script>
	 	<%
	 		}
	 		else
	 		{	
				rs.last();
				rows=rs.getRow();
				totalpage=(rows%pagesize==0)?rows/pagesize:rows/pagesize+1;
				String ss=(String)request.getParameter("pre_page");
				if(ss!=null)
				{
		 			pre_page=Integer.parseInt(ss);
		 			if(pre_page<0)
		 				pre_page=0;
		 			if(pre_page>totalpage-1)
		 				pre_page=totalpage-1;
				}	 		
				int pre_size=1+pagesize*pre_page;
				System.out.println("pre_size"+pre_size);
				 rs.absolute(pre_size);
				 
	 			for(int i=1;i<=pagesize;i++)
	 			{
	 				n = rs.getInt("Code");
	 	%>
		 <tr>
		 	<%
		 	for(int j=1;j<=7;j++)
		 	{
		 	 %>
		 	 <td width="11%" height="29" align="center"><%=rs.getString(j)%></td>
		 	 <%}%>
		 	 <td width="12%" height="29" align="center"><a href="car_show.jsp?id=<%=n%>">详细</a></td>
		</tr>
	<%
		if(!rs.next())
			break;
	}}%>
	</table>
	<br>
	<br>
	<span style="position:absolute;left:400px;top:450px">
	总共<%=totalpage%>页
	&nbsp;&nbsp;第<%=pre_page+1%>页
	&nbsp;&nbsp;<a href="car_select.jsp?pre_page=0">第一页</a>
	&nbsp;&nbsp;<a href="car_select.jsp?pre_page=<%=pre_page-1%>">上一页</a>
	&nbsp;&nbsp;<a href="car_select.jsp?pre_page=<%=pre_page+1%>">下一页</a>
	&nbsp;&nbsp;<a href="car_select.jsp?pre_page=<%=totalpage-1%>">最后一页</a>
	</span>
	<%
	}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			if(rs!=null)rs.close();
		}
	 %>
	 </body>
</html>






	<%--
		<%
			} else {
					rs.last();
					rowcount = rs.getRow();
					int showpage = 1;
					pagecount = ((rowcount % pagesize) == 0 ? (rowcount / pagesize)
							: (rowcount / pagesize) + 1);
					String topage = request.getParameter("topage");
					if (topage != null) {
						showpage = Integer.parseInt(topage);
						if (showpage > pagecount) {
							showpage = pagecount;
						} else if (showpage <= 0) {
							showpage = 1;
						}
					}
					rs.absolute((showpage - 1) * pagesize + 1);
					for (int i = 1; i <= pagesize; i++) {
						n = rs.getInt("Code");
		%>
		<tr>
			<td width="11%" height="29" align="center"><%=rs.getString("TradeMark")%></td>
			<td width="11%" height="29" align="center"><%=rs.getString("Brand")%></td>
			<td width="11%" height="29" align="center"><%=rs.getString("Style")%></td>
			<td width="11%" height="29" align="center"><%=rs.getString("CarLoad")%>吨</td>
			<td width="11%" height="29" align="center"><%=rs.getString("UsedTime")%>年</td>
			<td width="15%" height="29" align="center"><%=rs.getString("DriverTime")%>年</td>
			<td width="11%" height="29" align="center"><%=rs.getString("TranspotStyle")%></td>
			<td width="12%" height="29" align="center"><a
				href="car_show.jsp?id=<%=n%>">详细</a></td>
		</tr>
		<%
			if (!rs.next())
							break;
					}
		%>
		<tr>
			<td width="786" height="30" colspan="9" align="right">

				<table width="786" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="786" height="30" colspan="9" align="right">共<%=pagecount%>页&nbsp;&nbsp;
							<a href="car_select.jsp?topage=<%=1%>">第一页</a>&nbsp;&nbsp; <a
							href="car_select.jsp?topage=<%=showpage - 1%>">上一页</a>&nbsp;&nbsp;
							<a href="car_select.jsp?topage=<%=showpage + 1%>">下一页</a>&nbsp;&nbsp;
							<a href="car_select.jsp?topage=<%=pagecount%>">最后一页</a>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<%
			}

			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("carmessageage");
			}
			finally
			{
				if(rs!=null)rs.close();
			}
		%>
	
	 --%>
	

<!-- 
		<%--
				for(int i=1;i<=column;i++)
				{
					if(i!=column)
					{
				%>
					<td width="11%" height="29" align="center"><%=rsmd.getColumnName(i) %>
				<%  }
					else
					{
				%>
					<td width="12%" height="29"><p align="center">操作</td>
				<% }}%>
		
		 --%>
			
-->
		 