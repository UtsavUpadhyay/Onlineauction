package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAOobj.Daoaccess;

import bean.Itembean;

/**
 * Servlet implementation class AddItem
 */
public class AddItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddItem() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		String username=(String)session.getAttribute("username");
		String name=request.getParameter("name");
		String description=request.getParameter("description");
		String closeson=request.getParameter("closeson");
		String initprice=request.getParameter("initprice");
		String category=request.getParameter("category");
		System.out.println(username+"  "+name+" "+description+" "+closeson+" "+initprice+" "+category);
        Itembean item=new Itembean();
        item.setDescription(description);
        item.setInitprice(Integer.parseInt(initprice));
        item.setCloseson(closeson);
        item.setName(name);
        item.setSeller(username);
        item.setCategory(category);
        Daoaccess dao=new Daoaccess();
        int i=dao.insertItem(item);
        if(i>0)
        {
        	out.println("Item added to auction");
        }
        else
        {
        	out.println("Item not added");
        }
        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
