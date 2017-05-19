        <%@ page import="java.sql.*" %>     
      <body background="middle.jpg">
	  <A HREF="profile.html" style="text-decoration:none" target="main">PROFILE</A>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="scholarship.html" style="text-decoration:none" target="main">UPLOAD DOCUMENTS</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<A HREF="feedback.html" style="text-decoration:none" target="main">FEEDBACK</A>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="logout1.jsp">LOGOUT</a>
	<center> <h1>YOUR PROFILE </h1><br>	
	
	<h4> student_id  &nbsp;&nbsp;&nbsp; student_name &nbsp;&nbsp;&nbsp; surename &nbsp;&nbsp;&nbsp; gender &nbsp;&nbsp;&nbsp;  dob &nbsp;&nbsp;&nbsp; email &nbsp;&nbsp;&nbsp;  password &nbsp;&nbsp;&nbsp;  conform_passwod &nbsp;&nbsp;&nbsp;address &nbsp;&nbsp;&nbsp; institute_name</h4>
	
        <%
	String sid;
		 PreparedStatement ps1;
      		 Connection con;
        		ResultSet rs1= null;
		
        sid= request.getParameter("sid");
       
       Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger");          
          ps1= con.prepareStatement("select * from  student where stu_id= ?");
         
	
            ps1.setString(1,sid);
           
           
              rs1 = ps1.executeQuery();   
	
	while( rs1.next() )
	{
           		out.println("<h4>" +  rs1.getString(1) +"&nbsp;&nbsp;&nbsp;"+ rs1.getString(2)+"&nbsp;&nbsp;&nbsp;"+ rs1.getString(3)+"&nbsp;&nbsp;&nbsp;"+ rs1.getString(4)+"&nbsp;&nbsp;&nbsp;"+ rs1.getString(5)+"&nbsp;&nbsp;&nbsp;"+ rs1.getString(6)+"&nbsp;&nbsp;&nbsp;"+ rs1.getString(7)+"&nbsp;&nbsp;&nbsp;"+ rs1.getString(8)+"&nbsp;&nbsp;&nbsp;"+ rs1.getString(9)+"&nbsp;&nbsp;&nbsp;"+ rs1.getString(10)+"</h4><hr>");
	}

	
	
        %>
         
</center>
</body>

              

