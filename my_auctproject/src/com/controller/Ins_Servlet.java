package com.controller;

import gmail.gmail;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.mail.Session;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Userbean;

import com.DAOobj.Daoaccess;





/**
 * Servlet implementation class Ins_Servlet
 */
public class Ins_Servlet extends HttpServlet {
	String name=null;
	String pass=null;
	String location=null;
	String add=null;
	String gen=null;
	String user_id=null;
	String email_id=null,birthday=null;
	String mob=null;
	Daoaccess dao=new Daoaccess();
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ins_Servlet() {
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
		PrintWriter pw=response.getWriter();
		Userbean c=new Userbean();
		boolean flag;
		
		name=request.getParameter("fname")+" "+request.getParameter("lname");
		pass=request.getParameter("pass");
		location=request.getParameter("location");
		add=request.getParameter("address");
		gen=request.getParameter("gender");
		user_id=request.getParameter("username");
		birthday=request.getParameter("dob");
		email_id=request.getParameter("email id");
		mob=request.getParameter("mobile");
		Random rnd=new Random();
		int sntId=rnd.nextInt(Integer.MAX_VALUE)+1;
		flag=dao.randVerif(sntId, email_id);
		
		if(flag==true)
			System.out.println("rand no inserted");
		gmail g=new gmail();
		HttpSession session=request.getSession();
		g.setAccountDetails("HAuct.co", "all the way 123");
		g.sendGmail("HAuct.co@gmail.com",email_id, "Verification code", ""+sntId);
		c.setName(name);
		c.setPassword(pass);
		c.setLocation(location);
		c.setAddress(add);
		c.setGender(gen);
		c.setBirthday(birthday);
		c.setEmail_id(email_id);
		c.setMobile_no(mob);
		c.setUser_id(user_id);
		
		session.setAttribute("data", c);
		request.setAttribute("id", email_id);
		RequestDispatcher rd=request.getRequestDispatcher("mob verif.jsp");
		rd.forward(request, response);
		

	}

}
