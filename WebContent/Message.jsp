<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>

<body background="designs.jpg">
<h3 style="color:#458B00; font-size:60px;margin-left:150px">Contacts App !</h3>
<div style = "text-align:right;float:right">
	<a href="logout.do"><img src="logout1.png" align="right"/></a><br/>
	<a href="Menu.jsp"><img src="goback.png" align="left"/></a>
	
	</div>
	
	<%
		
		if(request.getAttribute("message")!=null)
		{	String m = (String)request.getAttribute("message");
			out.println("<center><h2>Success</h2></center>");
			out.println("<center><h1>"+m+"</h1></center>");
		}
	
	%>
	<%
		if(request.getAttribute("errorMsg")!=null)
		{	
			String e =(String)request.getAttribute("errorMsg");
			out.println("<big><center><h1>Error</h1></center><big>");
			out.println("<center><h2>"+e+"<h2></center>");
		}
	
	
	%>
</body>
</html>