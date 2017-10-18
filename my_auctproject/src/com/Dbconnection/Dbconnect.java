package com.Dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class Dbconnect {
	Connection con=null;

	public Connection connectionDb()
	{
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/my_auct";
		String usrname="root";
		String passwrd="slesha";
		con=DriverManager.getConnection(url, usrname, passwrd);
		if(con!=null)
			System.out.println("connection dn!!");
		else
			System.out.println("not connected");
	}catch(Exception e)
		{
			e.printStackTrace();
		}
	return con;
	}

}
