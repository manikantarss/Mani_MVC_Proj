
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
    width: 1250px;
    height:300;
    float: center;
    margin: 0 auto;
}

#content {
    background:;
   
    margin: 5px;
}


#footer {
   
    color:red;
    clear:both;
    text-align:left;
    width:500px
    padding:1px; 
}
</style>
</HEAD>
<body background="designs.jpg">
<h3 style="color:#458B00; font-size:60px;margin-left:150px">Contacts App !</h3>

<div id="header">
<img src="logo contact.jpg"align="middle" style="width:1200px;height:200px">
<h3><a href="logout.do"><img src="logout.png" align="right"/></a></h3>
	

</div>

<div id="contentwrap">
        <div id="content">

<form action="">

<h2 style="color:Blue;">WELCOME <%= session.getAttribute("uname") %></h2>
<a href="editAcc.do"><img src="editacc.png" align="middle"/></a><br/>
<a href="listUser.do"><img src="listuser.png" align="middle"/></a><br/>
<a href="searchUser.do"><img src="searchuser.png" align="middle"/></a><br/>
</form>
</div>
</div>


<div id="section">

 

 
<p>

</p>
</div>

<div id="footer">

<a href="https://www.facebook.com"><img src="facebook button.png" align="right" width="60" height="60"/></a>
<a href="https://plus.google.com"><img src="google+.png" align="right" width="60" height="60"/></a>
<a href="https://in.linkedin.com/"><img src="linkind in.png" align="right" width="60" height="60"/></a>
<a href="https://twitter.com/"><img src="twitt.png" align="right" width="60" height="60"/></a>
</div>

</body>
</HTML>
