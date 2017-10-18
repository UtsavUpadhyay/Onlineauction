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
				<center><font size="24pt" style="color:teal;" >LOGIN NOW</font></center>		
				<br><br><br>
				    <center>
						<table style="border: inset;">
						<tr><td>
						<br>
						<br>
						
						
						<form action="ForgetPass" method="post" id="myform1">
						<pre style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;enter email id</pre>
							<input type="text" name="email_id" value="email" size="30" style="color: graytext"/>&nbsp;&nbsp;&nbsp;<br>
							<pre style="text-align: right;margin-right:22px; ;"><input type="submit" name="submit" value="ok"/></pre><br>
							<pre style="font-size: 12pt">we will send code on this email id...</pre>
							</form>
								</td></tr></table>
						<br><br>
						</center>
						</fieldset>
				
				
				</div>
		</div>
	<!-- Main -->
 	<%@ include file="include\footer.jsp" %> 