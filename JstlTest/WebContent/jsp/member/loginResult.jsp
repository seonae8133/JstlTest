<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	h1{
	display : inline;
	border : 1px solid gray;
	background-color : black;
	}
	
	h1:hover{
	 background-color : black;
	}
</style>
</head>
<%
	request.setCharacterEncoding("utf-8");
%>
<body>
<div align="center">
	<div>
		<h1>${param.id}님 환영합니다.</h1>
	</div>
	<div>
		<h1>1번 메뉴</h1>
		<h1>2번 메뉴</h1>
		<h1>3번 메뉴</h1>
		<h1>4번 메뉴</h1>
		<c:choose>
			<c:when test="${param.id eq 'sadmin'}">
			<h1>5번 메뉴</h1>
			<h1>6번 메뉴</h1>
			<h1>7번 메뉴</h1>
			</c:when>
			<c:when test="${param.id eq 'admin'}">
			<h1>5번 메뉴</h1>
			<h1>6번 메뉴</h1>
			</c:when>
		</c:choose>
	</div>
	<div>
		<h1>취미 : 
			<c:forEach var="hobby" items="${paramValues.hobbys}">
				<c:out value="${hobby}"></c:out>
			</c:forEach>
		</h1>
	</div>
	<div>
		<button onclick="location.href='forTest.jsp'">for test</button>
	</div>
</div>
</body>
</html>