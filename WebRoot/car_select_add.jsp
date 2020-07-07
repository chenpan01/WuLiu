<%@page import="java.util.*"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"
	import="java.sql.*, java.io.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection" />
<%
	request.setCharacterEncoding("utf-8");
%>
<%!
	String TradeMark = "";
	String Brand = "";
	String Style = "";
	String CarLoad = "";
	String UsedTime = "";
	String DriverName = "";
	String Code = "";
	String ID = "";
	String sql;
	int id,k=0;
	ResultSet rs = null;
	Vector v=new Vector();
	%>
<%
	ID = request.getParameter("ID");
	String name[] = { "Code", "TradeMark", "Brand", "Style","CarLoad", "UsedTime", "DriverName"};
	if (!"".equals(ID)) 
	{
		sql = "where ";
		v.removeAllElements();
		Code = request.getParameter("Code");v.add(Code);
		TradeMark = request.getParameter("TradeMark");v.add(TradeMark);
		Brand = request.getParameter("Brand");v.add(Brand);
		Style = request.getParameter("Style");v.add(Style);
		CarLoad = request.getParameter("CarLoad");v.add(CarLoad);
		UsedTime = request.getParameter("UsedTime");v.add(UsedTime);
		DriverName = request.getParameter("DriverName");v.add(DriverName);
		//String vlaue[]={Code,TradeMark,Brand,Style,UsedTime,CarLoad,DriverName};
		for(int i=0;i<7;i++)
		{
			if (v.get(i)!= null && !"".equals(v.get(i)))
			{
				if(k==0)
					sql+= name[i]+" like '%" + v.get(i) + "%'";
				if(k==1)
					sql+=" and "+name[i]+" like '%" + v.get(i) + "%'";
				k=1;
			}
		}
		k=0;
		if ("1".equals(ID)) 
		{
			sql = "insert into db_wuliu.tb_CarMessage(Code,TradeMark,Brand,Style,CarLoad,UsedTime,DriverName)values("
					+ "'"
					+ Code
					+ "',"
					+ "'"
					+ TradeMark
					+ "',"
					+ "'"
					+ Brand
					+ "',"
					+ "'"
					+ Style
					+ "',"
					+ "'"
					+ CarLoad
					+ "',"
					+ "'"
					+ UsedTime
					+ "',"
					+ "'"
					+ DriverName
					+ "')";
			System.out.println(sql);
			try {
				connection.execute(sql);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				//sql = "";
				try {
					if (rs != null)
						rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

		} 
		else if ("2".equals(ID))
	    {
			System.out.println("car_select_add.jsp       "+sql);
		}
	}
	ID="";
	request.setAttribute("sql", sql);
	request.setAttribute("select", 1);
%>
<jsp:forward page="car_select.jsp" />
