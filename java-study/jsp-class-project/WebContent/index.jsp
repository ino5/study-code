<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String context = request.getContextPath();
	%>
	<h1>Hi</h1>
	<a href="<%=context%>/first-test.do"><%=context%>/first-test.do</a><br>
	<a href="<%=context%>/test-db.do"><%=context%>/test-db.do</a><br>
	<a href="<%=context%>/loginPro.do"><%=context%>/loginPro.do</a><br>
</body>
</html>