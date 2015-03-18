<%@page import="com.rohit.java.RegBean"%>
<%@page import="com.rohit.java.ContactBean"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Contacts</title>
</head>
<body background="designs.jpg">
<h3 style="color:#458B00; font-size:60px;margin-left:150px">Contacts App !</h3>
<div style = "text-align:right;float:right">
	<a href="logout.do"><img src="logout1.png" align="right"/></a><br><br/>
	<a href="AdminMenu.jsp"><img src="goback.png" align="right" /></a>
	</div>
	<h1>Search Users</h1>
	<form action="searchuser.do">
	<tr><td><b>Search User by :</b></td> <td><SELECT type="text" name="search" search="Select"><option>name<option>email</SELECT><br/></td></tr>
	<tr><td><b>Enter something to search:</b></td> <td><input type="text" name="searchStr" required="required" ></td></tr>
	<tr><td><b><input type="submit" value ="SEARCH!"/></td></tr>
	</form>
	
	<%
	
	
	if(request.getAttribute("Slist1")!=null){
		
	
	
	ArrayList<RegBean> al= (ArrayList<RegBean>)request.getAttribute("Slist1");
	

	for(RegBean r:al)
	{
		
		out.print("<br/></li>  <li> Name : "+r.getName()+"</li> <li>Email(s) : "+r.getEmail()+"<br><b><a href="+"'"+"deleteUser.do?Csl_no="+r.getSl_no()+"'"+">"+"Delete Contact"+"</a></b>"+"<hr>");
		
	}
	}
	
	
%>
