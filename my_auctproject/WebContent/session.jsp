<%@ page import="bean.Userbean" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Get started</title>
</head>
<body>
<%
Userbean c=(Userbean) request.getAttribute("s");
%>
WELCOME!!!!!
<form action="UserSession" method="post">
<input type="hidden" name="list" value=<%=c %>/>
</form>
</body>
</html>