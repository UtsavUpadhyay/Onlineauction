<%@ page import="bean.Userbean"%>
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
		<link rel="icon" href="http://www.domain.com/favicon.ico" type="images/123.JPG" />
		<link rel="shortcut icon" href="http://www.domain.com/favicon.ico" type="images/123.JPG" />
        
	
								
	
      
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
							<li class="active"><a href="index.jsp">Homepage</a></li>
							<li><a href="login.jsp">Place Auction</a></li>
							<li><a href="twocolumn1.html">Bid Auction</a></li>
							<li><a href="twocolumn2.html">Notification</a></li>
							<li><a href="onecolumn.html">Metrimonial</a></li>
						</ul>
					</nav>

			</div>
		</div>
	<!-- Header -->
			
		
			

	<!-- Main -->
		<div id="main">
			<div class="container">
					<div class="row">
					<%
					
						Userbean c=(Userbean) session.getAttribute("k");
					%>
					<center><h1 style="font-size: 15pt;">"Welcome  <%= c.getName() %> !!! your account created successfully!!!!!!"</h1></center>
					<br><br><br>
					<center>
					<img src="images/accessories.png" name="slide" width="750" alt="image here" height="300" style="position: relative; margin-left: 200px" />
					</center>
					<script type="text/javascript">


var image1=new Image()
image1.src="images/accessories.png"
	
	
var image2=new Image()
image2.src="images/toys.png"
	
	
var image3=new Image()
image3.src="images/Clothing.png"
	
var image4=new Image()
image4.src="images/Bags and Shoes.png"
	
var image5=new Image()
image5.src="images/Electronics gedgets.png"
	
var image6=new Image()
image6.src="images/home1.png"
	
var image7=new Image()
image7.src="images/vehicles.png"
	
var image8=new Image()
image8.src="images/Antiques.png"
	

</script>
					
<script type="text/javascript">

//variable that will increment through the images
var step=1
function slideit(){
//if browser does not support the image object, exit.

if (!document.images)
return
document.images.slide.src=eval("image"+step+".src")

if (step<8)
step++
else
step=1
//call function "slideit()" every 2.5 seconds
setTimeout("slideit()",2500)

	//if browser does not support the image object, exit.

	
}
slideit()


//-->
</script>			
					
	</div>
				
<div class="divider">&nbsp;</div>
				<div class="row">
				
								
				</div>
			</div></div>
	<!-- Main -->
<%@ include file="include\footer.jsp" %>