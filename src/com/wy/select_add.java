package com.wy;

import java.io.*;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class select_add extends HttpServlet {

	public select_add() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		resp.setContentType("text/html");
		JDBConnection conn=new JDBConnection();
		String TradeMark=req.getParameter("TradeMark");
		String Brand=req.getParameter("Brand");
		String Style=req.getParameter("Style");
		String CarLoad=req.getParameter("CarLoad");
		String UsedTime=req.getParameter("UsedTime");
		String DriverTime=req.getParameter("DriverTime");
		String TranspotStyle=req.getParameter("TranspotStyle");
		ResultSet rs = null;
		//INSERT INTO table_name (列1, 列2,...) VALUES (值1, 值2,....)
		String sql="insert into db_wuliu.tb_CarMessage(TradeMark,Brand,Style,CarLoad,UsedTime" +
				",DriverTime,TranspotStyle,)values("+"'"+TradeMark+"',"+"'"+Brand+"',"+"'"+Style+"',"+"'"+CarLoad+"',"+"'"+UsedTime+"',"+"'"+DriverTime+"',"+"'"+TranspotStyle+")";
		System.out.println(sql);
		try 
		{
//			Connection link=conn.getCon();
//			PreparedStatement ps=link.prepareStatement(sql);
			rs=conn.executeQuery(sql);
			
			
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
		finally
		{
				
				try {
					if(rs!=null)
						rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				//req.setAttribute(name, o)
				req.getRequestDispatcher("car_select.jsp").forward(req, resp);
				//request.getRequestDispatcher("/student_list.jsp").forward(request, response);
		}
	}

	public void init() throws ServletException {
		// Put your code here
	}

}
