<%@ page import="java.sql.*" %>
<html>
<body bgcolor="pink">
<center>YOUR DETAILS</center>
<table border="1" width="30%" height="30%" align="center">
<tr><th><font color="red">stu_id</font></th>
<th><font color="red">student_name</th>
<th><font color="red">surname</th>
<th><font color="red">gender</th>
<th><font color="red">dob</th>
<th><font color="red">email</th>
<th><font color="red">password</th> 
<th><font color="red">address</th>
<th><font color="red">institute</font></th>
</tr>
<% 
String sid= request.getParameter("sid");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger");
 Statement st=con.createStatement();
ResultSet rs=null;
PreparedStatement ps= con.prepareStatement("select * from  student where stu_id= ?");
ps.setString(1,sid);
           
           
              rs = ps.executeQuery();  
while(rs.next())
{
	String stu_id=rs.getString("stu_id");
	String student_name=rs.getString("student_name");
	String surname=rs.getString("surname");
	String gender=rs.getString("gender");
	String dob=rs.getString("dob");
	String email=rs.getString("email");
	String password=rs.getString("password");
	String address=rs.getString("address");
	String institute=rs.getString("institute");
	%>
	<tr>
	<td><b><font color="#663300"><%=stu_id%></font></b></td>
	<td><b><font color="#663300"><%=student_name%></font></b></td>
	<td><b><font color="#663300"><%=surname%></font></b></td>
	<td><b><font color="#663300"><%=gender%></font></b></td>
	<td><b><font color="#663300"><%=dob%></font></b></td>
	<td><b><font color="#663300"><%=email%></font></b></td>
	<td><b><font color="#663300"><%=password%></font></b></td>
	<td><b><font color="#663300"><%=address%></font></b></td>
	<td><b><font color="#663300"><%=institute%></font></b></td>
	
	</tr>
	<%
}
%>
</table>
</body>
</html>
	
	