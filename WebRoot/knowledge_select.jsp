<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="CSS/style.css">
<title>placard page</title>
</head>
<%!ResultSet rs = null;
	String sql, sql1;
	int code;
	int pagesize = 10;
	int rowcount = 0;
	int pagecount = 1;%>

<body bgcolor="#ffffff">
	<%
		request.setCharacterEncoding("utf-8");
		String login = (String) session.getAttribute("login");
		String username = (String) session.getAttribute("name");
		if (login == null) {
	%>
	<script language="javascript">
		alert("您还未登录，不能浏览详细信息！！！");
	<%response.sendRedirect("login.jsp");%>
		
	</script>
	<%
		}
	%><jsp:include page="top.jsp" />
	<table width="785" border="1" align="center" cellpadding="0"
		cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#333333"
		bordercolorlight="#FFFFFF">
		<tr>
			<td width="785" height="38" align="center" colspan="6">物流知识</td>
		</tr>
		<tr height="60"></tr>
		<tr>
			<td width="14%" height="29" align="center">ID</td>
			<td width="14%" height="29" align="center">标题</td>
			<td width="14%" height="29" align="center">发布日期</td>
			<td width="14%" height="29" align="center">知识类型</td>
			<td width="14%" height="29" align="center">操作</td>
		</tr>
		<%
			sql1 = (String) request.getAttribute("sql");
			if (!"".equals(sql1) && sql1 != null)
				sql = "select ID,Title,IssueDate,Reside from db_wuliu.tb_Knowledge " + sql1;
			else
				sql = "select ID,Title,IssueDate,Reside from tb_Knowledge";
			System.out.println("网页上：" + sql);
			try {
				rs = connection.executeQuery(sql);
				if (!rs.next()) {
		%>
		<script language="javascript">
			alert("没有信息");
			history.back();
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
						code = rs.getInt("ID");
		%>
		<tr>
			<td width="14%" height="32" align="center"><%=code%></td>
			<td width="14%" height="32" align="center"><%=rs.getString("Title")%></td>
			<td width="14%" height="32" align="center"><%=rs.getDate("IssueDate")%></td>
			<td width="14%" height="32" align="center"><%=rs.getString("Reside")%></td>
			<td width="14%" height="32" align="center"><a href="#"
				onClick="window.open('knowledge_show.jsp?id=<%=code%>','','width=790,height=400');">详细</a>
			</td>
		</tr>
		<%
			if (!rs.next())
							break;
					}
		%>
		<tr>
			<td width="785" height="30" colspan="9" align="right">
			<div style="position:absolute;top:400px;left:0px;width:600px">
				<table width="784" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="784" height="30" colspan="9" align="right">共<%=pagecount%>页
							<a href="knowledge_select.jsp?topage=<%=1%>">第一页</a> <a
							href="knowledge_select.jsp?topage=<%=showpage - 1%>">上一页</a> <a
							href="knowledge_select.jsp?topage=<%=showpage + 1%>">下一页</a> <a
							href="knowledge_select.jsp?topage=<%=pagecount%>">最后一页</a></td>
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
	<div style="position:absolute;top:150px;left:380px;width:600px">
			<form action="Knowledge_select" method="post">
				<table>
					<tr>
						<td width="108" height="29" align="center">ID</td>
						<td width="108" height="29" align="center">标题</td>
						<td width="108" height="29" align="center">发布日期</td>
						<td width="209" height="29" align="center">知识类型</td>
					</tr>
					<tr>
						<td width="108" height="29" align="center"><input name="ID" type="text"></td>
						<td width="108" height="29" align="center"><input name="Title" type="text"></td>
						<td width="108" height="29" align="center"><input name="IssueDate" type="text"></td>
						<td width="209" height="29" align="center"><input name="Reside" type="text"></td>
						<td width="8%" height="29"><input type="submit" value="查询" /></td>
					</tr>
				</table>
			</form>
		<div style="position:absolute;top:26px;left:600px"><a href="knowledge_select.jsp?sql=">返回</a></div>
	</div>
</body>
</html>
