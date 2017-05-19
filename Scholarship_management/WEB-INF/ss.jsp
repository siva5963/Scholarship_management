<%@ page import ="java.sql.*" %>
<%
    String email = request.getParameter("email");    
    String pwd = request.getParameter("pwd");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from student where email='" + email + "' and password='" + pwd + "'");
    while(rs.next()) {
        session.setAttribute("email", email);
        out.println("welcome " + email);
        out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } 
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    
%>