package com.DAOobj;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import bean.Itembean;
import bean.Userbean;

import com.Dbconnection.Dbconnect;



public class Daoaccess {
	Connection con=null;
	Userbean c=new Userbean();
	List<Userbean> l1=new ArrayList<Userbean>();
	
	public int insertion(Userbean l)
	{
		int i=0;
	try {
		
		Dbconnect db=new Dbconnect();
		con=db.connectionDb();
		Statement stmt=con.createStatement();
		String sql="insert into userdata(name,id,password,location,address,email,birthday,gender,mobile) values ('"+l.getName()+"','"+l.getUser_id()+"','"+l.getPassword()+"','"+l.getLocation()+"','"+l.getAddress()+"','"+l.getEmail_id()+"','"+l.getBirthday()+"','"+l.getGender()+"','"+l.getMobile_no()+"')";
		
		String sql1="select * from userdata";
		ResultSet rs=stmt.executeQuery(sql1);
		boolean flag=false;
		while(rs.next())
			if(l.getUser_id().equals(rs.getString("id")))
				flag=true;
		System.out.println(l.getUser_id());
		System.out.println(l.getPassword());
			if(flag==false)
			{
					if(l.getUser_id().isEmpty() || l.getPassword().isEmpty())
					{	
						System.out.println("in if");
						System.out.println("something went wrong");
						i=0;
						
					}
					else
					{
						System.out.println("in else");
						i=stmt.executeUpdate(sql);
					}
			}
			else
			{
				System.out.println("choose another username");
				i=2;
			}			
		
		} catch (Exception e) {
		// TODO Auto-generated catch block
			e.printStackTrace();
		}
	return i;
	
	}
	public boolean randVerif(int l,String email)
	{
		int i=0;
	try {
		
		Dbconnect db=new Dbconnect();
		con=db.connectionDb();
		Statement stmt=con.createStatement();
		String sql="insert into rand_no(email,rnd_no) values ('"+email+"','"+l+"')";
		i=stmt.executeUpdate(sql);
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		if(i>0)
			return true;
		else
			return false;
	}
	public long randGet(String email)
	{	long i=0;
		try {
			
			Dbconnect db=new Dbconnect();
			con=db.connectionDb();
			Statement stmt=con.createStatement();
			String sql="select * from rand_no where email='"+email+"'";
			ResultSet rs=stmt.executeQuery(sql);
			if(rs.next())
			{
				i=rs.getLong("rnd_no");
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
		
	}
	public boolean delete(String email)
	{	boolean flag=false;
		int i;
		try{
			Dbconnect db=new Dbconnect();
			con=db.connectionDb();
			Statement stmt=con.createStatement();
			
			String sql1="delete from userdata where email='"+email+"'";
			i=stmt.executeUpdate(sql1);
			if(i==1)
				flag=true;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return flag;
	}
	public boolean deleteRand(String email)
	{
		boolean flag=false;
		try{
			Dbconnect db=new Dbconnect();
			con=db.connectionDb();
			Statement stmt=con.createStatement();
			
			String sql1="delete from rand_no where email='"+email+"'";
			int i=stmt.executeUpdate(sql1);
			if(i==1)
				flag=true;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return flag;
		
	}
	public boolean valid(String username,String password)
	{
		boolean flag=false;
		try{
			Dbconnect db=new Dbconnect();
			con=db.connectionDb();
			Statement stmt=con.createStatement();
			String sql="select id,password from userdata where id='"+username+"'";
			ResultSet rs=stmt.executeQuery(sql);
			if(rs.next())
				if(rs.getString("password").equals(password))
					flag=true;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return flag;
	}
	public int insert(String user)
	{
		int i=0;
	try {
		
		Dbconnect db=new Dbconnect();
		con=db.connectionDb();
		Statement stmt=con.createStatement();
		String sql1="select * from userdata";
		ResultSet rs=stmt.executeQuery(sql1);
		while(rs.next())
		{
			if(user==rs.getString("id"))
				i=1;
		}
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	return i;
	}
	public int insertItem(Itembean i)
	{
		int flag=0;
		try
		{
			Date d= new Date();
			Dbconnect db=new Dbconnect();
			Connection conn=db.connectionDb();
			Statement stmt=conn.createStatement();
			String sql="insert into item(itemname,seller,initprice,category,itemdesc) values ('"+i.getName()+"','"+i.getSeller()+"','"+i.getInitprice()+"','"+i.getCategory()+"','"+i.getDescription()+"')";
			flag=stmt.executeUpdate(sql);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return flag;
	}
	public Userbean DataFetch(String username)
	{
		
		try {
			
			Dbconnect db=new Dbconnect();
			con=db.connectionDb();
			
			Statement stmt=con.createStatement();
			String sql1="select * from userdata where id='"+username+"'";
			ResultSet rs=stmt.executeQuery(sql1);
			if(rs.next())
			{
				c.setName(rs.getString("name"));
				c.setUser_id(rs.getString("id"));
				c.setPassword(rs.getString("password"));
				c.setLocation(rs.getString("location"));
				c.setAddress(rs.getString("address"));
				c.setEmail_id(rs.getString("email"));
				c.setBirthday(rs.getString("birthday"));
				c.setGender(rs.getString("gender"));
				c.setMobile_no(rs.getString("mobile"));
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return c;
		
	}
}
