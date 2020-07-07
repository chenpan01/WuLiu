package com.wy;

import java.sql.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.*;

public class JDBConnection {

	private static Connection conn = null; // 设置Connection类的对象
	private static PreparedStatement ps = null; // 设置Statement类的对象
	private ResultSet rs = null; // 设置ResultSet类的对象

	private String dbUrl = "jdbc:mysql://localhost:3306/db_wuliu";
	private String dbUserName = "root";
	private String dbPassword = "chenpan";
	private String jdbcName = "com.mysql.jdbc.Driver";

	public  Connection getCon() throws Exception {
		Class.forName(jdbcName);
		Connection con = DriverManager.getConnection(dbUrl, dbUserName,dbPassword);
		return con;
	}

	public void close(Connection con) throws Exception {
		if (con != null) {
			con.close();
		}
	}
	public void Close(Connection con,PreparedStatement ps) throws Exception {
		if (con != null) 
		{
			con.close();
		}
		if(ps!=null)
			ps.close();
	}
	public void execute(String sql)throws Exception
	{
//		if(sql==null||"".equals(sql))
//			return;
		conn = this.getCon();
		try 
		{
			ps = conn.prepareStatement(sql);
			ps.execute(); 
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
			System.out.println("Query Exception"); // 在控制台中输入异常信息
		} 
	}
	
	public ResultSet executeQuery(String sql) throws Exception 
	{
		conn = this.getCon();
		try 
		{
			Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
			rs = stmt.executeQuery(sql);
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
			System.out.println("Query Exception"); // 在控制台中输入异常信息
		} 
		return rs; // 将查询的结果通过return关键字返回
	}

	public boolean executeUpdata(String sql) 
	{
//		if(sql==null||"".equals(sql))
//			return false;
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery(); // 执行添加、修改、删除操作
			return true; // 如果执行成功则返回true
		} catch (Exception e) {
			e.printStackTrace();
			return false; // 如果执行成功则返回false
		}
	}

}
