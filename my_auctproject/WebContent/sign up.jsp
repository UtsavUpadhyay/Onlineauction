<%@page import="org.apache.coyote.Request"%>
<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page import="javax.xml.parsers.DocumentBuilder"%>
<%@page import="java.awt.event.WindowListener"%>
<%@page import="sun.awt.AWTAccessor.WindowAccessor"%>
<%@page import="java.awt.Window"%>
<%@page import="javax.swing.text.Document"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.DAOobj.Daoaccess"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
			
		<title>HAuct</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet' type='text/css'>
		<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
        
	
								
	
      
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-panels.min.js"></script>
		<script src="js/init.js"></script>
		<script src="js/validation.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel-noscript.css" />
			<link rel="stylesheet" href="css/style.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->


						
	</head>
	
	<body class="homepage" onload="document.myform.fname.focus();">

	<!-- Header -->
	
		<div id="header">
		
		
		
			<div class="container">

					
				<!-- Logo -->
					<div id="logo">
					
						<h1><a href="#">HAuct</a></h1>
						
					</div>
				
				<!-- Nav -->
					<nav id="nav">
						<ul>
							<li><a href="index.jsp">Homepage</a></li>
							<li class="active"><a href="login.jsp">Sign in</a></li>
							<li><a href="twocolumn1.html">Guest</a></li>
							<li><a href="twocolumn2.html">Notification</a></li>
							<li><a href="onecolumn.html">Categories</a></li>
						</ul>
					</nav>

			</div>
		</div>
	<!-- Header -->
			
		
			
	<!-- Main -->
		<div id="main">
		
		
			<div class="container">
						
				<fieldset style="text-align: center;">
		<center><font size="24pt" style="color:teal;" >SIGN UP FOR FREE!!!</font></center>		
		<br><br><br>
				    
				    	<img alt="image for the logo" src="images\logo.JPG" height="200px" width="200px" align="left" style="margin-top: 300px">
						<img alt="image for logo" src="images\123.JPG" height="200px" width="400px" align="left" style="margin-top: 300px">
						<font color="#203349" size="4 pt" style="text-align: left;"><b><i>The best experience of auction site you can get here only...</i></b></font>
						<table style="border: inset;" align="right">
						<tr><td>
						<br>
						
						
						
						<form action="Ins_Servlet" method="post" name="myform">
						
						<pre style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name</pre>
						<input type="text" name="fname" placeholder="First" size="15" onblur="allLetter(this)" />&nbsp;&nbsp;&nbsp;
						
						<input type="text" name="lname" placeholder="last" size="15" onblur="allLetter(this)" /><br>
						<div id="msg8" align="left" style="color: red; margin-left: 20px;"></div>
						<pre style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Create user id</pre>
						
						<input type="text" name="username" size="35"  placeholder="userId" onblur="userid_validation(this,5,12)"/><br>
						<div id="msg" align="left" style="color: red; margin-left: 20px;"></div>
						<pre style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Create a password</pre>
						
						<h3 style="font-size: 16pt"><input type="password" name="pass" placeholder="password" size="35" onblur="passid_validation(this,6,20)" /></h3>
						<div id="msg1" align="left" style="color: red; margin-left: 20px;"></div>
						<pre style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Confirm your password</pre>
						
						<h3 style="font-size: 16pt"><input type="password" name="pass1" placeholder="confirm password" size="35" onblur="compare()" /></h3>
						<div id="msg9" align="left" style="color: red; margin-left: 20px;"></div>
						<pre style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Location</pre>
						
						<p align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="location"  onblur="countryselect(this)"><option value="Default"></option><option value="India">India</option><option value="United Kingdom">United Kingdom</option><option value="America">America</option><option value="Canada">Canada</option><option value="Australia">Australia</option></select><br></p>
						<div id="msg2" align="left" style="color: red; margin-left: 20px;"></div>
						<pre style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Enter address</pre>
						
						<h3 style="font-size: 16pt">&nbsp;<textarea cols="35" rows="3" name="address"  placeholder="address" onblur="addalphanumeric(this)"></textarea><br></h3>
						<div id="msg3" align="left" style="color: red; margin-left: 20px;"></div>
						<pre style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gender</pre>
						<p align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="gender"  onblur="sexselect(this)"><option value="I am"></option><option value="male">Male</option><option value="female">Female</option><option value="other">Other</option></select><br></p>
						<br>
						<div id="msg4" align="left" style="color: red; margin-left: 20px;"></div>
						<pre style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email id</pre>
						<h3 style="font-size: 16pt"><input type="text" name="email id" placeholder="email" size="35" onblur="ValidateEmail(this)" style="color: graytext;"/><br></h3>
						<div id="msg5" align="left" style="color: red; margin-left: 20px;"></div>
						<pre style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Birthday</pre>
						<h3 style="font-size: 16pt;"><input type="text" name="dob" placeholder="birthdate" size="35" onblur="dobalphanumeric(this)"/><br></h3>
						<div id="msg6" align="left" style="color: red; margin-left: 20px;"></div>
						<pre style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mobile no.</pre>
						<h3 style="font-size: 16pt;"><input type="text" name="mobile" size="35" placeholder="mobile" onblur="allnumeric(this)"/><br><br></h3>
						<div id="msg7" align="left" style="color: red; margin-left: 20px;"></div>
						<pre style="text-align: right;margin-right:22px; ;"><input type="submit" name="submit" value="Register"/></pre>
						<br><br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</form>
						
						</td></tr></table>
						<br><br>
						
					</fieldset>
				
				<div class="divider">&nbsp;</div>
				<div class="row">
				
								
			</div>
		</div>
		</div>
	<!-- Main -->
<%@ include file="include\footer.jsp" %> 
	