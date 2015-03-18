
<%@page import="java.text.SimpleDateFormat"%>
<HTML>
<HEAD>
<style>
#header {
    background-color:transparent;
    color:white;
    text-align:center;
    padding:5px;
}
#nav {
    line-height:30px;
    background-color:;
    height:500px;
    width:165px;
    float:left;
    padding:20px; 
}
a:link{
color:blue;
background-color:transparent;
}
a:hover{
colour:black;
background-color: #def;
}
#contentwrap {
    width: 500px;
    height:300;
    float: center;
    margin: 0 auto;
}

#content {
    background:;
   
    margin: 5px;
}


#footer {
   
     
    position: fixed;
    bottom: 0;
}
</style>
</HEAD>
<body background="designs.jpg">
 <h3 style="color:#458B00;align:middle; font-size:60px;margin-left:150px">Contacts App !</h3>

<div id="header">
<%
	SimpleDateFormat sd =new SimpleDateFormat();
	out.print(sd.toString());
%>
</div>
<div id="footer">
<h3><a href="logout.do"><img src="logout.png" align="right"/></a></h3>
	

</div>

<div id="contentwrap">
        <div id="content">

<form action="">

<h2 style="color:Blue;">WELCOME <%= session.getAttribute("uname") %></h2>
<a href="editAcc.do"><img src="editacc.png" align="middle"/></a>
<a href="openAddContactView.do"><img src="addcontacts.png" align="middle"/></a>
<a href="openListContact.do"><img src="listcontact.png" align="middle"/></a>
<a href="searchContact.do"><img src="searchcontact.png" align="middle"/></a>
<a href="bdayRmndr.do"><img src="birthday.png" align="middle"/></a><br/><br/>
</form>
</div>
</div>


<div id="section">

 

 
<p>

</p>
</div>

<!-- <div id="footer">
<a href="https://www.facebook.com"><img src="facebook button.png" align="right" width="60" height="60"/></a>
<a href="https://plus.google.com"><img src="google+.png" align="right" width="60" height="60"/></a>
<a href="https://in.linkedin.com/"><img src="linkind in.png" align="right" width="60" height="60"/></a>
<a href="https://twitter.com/"><img src="twitt.png" align="right" width="60" height="60"/></a>
</div>-->

</body>
</HTML>
