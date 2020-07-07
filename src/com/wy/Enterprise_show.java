package com.wy;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Enterprise_show extends HttpServlet {

	public Enterprise_show() {
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
		//ID,Title,Author,IssueDate
		String EnterpriseSort=req.getParameter("EnterpriseSort");v.add(EnterpriseSort);
		String EnterpriseName=req.getParameter("EnterpriseName");v.add(EnterpriseName);
		String Operation=req.getParameter("Operation");v.add(Operation);
		String WorkArea=req.getParameter("WorkArea");v.add(WorkArea);
		String Address=req.getParameter("Address");v.add(Address);
		String name[] = { "EnterpriseSort", "EnterpriseName", "Operation", "WorkArea","Address"};
		for(int i=0;i<5;i++)
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
		System.out.println(sql);
		req.setAttribute("sql", sql);
		req.getRequestDispatcher("enterprise_select.jsp").forward(req, resp);
		//resp.sendRedirect("active_select.jsp");
	}

	public void init() throws ServletException {
		// Put your code here
	}

}
