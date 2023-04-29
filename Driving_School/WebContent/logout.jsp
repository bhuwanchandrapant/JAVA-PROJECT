<%
	session.removeAttribute("u");
	session.invalidate();
	response.sendRedirect("login.jsp");
%>