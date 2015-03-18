<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII" errorPage="Error.jsp" import="com.rohit.java.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Edit Account</title>
</head>
<body background="designs.jpg">
	<center><h1 style="color:blue;">EDIT CONTACT</h1></center>
	
	<%
		ContactBean cb = (ContactBean) request.getAttribute("contactDetails");
	%>
	<center>
		<table  border="1%" width="30" bgcolor="white" style="color:red" >
		<form action="EditContactInt.jsp" method="post">
		<tr><td><b>Name: </b></td> <td> <input type="text" name="name" value='<%= cb.getName() %>'/></td></tr>
		<tr><td><b>Email:</b></td> <td>  <input type="text" name="emails"  value= '<%= cb.getEmails() %>'   /></td></tr>
		<tr><td><b>	DOB:</b></td> <td>  <input type="text" name="dob" value='<%= cb.getDob() %>'/></td></tr>
		<tr><td><b>PH.no:</b></td> <td> <input type="text" name="phno" value='<%= cb.getPhno() %>'/></td></tr>
		<tr><td><b>Tags:</b></td> <td> <input type="text" name="tags" value='<%= cb.getTags() %>'/></td></tr>
		<tr><td><b>Gender: </b></td> <td> <input type="text" name="gender" value='<%= cb.getGender() %>'/></td></tr>
		<tr><td><b><input type="submit" value="Update"/></b></td></tr>
	</form>
	</table>
	</center>
	
	
	<%
		if(request.getAttribute("message")!=null)
		{
			out.println("<h2>Success</h2>");
			out.println(request.getAttribute("message"));
		}
	
	%>
	
	<%
		if(request.getAttribute("errorMsg")!=null)
		{
			out.println("<h2>Error</h2>");
			out.println(request.getAttribute("errorMsg"));
		}
	
	%>
	
</body>
</html>