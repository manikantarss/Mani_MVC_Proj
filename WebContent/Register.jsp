<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body background="designs.jpg">
<h3 style="color:#458B00; font-size:60px;margin-left:150px">Contacts App !</h3>
	<center>	<h1 style="color:Green"><b><i>Register to Continue</i></b></h1></center>
	<center>
	<form action="RegInt.jsp" method = "post">
	<table border="1" width="10%" bgcolor="" style="color:red">
	<tr><td><b>Enter Name</b></td> <td>: <input type="text" name="name" value="${reg.name }"/></td></tr>
	<tr><td><b>Enter Email</b></td> <td> : <input type="text" name="email" value ="${reg.email}"/></td></tr>
	<tr><td><b>Enter Password</b></td> <td> : <input type="password" name="pass"/></td></tr>
	<tr><td><b>Re-Enter Password</b></td> <td> : <input type="password" name="rpass" /></td></tr>
	<tr><td><input type="submit"></td></tr>
	</table>
	</form>
	</center>
	<% if(request.getAttribute("message")!=null)
{	
		out.println("<h1>Success<h1>");
		out.println(request.getAttribute("message")) ;
	
}
	%>
<% if(request.getAttribute("errorMsg")!=null)
{	
	out.println("<center><h1 >ERROR<h1></center>");
	String s = (String)request.getAttribute("errorMsg");
	out.print("<center><h2 style="+"'"+"color:red"+"'"+">"+s+"<h2></center>");
}
%>

</body>
</html>