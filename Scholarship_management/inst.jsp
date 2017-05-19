        <%@ page import="java.sql.*" %>     
		<body background="middle.jpg"></body>
        <%
		String  id=request.getParameter("id");
        String  name=request.getParameter("name");
        String cno=request.getParameter("cno");
	String email=request.getParameter("email");

		String fax=request.getParameter("fax");
		
        PreparedStatement ps1;
        Connection con;
        ResultSet rs= null;
       Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger");          
          ps1= con.prepareStatement("insert into institute values (?,?,?,?,?)");
           ps1.setString(1,id);
	   ps1.setString(2,name);
           ps1.setString(3, cno);
		ps1.setString(4,email);
	   ps1.setString(5,fax);
    		int insertResult1 = ps1.executeUpdate();
	
             if (insertResult1 !=0)
            {
                 out.println(" <br><br><font text=\"red\"><center><h1>Successfully addes</h1></center></font>");
             	
               
            }
     		
           
        %>
		
       
              

