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
<div style = "text-align:right;float:right">
	<a href="logout.do"><img src="logout1.png" align="right"/></a><br><br/>
	<a href="editAcc.do"><img src="editacc1.png" align="right"/></a><br/>
	<a href="Menu.jsp"><img src="goback.png" align="right" /></a>
	</div>
	<h1>Search Contacts</h1>
	
	<form action="Search.do">
	<tr><td><b>Search Contacts by :</b></td> <td><SELECT type="text" name="search" search="Select"><option>name<option>emails<option>phno<option>dob<option>tags</SELECT><br/></td></tr>
	<tr><td><b>Enter something to search:</b></td> <td><input type="text" name="searchStr" required="required" ></td></tr>
	<tr><td><b><input type="submit" value ="SEARCH!"/></td></tr>
	</form>
	
	<%
	
	
	if(request.getAttribute("Slist")!=null){
		
	
	
	ArrayList<ContactBean> al= (ArrayList<ContactBean>)request.getAttribute("Slist");
	
	
	for(ContactBean r:al)
	{
		
		out.print("<br/></li>  <li> Name : "+r.getName()+"</li> <li>Email(s) : "+r.getEmails()+"</li> <li>DOB : "+r.getDob()+"</li> <li>PhNo  : "+r.getPhno()+"</li> <li>Tags : "+r.getTags()+"<br><b><a href="+"'"+"editContactView.do?Csl_no="+r.getSl_no()+"'"+">"+"Edit Contact"+"</a></b>"+"<br><b><a href="+"'"+"deleteContact.do?Csl_no="+r.getSl_no()+"'"+">"+"Delete Contact"+"</a></b>"+"<hr>");
		
	}
	}
	
	
%>
