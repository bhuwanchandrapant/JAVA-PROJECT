<%
	session.removeAttribute("admin");
	session.invalidate();
	response.sendRedirect("Admin_Index.jsp");
%>