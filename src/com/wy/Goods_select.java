package com.wy;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Goods_select extends HttpServlet {

	public Goods_select() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException 
	{
		req.setCharacterEncoding("utf-8");
		int k=0;
		String sql="where ";
		Vector<String> v=new Vector<String>();
		v.removeAllElements();
		String GoodsStyle=req.getParameter("GoodsStyle");v.add(GoodsStyle);
		String GoodsName=req.getParameter("GoodsName");v.add(GoodsName);
		String GoodsNumber=req.getParameter("GoodsNumber");v.add(GoodsNumber);
		String GoodsUnit=req.getParameter("GoodsUnit");v.add(GoodsUnit);
		String StartProvince=req.getParameter("StartProvince");v.add(StartProvince);
		String StartCity=req.getParameter("StartCity");v.add(StartCity);
		String EndProvince=req.getParameter("EndProvince");v.add(EndProvince);
		String EndCity=req.getParameter("EndCity");v.add(EndCity);
		String name[] = { "GoodsStyle", "GoodsName", "GoodsNumber", "GoodsUnit","StartProvince", "StartCity", "EndProvince", "EndCity"};
		for(int i=0;i<8;i++)
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
		//v.removeAllElements();
		System.out.println(sql);
		req.setAttribute("sql", sql);
		req.getRequestDispatcher("goods_select.jsp").forward(req, resp);
		//resp.sendRedirect("active_select.jsp");
	}

	public void init() throws ServletException {
		// Put your code here
	}

}
