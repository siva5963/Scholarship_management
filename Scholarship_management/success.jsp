<body background="middle.jpg"></body>

<%
    if ((session.getAttribute("email") == null) || (session.getAttribute("email") == "")) {
%>
You are not logged in<br/>
<a href="alogin.html">Please Login</a>
<%} else {
%>


<%
    }
%>
<html>
<body background="middle.jpg">

<marquee behavior="alternate"><h2><font color="white">welcome to Scholarship </font></h2></marquee>
<center align="right">

<A HREF="profile.html" style="text-decoration:none" target="main">PROFILE</A>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="scholarship.html" style="text-decoration:none" target="main">UPLOAD DOCUMENTS</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<A HREF="feedback.html" style="text-decoration:none" target="main">FEEDBACK</A>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

</center>
</body>
</html>
<a href="logout1.jsp">LOGOUT</a>
