<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<table class="table table-hover alert-warning">
	<thead>
		<tr>
			<th scope="col">ID</th>
			<th scope="col">Email</th>
			<th scope="col">Privilegi</th>
			<th scope="col">Status</th>
			<th scope="col">Azioni</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${users}" var="user">
			<tr>
				<th scope="row">${user.username}</th>
				<td>${user.anagraphic.mail}</td>
				<td>${user.privileges}</td>
				<td>Online/Offline</td>
				<td><a
					href='<spring:url value="/admin-panel/user-edit?id=${user.id}"/>'>
						<button type="button" class="btn-sm btn btn-success">
							<i class="fas fa-edit">Modifica</i>
						</button>
				</a> <a
					href='<spring:url value="/admin-panel/user-remove?id=${user.id}"/>'>
						<button type="button" class="btn-sm btn btn-danger">
							<i class="far fa-trash-alt">Rimuovi</i>
						</button>
				</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>