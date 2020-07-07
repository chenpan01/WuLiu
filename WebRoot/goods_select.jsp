<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="CSS/style.css">
<link rel="stylesheet" href="CSS/table.css"></link>

<title>Goods_show page</title>
</head>
<%!
	ResultSet rs = null;
	String sql, sqlshow,sql1;
	String username, login;
	int pagesize = 10;
	int rowcount = 0;
	int pagecount = 1, n;%>
<body bgcolor="#ffffff">
	<%
		request.setCharacterEncoding("utf-8");
		login = (String) session.getAttribute("login");
		username = (String) session.getAttribute("name");
		if (login == null || "".equals(login)) {
	%>
	<script language="javascript">
		alert("您还未登录，不能浏览详细信息！！！");
	</script>
	<%
		response.sendRedirect("login.jsp");
		}
	%>
	<jsp:include page="top.jsp" />
	<table width="786" border="1" align="center" cellpadding="0"
		cellspacing="0"  class="t1">
		<tr  class="a1">
			<td width="786" colspan="9">

				<p align="center">货物信息
			</td>
		</tr>
		<!--  -->
		<tr height="60"></tr>
		
	
		<tr>
			<td width="786" height="30" colspan="9" align="right"><a
				href="goods_add.jsp">发布信息...</a>
			</td>
		</tr>
		<tr align="center"  class="a1">
			<td width="600" height="29" align="center">货物类型</td>
			<td width="600" height="29" align="center">货物名称</td>
			<td width="600" height="29" align="center">货物数量</td>
			<td width="600" height="29" align="center">数量单位</td>
			<td width="600" height="29" align="center">起始省份</td>
			<td width="600" height="29" align="center">起始城市</td>
			<td width="600" height="29" align="center">抵达省份</td>
			<td width="600" height="29" align="center">抵达城市</td>
			<td width="600" height="29">操作</td>
		</tr>
		<%
			sql1=(String)request.getAttribute("sql");
			if(!"".equals(sql1)&&sql1!=null)
			 	sql = "select * from db_wuliu.tb_GoodsMeg "+sql1;
			else
				sql = "select * from db_wuliu.tb_GoodsMeg order by IssueDate desc";
			System.out.println("网页上："+sql);
			try {
				rs = connection.executeQuery(sql);
				if (!rs.next()) {
		%>
		<script language="javascript">
			alert("没有货物信息");
		</script>
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
						n = rs.getInt("ID");
		%>
		<tr  class="a1">
			<td width="786" height="29" align="center"><%=rs.getString("GoodsStyle")%></td>
			<td width="786" height="29" align="center"><%=rs.getString("GoodsName")%></td>
			<td width="786" height="29" align="center"><%=rs.getString("GoodsNumber")%></td>
			<td width="786" height="29" align="center"><%=rs.getString("GoodsUnit")%></td>
			<td width="786" height="29" align="center"><%=rs.getString("StartProvince")%></td>
			<td width="786" height="29" align="center"><%=rs.getString("StartCity")%></td>
			<td width="786" height="29" align="center"><%=rs.getString("EndProvince")%></td>
			<td width="786" height="29" align="center"><%=rs.getString("EndCity")%></td>
			<td width="786" height="29">
				<p align="center">
					<a href="goods_xiangxi.jsp?id=<%=n%>">详细</a>
			</td>
		</tr>
		<%
			if (!rs.next())
							break;
					}
		%>
		<tr  width="300">
			<td width="786" height="30" colspan="9" align="right">
		<div style="position:absolute;top:469px;left:370px;width:600px">
				<table width="250" align="center">
					<tr align="center">
						<td width="286" height="30" colspan="9" align="center">共<%=pagecount%>页&nbsp;&nbsp;
							<a href="goods_select.jsp?topage=<%=1%>">第一页</a>&nbsp;&nbsp; <a
							href="goods_select.jsp?topage=<%=showpage - 1%>">上一页</a>&nbsp;&nbsp;
							<a href="goods_select.jsp?topage=<%=showpage + 1%>">下一页</a>&nbsp;&nbsp;
							<a href="goods_select.jsp?topage=<%=pagecount%>">最后一页</a>
						</td>
					</tr>
				</table>
			</div>
				</td>
		</tr>
		<%
			}
			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
	</table>
	
	<div style="position:absolute;top:140px;left:280px;width:134px">
			<form action="Goods_select" method="post">
				<table  class="t1" cellpadding="0">
					<tr>
						<td  height="29" align="center">货物类型</td>
						<td  height="29" align="center">货物名称</td>
						<td  height="29" align="center">货物数量</td>
						<td  height="29" align="center">数量单位</td>
						<td  height="29" align="center">起始省份</td>
						<td  height="29" align="center">起始城市</td>
						<td  height="29" align="center">抵达省份</td>
						<td  height="29" align="center">抵达城市</td>
						<td  height="29" align="center">操作</td>
					</tr>
					<!-- 
					 -->
					<tr >
						<td  height="29"><input name="GoodsStyle" type="text" size="7"></td>
						<td  height="29" ><input name="GoodsName" type="text"  size="7"></td>
						<td  height="29" align="center"><input name="GoodsNumber" type="text" size="7"></td>
						<td  height="29" align="center"><input name="GoodsUnit" type="text" size="7"></td>
						<td  height="29" align="center"><input name="StartProvince" type="text"  size="7"></td>
						<td  height="29" align="center"><input name="StartCity" type="text"  size="7"></td>
						<td  height="29" align="center"><input name="EndProvince" type="text"  size="7"></td>
						<td  height="29" align="center"><input name="EndCity" type="text"  size="7"></td>
						<td  height="29"><input type="submit" value="查询" /></td>
					</tr>
					
				</table>
			</form>
		<div style="position:absolute;top:10px;left:800px"><a href="goods_select.jsp?sql=">返回</a></div>
	</div>
	<!-- 
	width="80"
	 -->
</body>
</html>
