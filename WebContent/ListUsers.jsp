<%@page import="com.rohit.java.RegBean"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RegisteredUsers</title>
</head>
<body background="designs.jpg">
<div style = "text-align:right;float:right">
	<a href="logout.do"><img src="logout1.png" align="right"/></a><br><br/>
	<a href="AdminMenu.jsp"><img src="goback.png" align="right" /></a>
	</div>
<h1 style="color:blue" align="center">Registered Users</h1>
<%
	if(request.getAttribute("list")!=null)
	{
	ArrayList<RegBean> al= (ArrayList<RegBean>)request.getAttribute("list");
	int uid=0;
	out.print("<hr>");
	for(RegBean r:al)
	{
		uid++;
		out.print("SL No "+uid+"<br>Registration no:"+r.getSl_no()+"<br>   User Name : "+r.getName()+"<br> User Email : "+r.getEmail()+"<br><b><a href="+"'"+"deleteUser.do?Csl_no="+r.getSl_no()+"'"+">"+"Delete User"+"</a></b><hr>");
	}
	uid=0;
	}
%>
</body>
</html>