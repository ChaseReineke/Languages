<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Language: ${language.name}</title>
</head>
<body>
	<div class="container">
		<h2><c:out value="${language.name}"/></h2>
		<p><c:out value="${language.creator}"/></p>
		<p><c:out value="${language.version}"/></p>
		<a href="/languages">Back</a>
	</div>
</body>
</html>