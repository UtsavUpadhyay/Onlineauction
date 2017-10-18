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
		<noscript>
			<link rel="stylesheet" href="css/skel-noscript.css" />
			<link rel="stylesheet" href="css/style.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->
	</head>
	<body class="homepage">

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
							<li><a href="login.jsp">Sign in</a></li>
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
		<center><font size="24pt" style="color:teal;" >ADD ITEM FOR AUCTION!!!</font></center>		
		<br><br><br>
				    
				    	<!--  <img alt="image for the logo" src="images\logo.JPG" height="200px" width="200px" align="left" style="margin-top: 300px">-->
						<img alt="image for logo" src="images\123.JPG" height="200px" width="400px" align="left" style="margin-top: 300px">
						<table style="border: inset;" align="center">
						<tr><td>
						<br>
						
						
						
						<form action="Ins_Servlet" method="post">
						<pre style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Item Name :</pre>
						<p align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="name" value="Item Name" size="15" style="color: graytext"/>&nbsp;&nbsp;&nbsp;
						<br>
						
						<pre style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Category :</pre>
						<p align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="category" style="color: graytext"><option value="Accessories">Accessories</option><option value="Electronics">Electronics</option><option value="Toys">Toys</option><option value="Sporting Goods">Sporting Goods</option><option value="Vehicle">Vehicle</option><option value="Clothing">Clothing</option><option value="Property">Property</option><option value="Antiques">Antiques</option></select><br></p>
						<pre style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Item Description :</pre>
						<h3 style="font-size: 16pt">&nbsp;<textarea cols="35" rows="3" name="description" style="color: graytext" onmouseover="alert("Enter valid address")"></textarea><br></h3>
						
						<br>
						
						<pre style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Initial Price :</pre>
						<h3 style="font-size: 16pt"><input type="text" name="initprice" value="" size="35" style="color: graytext" onmouseover="alert("Enter valid email id")"/><br></h3>
						<br>
						<pre style="text-align:center;margin-right:22px; ;"><input type="submit" name="addItem" value="Add Item!"/></pre>
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
