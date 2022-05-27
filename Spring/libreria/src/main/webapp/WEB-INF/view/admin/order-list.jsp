<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table class="table table-sm table-bordered">
	<thead>
		<tr>
			<th scope="col">ID</th>
			<th scope="col">Nome libro</th>
			<th scope="col">Utente</th>
			<th scope="col">Prezzo</th>
			<th scope="col">Stato ordine</th>
			<th scope="col">Azioni</th>
		</tr>
	</thead>

	<tbody>
		<c:forEach items="${orders}" var="order">
			<tr>
				<th scope="row">${order.id}</th>
				<td>${order.book.title}</td>
				<td>${order.anagraphic.name} ${order.anagraphic.surname}</td>
				<td>${order.book.priceFlexibleCover}</td>
				<td>${order.status}</td>
				<td>
					<a href='<spring:url value="/admin-panel/order-remove?id=${order.id}"/>'><button
							class="btn-sm btn-group btn-danger" type="submit">Annulla ordine</button></a>
			</tr>
		</c:forEach>
	</tbody>
</table>
