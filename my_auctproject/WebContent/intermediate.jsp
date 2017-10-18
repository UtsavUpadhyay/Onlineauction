<meta http-equiv="refresh" content="30; URL=http://localhost:8080/my_auctproject/sign%20up.jsp">

<%@ include file="include\header.jsp" %>
	<!-- Main -->
		<div id="main">
			<div class="container">
					<div class="row">
					<%
					
					int i= (Integer) request.getAttribute("s1");
					System.out.println(i);
										
					if(i==0)
					{
					%>
					<h1  style="font-size: 15pt;">"something went wrong"</h1>
					<%
					}
					else if(i==2)
					{
					%>
					<h1 style="font-size: 15pt;">"choose another username(repeated username!!!!)"</h1>
					<%}
					else if(i==4)
					{
					%>
					<h1 style="font-size: 15pt;">"code mismatched!!try again"</h1>
					<%
					}
					else
					{
					%>
					<h1 style="font-size: 15pt;">"wrong method"</h1>
					<%}
					%>

				
								
				</div>
			</div></div>
	<!-- Main -->
<%@ include file="include\footer.jsp" %>