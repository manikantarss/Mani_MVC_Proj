<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML> 
    <HEAD>
        <TITLE>Login Page</TITLE>
    </HEAD>
    <BODY background="designs.jpg" >
       <center>
        <form method="post" action="LogInt.jsp">
            
               <h3 style="color:#458B00;align:middle; font-size:60px;margin-left:150px">Contacts App !</h3>
              
               <big><big><table border="1%" width="2" bgcolor="" style="color:red">
                    <tr><td><b>Email</b></td> <td><input type="text" name="email" value="${reg.email}"/></td></tr>
                    <tr><td><b>Password</b></td> <td><INPUT type="password" name="pass"value="${reg.pass}"/></td></tr>
                    <tr><td><input type="submit" value="Login"></td>
                        <td><input type="reset" value="Reset"></td>
                </table></big></big>
                
        </form>
        </center>
        <%if(request.getAttribute("errorMsg")!=null)
		{
			out.println("<h1>Error</h1>");
			out.println("<h2><b>"+request.getAttribute("errorMsg")+"<b><h2>");
		}
	%>
    </BODY>
</HTML>