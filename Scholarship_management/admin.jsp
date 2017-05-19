<%@ page import ="java.sql.*" %>
<body background="middle.jpg"></body>
<%
    String email = request.getParameter("email");    
    String pwd = request.getParameter("pwd");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from admin where email='" + email + "' and password='" + pwd + "'");
    while(rs.next()) {
        session.setAttribute("email", email);
        out.println("welcome " + email);
        out.println("<a href='logout1.jsp'>Log out</a>");
        response.sendRedirect("admin1.jsp");
    } 
        out.println("Invalid password <a href='alogin.html'>try again</a>");
    
%>