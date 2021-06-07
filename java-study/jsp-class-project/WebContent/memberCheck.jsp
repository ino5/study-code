<%
	String id = (String)session.getAttribute("id");
	if (id == null || id.equals("")) {
		request.getSession().setAttribute("redirectURI", request.getRequestURI());
		response.sendRedirect("loginForm.jsp");
	}
%>