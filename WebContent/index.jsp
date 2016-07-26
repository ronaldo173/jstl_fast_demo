<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index</title>
</head>
<body>
	<h3>Hello! JSTL!</h3>
	<c:set var="testVar" value="<%=new Date()%>" />

	<p>Time is: ${testVar }
	<p>
		<%
			String[] cities = { "New York", "Kharkov", "Berlin" };

			pageContext.setAttribute("myCities", cities);
		%>
		<%
			boolean flag = false;

			pageContext.setAttribute("flag", flag);
		%>
	
	<p>
		Cities:..
		<c:forEach var="city" items="${myCities }">
			<p>${city}length:${fn:length(city)} ${fn:toUpperCase(city) }</p>
		</c:forEach>
	</p>
	<p>
		<c:if test="${not flag}">
			Hello flag: ${flag }
		</c:if>
	</p>

	<c:choose>
		<c:when test="${flag}">1</c:when>
		<c:otherwise>2</c:otherwise>
	</c:choose>

	<br>
	<p>
	<form method="get" action="SimpleServlet">
		<table border="0">
			<tr>
				<td>Login</td>
				<td><input type="text" name="j_username"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="j_password"></td>
			</tr>
		</table>
		<input type="submit" value="Login!">
	</form>

</body>
</html>