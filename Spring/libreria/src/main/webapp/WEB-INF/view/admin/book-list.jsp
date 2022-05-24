<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table class="table table-hover alert-warning">
	<thead>
		<tr>
			<th scope="col">ID</th>
			<th scope="col">Nome libro</th>
			<th scope="col">Autore</th>
			<th scope="col">Anno di pubblicazione</th>
			<th scope="col">Prezzo1</th>
			<th scope="col">Prezzo2</th>
			<th scope="col">Azioni</th>
		</tr>
	</thead>

	<tbody>
		<c:forEach items="${books}" var="book">
			<tr>
				<th scope="row">${book.id}</th>
				<td>${book.title}</td>
				<td>${book.author}</td>
				<td>${book.publicYear}</td>
				<td>${book.priceFlexibleCover}</td>
				<td>${book.priceHardCover}</td>
				<td><a
					href='<spring:url value="/admin-panel/book-edit?id=${book.id}"/>'><button
							class="btn-sm btn-group btn-danger" type="submit">Modifica</button></a>&nbsp;&nbsp;&nbsp;
					<a
					href='<spring:url value="/admin-panel/book-edit?id=${book.id}"/>'><button
							class="btn-sm btn-group btn-danger" type="submit">Elimina</button></a>
			</tr>
		</c:forEach>
	</tbody>
</table>
