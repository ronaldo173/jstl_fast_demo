<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="language"
	value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}"
	scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="ua.mycompany.ronaldo173.i18n.resources.mylabels" />
<html lang="${language}">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form>
		<select id="language" name="language" onchange="submit()">
			<option value="en" ${language == 'en' ? 'selected' : ''}>English</option>
			<option value="ru" ${language == 'ru' ? 'selected' : ''}>Russian</option>
			<option value="es" ${language == 'es' ? 'selected' : ''}>Español</option>
		</select>
	</form>

	<br>
	<br>
	<h3>Language: ${language}</h3>
	<br>
	<br>

	<form method="post">
            <label for="username"><fmt:message key="login.label.username" />:</label>
            <input type="text" id="username" name="username">
            <br>
            <label for="password"><fmt:message key="login.label.password" />:</label>
            <input type="password" id="password" name="password">
            <br>
            <fmt:message key="login.button.submit" var="buttonValue" />
            <input type="submit" name="submit" value="${buttonValue}">
        </form>

	<br>
	<br>
	<fmt:message key="label.greeting" />
	<fmt:message key="label.firstname">John</fmt:message>
	<fmt:message key="label.lastname">Doe</fmt:message>

</body>
</html>