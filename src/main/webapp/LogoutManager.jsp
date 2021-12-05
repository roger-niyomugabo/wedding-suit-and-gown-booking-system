
<%@page import="javax.servlet.http.HttpSession"%>
<%

HttpSession session1=request.getSession();
session1.removeAttribute("manager_username");
session1.invalidate();
response.sendRedirect("index2.jsp");


%>