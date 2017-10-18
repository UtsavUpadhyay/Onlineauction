package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Userbean;

import com.DAOobj.Daoaccess;

/**
 * Servlet implementation class Mob_Verf
 */
public class Mob_Verf extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mob_Verf() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email=request.getParameter("email");
		String id=request.getParameter("verifier");
		
		Boolean flag;
		
		HttpSession session=request.getSession();
		Userbean c=(Userbean) session.getAttribute("data");
		
		session.invalidate();
		Daoaccess dao=new Daoaccess();
		Long i=dao.randGet(email);
		String s=i.toString();
		System.out.println(s+"          "+id+"     "+email);
		int j=dao.insertion(c);
		if(j==0)
		{
			System.out.println("something went wrong");
			flag=dao.deleteRand(email);
			boolean f=dao.delete(email);
			System.out.println("     j      "+f);
			System.out.println(flag);
			request.setAttribute("s1", j);
			RequestDispatcher rd=request.getRequestDispatcher("intermediate.jsp");
			rd.forward(request, response);

		}
		else if(j==2)
		{
			System.out.println("choose another username(repeated username!!!!)");
			flag=dao.deleteRand(email);
			System.out.println(flag);
			boolean f=dao.delete(email);
			System.out.println("     j      "+f);
			request.setAttribute("s1", j);			
			RequestDispatcher rd=request.getRequestDispatcher("intermediate.jsp");
			rd.forward(request, response);
		}
		else
		{
			if(s.equals(id))
			{
				System.out.println("acc dn");
				j=3;
				flag=dao.deleteRand(email);
				System.out.println(flag);				
				request.setAttribute("user",c.getUser_id());
				System.out.println(c.getName()+"             hhhhhhhh");
				RequestDispatcher rd=request.getRequestDispatcher("/UserSession");
				rd.forward(request, response);
			}
			else
			{	
				j=4;
				System.out.println("acc not dn!!");
				flag=dao.deleteRand(email);
				System.out.println(flag);
				boolean f=dao.delete(email);
				System.out.println("     j      "+f);
				request.setAttribute("s1", j);
				RequestDispatcher rd=request.getRequestDispatcher("intermediate.jsp");
				rd.forward(request, response);
			}
		}
	}

}
