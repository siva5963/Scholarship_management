
<%@ page import ="java.sql.*" %>
<body background="middle.jpg"></body>
<%
    String email = request.getParameter("email");    
    String pwd = request.getParameter("pwd");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger");
    Statement st = con.createStatement();
    ResultSet rs1,rs2;
    rs1 = st.executeQuery("select * from student where email='" + email + "' and password='" + pwd + "'");
    while(rs1.next()) {
        session.setAttribute("email", email);
        out.println("welcome " + email);
        out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } 
	
		rs2 = st.executeQuery("select * from admin where email='" + email + "' and password='" + pwd + "'");
    while(rs2.next()) {
        session.setAttribute("email", email);
        out.println("welcome " + email);
        out.println("<a href='logout1.jsp'>Log out</a>");
        response.sendRedirect("admin1.jsp");
		
		}
	
	
        out.println("Invalid password <a href='main.html'>try again</a>");
    
%>