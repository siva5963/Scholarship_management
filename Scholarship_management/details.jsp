<%@ page import="java.sql.*" %>
<html>
<body bgcolor="pink">

<center align="right">

<A HREF="all.jsp" style="text-decoration:none" target="main">GET STUDENT INFO</A>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="institute.html" style="text-decoration:none" target="main">ADD INSTITUTE</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<A HREF="details.jsp" style="text-decoration:none" target="main">DETAILS</A>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="feed.jsp" style="text-decoration:none" target="main">FEEDBACK VIEW</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="logout1.jsp">LOGOUT</a>
<center>STUDENT DOCUMENTS</center>
<table border="1" width="30%" height="30%" align="center">
<tr><th><font color="red">sch_id</font></th>
<th><font color="red">stu_id</th>
<th><font color="red">clgn</font></th>
<th><font color="red">doa</font></th>
<th><font color="red">percentage</font></th>
</tr>
<% 
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger");
 Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from scholarship");
while(rs.next())
{
	String sch_id=rs.getString("sch_id");
	String stu_id=rs.getString("stu_id");
	String clgn=rs.getString("clgn");
	String doa=rs.getString("doa");
	String percentage=rs.getString("percentage");
	%>
	<tr>
	<td><b><font color="#663300"><%=sch_id%></font></b></td>
	<td><b><font color="#663300"><%=stu_id%></font></b></td>
	<td><b><font color="#663300"><%=clgn%></font></b></td>
	<td><b><font color="#663300"><%=doa%></font></b></td>
	<td><b><font color="#663300"><%=percentage%></font></b></td>
	
	</tr>
	<%
}
%>
</table>
</body>
</html>
	
	