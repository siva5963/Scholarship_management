<%@ page import="java.sql.*" %>
<html>
<body bgcolor="pink">

<center align="right">

<A HREF="all.jsp" style="text-decoration:none" target="main">GET STUDENT INFO</A>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="institute.html" style="text-decoration:none" target="main">ADD INSTITUTE</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<A HREF="details.jsp" style="text-decoration:none" target="main">DETAILS</A>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="feed.jsp" style="text-decoration:none" target="main">FEEDBACK VIEW</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="logout1.jsp">LOGOUT</a>
<center>STUDENT DETAILS</center>
<table border="1" width="30%" height="30%" align="center">
<tr><th><font color="red">stu_id</font></th>
<th><font color="red">student_name</th>
<th><font color="red">institute</font></th>
</tr>
<% 
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger");
 Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from student");
while(rs.next())
{
	String stu_id=rs.getString("stu_id");
	String student_name=rs.getString("student_name");
	String institute=rs.getString("institute");
	%>
	<tr>
	<td><b><font color="#663300"><%=stu_id%></font></b></td>
	<td><b><font color="#663300"><%=student_name%></font></b></td>
	<td><b><font color="#663300"><%=institute%></font></b></td>
	
	</tr>
	<%
}
%>
</table>
</body>
</html>
	
	