        <%@ page import="java.sql.*" %>     
		<body background="middle.jpg"></body>
		<A HREF="profile.html" style="text-decoration:none" target="main">PROFILE</A>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="scholarship.html" style="text-decoration:none" target="main">UPLOAD DOCUMENTS</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<A HREF="feedback.html" style="text-decoration:none" target="main">FEEDBACK</A>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="logout1.jsp">LOGOUT</a>
        <%
	String  sch_id=request.getParameter("sch_id");
        String  stu_id=request.getParameter("stu_id");
        String clg_name=request.getParameter("clg_name");
	String doa = request.getParameter("doa");
	String doc = request.getParameter("doc");
	
               PreparedStatement ps1;
        Connection con;
        ResultSet rs= null;
       Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger");          
          ps1= con.prepareStatement("insert into scholarship values (?,?,?,?,?)");
           ps1.setString(1,sch_id);
 	   ps1.setString(2,stu_id);
           ps1.setString(3, clg_name);
	   ps1.setString(4,doa);
           ps1.setString(5,doc);
           
            		
	           
               int insertResult1 = ps1.executeUpdate();
	
             if (insertResult1 !=0)
            {
                 out.println(" <br><br><font text=\"red\"><center><h1>Successfully upload your documents</h1></center></font>");
             
               
            }
     
           
        %>
		
        
              

