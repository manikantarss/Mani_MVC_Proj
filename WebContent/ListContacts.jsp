<%@page import="com.rohit.java.ContactBean"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contacts</title>
</head>
<body background="designs.jpg">
<h3 style="color:#458B00; font-size:60px;margin-left:150px">Contacts App !</h3>
<div style = "text-align:right;float:right">
	<a href="logout.do"><img src="logout1.png" align="right"/></a><br><br/>
	<a href="editAcc.do"><img src="editacc1.png" align="right"/></a><br/>
	<a href="Menu.jsp"><img src="goback.png" align="right" /></a>
	
	</div>
<h1 style="color:Blue" align="center">Existing Contacts</h1>
<%
	if(request.getAttribute("list1")!=null)
	{
	ArrayList<ContactBean> al= (ArrayList<ContactBean>)request.getAttribute("list1");
	int uid=0;
	out.print("<hr>");
	for(ContactBean r:al)
	{
		if(al.isEmpty()){
			out.print("Please some contacts");
			
		}else
		uid++;
		
		if(r.getSl_no().equals("")){
			out.print("<h1>Please add some Contacts<h1>");
		}else
		out.print("<li>SL No "+uid+"</li>  <li> Name : "+r.getName()+"</li> <li>Email(s) : "+r.getEmails()+"</li> <li>DOB : "+r.getDob()+"</li> <li>PhNo  : "+r.getPhno()+"</li> <li>Tags : "+r.getTags()+"<br><b><a href="+"'"+"editContactView.do?Csl_no="+r.getSl_no()+"'"+">"+"Edit Contact"+"</a></b>"+"<br><b><a href="+"'"+"deleteContact.do?Csl_no="+r.getSl_no()+"'"+">"+"Delete Contact"+"</a></b>"+"<hr>");
		
	}
	uid=0;
	}
%>
</body>
</html>