<%@ page contentType="text/html; charset=gb2312"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="CSS/style.css">
<link href="texiao/style.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
.main
{
	clear:both;
	width:787px;
	margin:0 auto;
	height:730px;
}
.left{
	float:left;
}
.center{
	float:left;
	width:360px;
}
.good{
	/*padding-left:15px;*/
	display:block;
}
.car{
	
	display:block;
}
.qiye{
	display:block;
}
.right{
	float:left;
}
.footer
{
	width:787px;
	margin:0 auto;
	position:absolute;
	top:900px;
	left:250px;
}
</style>

<script src="texiao/imgSwitch.min.js" type="text/javascript">
		</script>	
		<script type="text/javascript">
			window.onload=function(){
				new imgSwitch("imgContainer",{Type:12,Width:785,Height:180,Pause:2000,Speed:"fast",Auto:true,Navigate:"numberic",NavigatePlace:"outer",PicturePosition:"left"})	
			}
		</script>	
<Script language="javascript">
 	
			
			
			
	function check1() {
		if (form_u.name.value == "") {
			alert("请添入姓名");
			form_u.name.focus();
			return false;
		}
		if (form_u.password.value == "") {
			alert("请添入密码");
			form_u.password.focus();
			return false;
		}
	}
</Script>
<%!ResultSet rs1 = null, goodrs = null;
	String sql, goodsql, placardsql, esql, login, username;
	int code, gcode;%>
<body>
	<div class="top"><jsp:include page="topDemo.jsp"/></div>
	<div id="imgContainer">
				<img src="texiao/images/11.jpg"/>
				<img src="texiao/images/12.jpg"/>
				<img src="texiao/images/321.jpg"/>
			</div>
	<div class="main">
		<div class="left">
			<jsp:include page="left.jsp" flush="true" /></div>

		<div class="center">
			<div class="good">
				<img src="image/13.jpg"><br />
				<%
					goodsql = "select ID,GoodsStyle,GoodsName,StartProvince,StartCity,EndProvince,EndCity,Style,UserName from tb_GoodsMeg order by IssueDate desc limit 0,8";
					try {
						rs1 = connection.executeQuery(goodsql);
						while (rs1.next()) {
							gcode = rs1.getInt("ID");
				%>

				<a href="goods_xiangxi.jsp?id=<%=gcode%>"> &nbsp;<%=rs1.getString("GoodsStyle")%>--<%=rs1.getString("GoodsName")%>-
					-<%=rs1.getString("StartProvince")%>- -<%=rs1.getString("StartCity")%>-
					-<%=rs1.getString("EndProvince")%>- -<%=rs1.getString("EndCity")%><br />

					<%
						}
						} 
						catch (Exception e)
						 {
							e.printStackTrace();
						}
					%> <a href="goods_select.jsp">&nbsp;>>>更多信息&nbsp;&nbsp;&nbsp;</a>
			</div>
			<div class="car">
				<img src="image/16.jpg"><br />
				<%
					sql = "select Code,TradeMark,Brand,Style,CarLoad,TranspotStyle,UserName from tb_CarMessage order by IssueDate desc limit 0,8";
					try {
						rs1 = connection.executeQuery(sql);
						while (rs1.next()) {
							code = rs1.getInt("Code");
				%>
				<a href="car_show.jsp?id=<%=code%>">&nbsp;<%=rs1.getString("TradeMark")%>-
					-<%=rs1.getString("Brand")%> - -<%=rs1.getString("Style")%>--<%=rs1.getString("CarLoad")%>吨-
					-<%=rs1.getString("TranspotStyle")%> <br /> <%
 	}
 	} catch (Exception e) {
 		e.printStackTrace();
 	}
 %> <a href="car_select.jsp">&nbsp;>>>更多信息&nbsp;&nbsp;&nbsp;</a>
			</div>
			<div class="qiye">
				<img src="image/18.jpg" width="370" height="29"> <br />
				<%
					sql = "select ID,EnterpriseSort,EnterpriseName,Operation,WorkArea,Address,UserName from tb_Enterprise order by IssueDate desc limit 0,7";
					try {
						rs1 = connection.executeQuery(sql);
						while (rs1.next()) {
							code = rs1.getInt("ID");
				%>
				<a href="enterprise_show.jsp?id=<%=code%>"> &nbsp;<%=rs1.getString("EnterpriseSort")%>-
					-<%=rs1.getString("EnterpriseName")%>- -<%=rs1.getString("Operation")%>-
					-<%=rs1.getString("WorkArea")%> </a> <br />
				<%
					}
					} catch (Exception e) {
						e.printStackTrace();
					}
				%>
				<a href="enterprise_select.jsp">&nbsp;>>>更多信息&nbsp;&nbsp;&nbsp;</a>
			</div>
		</div>
		<!--存放中间的代码-->

		<div class="right">
			<jsp:include page="right.jsp" flush="true" /></div>

	</div>

	<div class="footer">
		<jsp:include page="down.jsp" flush="true" />
	</div>
</body>

</html>
