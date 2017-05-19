<%
session.setAttribute("email", null);
session.invalidate();
response.sendRedirect("alogin.html");
%>