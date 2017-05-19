 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Random"%>
<%@ page import="java.util.*"%>
<%!
    public int generateRandomNumber(int start, int end ){
        Random random = new Random();
        long fraction = (long) ((end - start + 1 ) * random.nextDouble());
        return ((int)(fraction + start));
    }

%>
    <html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>TEST RANDOM NUMBER</title>
    </head>
    <body>
	<h1>success fully registered</h1>
	<h1>applied date <%=new java.util.Date()%></h1>
         <h1>scolarship id :<%=generateRandomNumber(1000,8888)%></h1>
	<center><a href="main.html">HOME</a></center>
    </body>
    </html>