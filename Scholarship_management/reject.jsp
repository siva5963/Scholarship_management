<%@ page import="java.sql.*" %>
<body bgcolor="pink">
<center>REJECTED CANDEDATES</center>
<table border="1" width="30%" height="30%" align="center">
<tr><th><font color="red">stu_id</font></th>
<th><font color="red">sch_id</th>

</tr>
<% 
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger");
 Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from scholarship where percentage<75");
while(rs.next())
{
	String stu_id=rs.getString("stu_id");
	String sch_id=rs.getString("sch_id");
	
	%>
	<tr>
	<td><b><font color="#663300"><%=stu_id%></font></b></td>
	<td><b><font color="#663300"><%=sch_id%></font></b></td>
	
	</tr>
	<%
}
%>
</table>
</body>
</html>
	
	