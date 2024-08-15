<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	<h2>Login</h2>
	<c:if test="${not empty sessionScope['SPRING_SECURITY_LAST_EXCEPTION']}">
		<span style="color: red;">
			${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
		</span>
	</c:if>
	<form action="${pageContext.request.contextPath}/dologin.htm" method="post">
		UserName : <input type="text" name="j_username">  <br>
		Password : <input type="password" name="j_password"> <br>
		<input type="submit" value="Login">
	</form>
</body>
</html>