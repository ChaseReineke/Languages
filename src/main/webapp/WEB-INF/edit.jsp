<%@ page isErrorPage="true" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Language: ${language.name}</title>
</head>
<body>
	<div class="container">
		<form:form action="/languages/${language.id}" method="post" modelAttribute="language">
		<input type="hidden" name="_method" value="put">
			<div class="form-group">
				<p>
					<form:errors path="name"></form:errors>
					<form:input type="text" path="name" placeholder="${language.name}"></form:input>
				</p>
				<p>
					<form:errors path="creator"></form:errors>
					<form:input type="text" path="creator" placeholder="${language.creator}"></form:input>
				</p>
				<p>
					<form:errors path="version"></form:errors>
					<form:input type="text" path="version" placeholder="${language.version}"></form:input>
				</p>
				<button type="submit" value="submit">Submit</button>
			</div>
		</form:form>
	</div>
</body>
</html>