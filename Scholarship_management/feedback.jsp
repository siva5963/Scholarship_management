        <%@ page import="java.sql.*" %>     
		<body background="middle.jpg"></body>
        <%
		String  mob=request.getParameter("mob");
        String  stu_id=request.getParameter("stu_id");
        String stu_name=request.getParameter("stu_name");
		String feed=request.getParameter("feed");
		
        PreparedStatement ps1;
        Connection con;
        ResultSet rs= null;
       Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger");          
          ps1= con.prepareStatement("insert into feedback values (?,?,?,?)");
           ps1.setString(1,mob);
	   ps1.setString(2,stu_id);
           ps1.setString(3, stu_name);
	   ps1.setString(4,feed);
    		int insertResult1 = ps1.executeUpdate();
	
             if (insertResult1 !=0)
            {
                 out.println(" <br><br><font text=\"red\"><center><h1>Successfully submited feedback</h1></center></font>");
             	
               
            }
     		
           
        %>
		
       
              

