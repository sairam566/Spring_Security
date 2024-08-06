<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
	<div id="header">
		<c:choose>
			<c:when test="${not empty pageContext.request.userPrincipal.name}">
				Welcome ${pageContext.request.userPrincipal.name} &nbsp;| &nbsp; 
				<a href="${pageContext.request.contextPath}/dologout.htm">Logout</a>
			</c:when>
			<c:otherwise>
				<a href="${pageContext.request.contextPath}/login.htm">Login</a>
			</c:otherwise>
		</c:choose>
	</div>
	<h2>Home Page</h2>
</body>
</html>