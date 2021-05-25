<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>test-db.jsp</h1>
<table>
	<tr>
		<th>col1</th>
		<th>col2</th>
	</tr>
	<c:forEach var="testRecord" items="${testList}">
		<tr>
			<td>${testRecord.col1}</td>
			<td>${testRecord.col2}</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>