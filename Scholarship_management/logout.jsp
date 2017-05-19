<%
session.setAttribute("email", null);
session.invalidate();
response.sendRedirect("slogin.html");
%>