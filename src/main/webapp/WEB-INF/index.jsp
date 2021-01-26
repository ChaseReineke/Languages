<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Languages</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
</head>
<body>
<div class="container">
	<table class="table table-striped table-dark">
		<thead>
			<tr>
				<th>Name</th>
				<th>Creator</th>
				<th>Version</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${languages}" var="language">
				<tr>
					<td scope="col"><a href="/languages/${language.id}"><c:out value="${language.name}"/></a></td>
					<td scope="col"><c:out value="${language.creator}"/></td>
					<td scope="col"><c:out value="${language.version}"/></td>
					<td scope="col">
						<a href="/languages/${language.id}/delete">Delete</a> | <a href="/languages/${language.id}/edit">edit</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<div class="container">
	<form:form action="/languages" method="POST" modelAttribute="language">
	<div class="form-group">
		<p>
			<form:errors path="name"></form:errors>
			<form:input path="name" placeholder="Name"></form:input>
		</p>
		<p>
			<form:errors path="creator"></form:errors>
			<form:input path="creator" placeholder="Creator"></form:input>
		</p>
		<p>
			<form:errors path="version"></form:errors>
			<form:input path="version" placeholder="Version"></form:input>
		</p>
		<button type="submit">Submit</button>
	</div>
	</form:form>
</div>
</body>
</html>