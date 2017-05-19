<%@ page import="java.sql.*" %>
<html>
<body bgcolor="yellow">
<center align="right">

<A HREF="all.jsp" style="text-decoration:none" target="main">GET STUDENT INFO</A>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="institute.html" style="text-decoration:none" target="main">ADD INSTITUTE</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<A HREF="details.jsp" style="text-decoration:none" target="main">DETAILS</A>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="feed.jsp" style="text-decoration:none" target="main">FEEDBACK VIEW</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="logout1.jsp">LOGOUT</a>
<center>STUDENT FEEDBACK</center>
<table border="1" width="30%" height="30%" align="center">
<tr><th><font color="red">mobileno</font></th>
<th><font color="red">stu_id</th>
<th><font color="red">sname</font></th>
<th><font color="red">feedback</font></th>

</tr>
<% 
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger");
 Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from feedback");
while(rs.next())
{
	String mobileno=rs.getString("mobileno");
	String stu_id=rs.getString("stu_id");
	String sname=rs.getString("sname");
	String feedback=rs.getString("feedback");
	%>
	<tr>
	<td><b><font color="#663300"><%=mobileno%></font></b></td>
	<td><b><font color="#663300"><%=stu_id%></font></b></td>
	<td><b><font color="#663300"><%=sname%></font></b></td>
	<td><b><font color="#663300"><%=feedback%></font></b></td>
		
	</tr>
	<%
}
%>
</table>
</body>
</html>
	
	