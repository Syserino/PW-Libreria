<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<h3>${adminMode == null ? 'Lista dei tuoi ordini' : 'Lista degli ordini di tutti gli utenti'}</h3>
<table class="table table-sm table-bordered">
	<thead>
		<tr>
			<c:if test="${adminMode}">
				<th scope="col">ID</th>
				<th scope="col">Utente</th>
			</c:if>
			<th scope="col">Data Ordine</th>
			<th scope="col">Data Consegna</th>
			<th scope="col">Totale Ordine</th>
			<th scope="col">Stato</th>
		</tr>
	</thead>


	<tbody>
		<c:forEach items="${orders}" var="order">
			<tr>
				<c:if test="${adminMode}">
					<th scope="row">${order.id}</th>
					<td>${order.user.username}</td>
				</c:if>
				<td><fmt:formatDate value="${order.startDate}"
						pattern="dd-MM-yyyy" /></td>
				<td><fmt:formatDate value="${order.enDate}"
						pattern="dd-MM-yyyy" /></td>
				<td><fmt:formatNumber value="${order.price}"
						maxFractionDigits="2" minFractionDigits="2" type="currency"
						currencyCode="EUR" currencySymbol="€" /></td>
				<td>${order.status}</td>
				<td><a
					href='<spring:url value="/account/order-list?id=${order.id}"/>' style="text-decoration: none"><button
							class="btn-sm btn-group btn-danger" type="submit">Visualizza
							ordine</button></a> <a
					href='<spring:url value="/admin-panel/order-remove?id=${order.id}"/>' style="text-decoration: none"><button
							class="btn-sm btn-group btn-danger" type="submit">Cancella</button></a>

				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>