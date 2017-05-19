        <%@ page import="java.sql.*" %>     
		<body background="middle.jpg"></body>
        <%
	
		String  sid=request.getParameter("sid");
        String  name=request.getParameter("name");
        String name1=request.getParameter("name1");
		String r1=request.getParameter("r1");
		String dob = request.getParameter("dob");
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
        String pwd1=request.getParameter("pwd1");
        String add=request.getParameter("add");
        String institute=request.getParameter("institute");

        PreparedStatement ps1;
        Connection con;
        ResultSet rs= null;
       Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger");          
          ps1= con.prepareStatement("insert into student values (?,?,?,?,?,?,?,?,?,?)");
           ps1.setString(1,sid);
 	   ps1.setString(2,name);
           ps1.setString(3, name1);
	   ps1.setString(4,r1);
           ps1.setString(5,dob);
           ps1.setString(6,email);
           ps1.setString(7,pwd);
	   ps1.setString(8,pwd1);
	   ps1.setString(9,add);
	   ps1.setString(10,institute);
            
	           
               int insertResult1 = ps1.executeUpdate();
	
             if (insertResult1 !=0)
            {
                 out.println(" <br><br><font text=\"red\"><center><h1>Successfully registered</h1></center></font>");
             	
               
            }
     		response.sendRedirect("auto.jsp");
           
        %>
		
        <br><br><br>
               <center><a href="main.html">HOME</a></center>
              

