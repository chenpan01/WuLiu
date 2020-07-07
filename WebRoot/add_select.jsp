<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"
	language="java"%>
<%@ page import="java.util.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<link rel="stylesheet" href="CSS/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<div class="add_select">
	<form action="car_select_add.jsp" method="post">
	<table align="center" width="500" border="0"">
		<tr>
			<td width="5%" height="29" align="center">车辆编号</td>
			<td width="5%" height="29" align="center">车牌号码</td>
			<td width="5%" height="29" align="center">品牌</td>
			<td width="5%" height="29" align="center">类型</td>
			<td width="8%" height="29" align="center">最大装载</td>
			<td width="8%" height="29" align="center">使用时间</td>
			<td width="8%" height="29" align="center">司机姓名</td>
		</tr>
		<tr>
				<td width="8%" height="29" align="center"><input type="text"
					name="Code"></td>
				<td width="8%" height="29" align="center"><input type="text"
					name="TradeMark"></td>
				<td width="8%" height="29" align="center"><input type="text"
					name="Brand"></td>
				<td width="8%" height="29" align="center"><input type="text"
					name="Style"></td>
				<td width="8%" height="29" align="center"><input type="text"
					name="CarLoad"></td>
				<td width="8%" height="29" align="center"><input type="text"
					name="UsedTime"></td>
				<td width="8%" height="29" align="center"><input type="text"
					name="DriverName"></td>
				<td width="8%" height="29">
					<input type="hidden" name="ID" value="2" /> 
					<input type="submit" value="查询" />
				</td>
			</tr>
	</table>
	</form> 
	<div style="position:absolute;top:32px;left:1010px"><div><a href="car_select.jsp?sql=">返回</a></div></div>
</div>
<%--
		<select>
			<option value="Code"/>
			<option value="TradeMark"/>
			<option value="Brand"/>
			<option value="Style"/>
			<option value="CarLoad"/>
			<option value="UsedTime"/>
			<option value="DriverName"/>
		</select>
		<table align="center" width="1000" cellpadding="0">
			<tr>
				<td width="11%" height="29" align="center">请输入对应的信息</td>
				<td width="11%" height="29" align="center"><input type="text"
					name="TradeMark"></td>
				<td width="11%" height="29" align="center"><input type="text"
					name="Brand"></td>
				<td width="11%" height="29" align="center"><input type="text"
					name="Style"></td>
				<td width="11%" height="29" align="center"><input type="text"
					name="CarLoad"></td>
				<td width="11%" height="29" align="center"><input type="text"
					name="UsedTime"></td>
				<td width="11%" height="29" align="center"><input type="text"
					name="DriverTime"></td>
				<td width="11%" height="29" align="center"><input type="text"
					name="TranspotStyle"></td>
				<td width="11%" height="29">
					<input type="hidden" name="ID" value="2" /> 
					<input type="hidden" name="ID" value="2" /> 
					<input type="submit" value="查询" /></td>
			</tr>
		</table>
	
	
	<form action="car_select_add.jsp" method="post">
		<table align="center" width="1000" cellpadding="0">
			<tr>
				<td width="11%" height="29" align="center">请输入对应的信息</td>
				<td width="11%" height="29" align="center"><input type="text"
					name="TradeMark"></td>
				<td width="11%" height="29" align="center"><input type="text"
					name="Brand"></td>
				<td width="11%" height="29" align="center"><input type="text"
					name="Style"></td>
				<td width="11%" height="29" align="center"><input type="text"
					name="CarLoad"></td>
				<td width="11%" height="29" align="center"><input type="text"
					name="UsedTime"></td>
				<td width="11%" height="29" align="center"><input type="text"
					name="DriverTime"></td>
				<td width="11%" height="29" align="center"><input type="text"
					name="TranspotStyle"></td>
				<td width="11%" height="29"><input type="hidden" name="ID"
					value="1" /> <input type="submit" value="添加" /></td>
			</tr>
		</table>
	</form>
	
	 --%>

