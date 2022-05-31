<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:if test="${error}">
	<div>
		<div id="errorAlert" class="alert alert-danger alert-dismissible mt-4"
			role="alert">Non puoi cancellare questo libro al momento.</div>
	</div>
</c:if>

<table class="table table-hover alert-warning">
	<thead>
		<tr>
			<th scope="col">ID</th>
			<th scope="col">Titolo libro</th>
			<th scope="col">Autore</th>
			<th scope="col">Anno di pubblicazione</th>
			<th scope="col">Prezzo copertina flessibile</th>
			<th scope="col">Prezzo copertina rigida</th>
			<th scope="col">Prezzo e-book</th>
			<th scope="col">Codice e-book</th>
			<th scope="col">Quantita'</th>
			<th scope="col">ISBN</th>
			<th scope="col">Categoria</th>
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
				<td>${book.eBook}</td>
				<td>${book.codeEBook}</td>
				<td>${book.quantity}</td>
				<td>${book.isbn}</td>
				<td>${book.category.name}</td>
				<td><a
					href='<spring:url value="/admin-panel/book-edit?id=${book.id}"/>'
					style="text-decoration: none"><button
							class="btn-sm btn-group btn-danger " type="submit">Modifica</button></a>&nbsp;&nbsp;&nbsp;
					<a
					href='<spring:url value="/admin-panel/book-remove?id=${book.id}"/>'
					style="text-decoration: none"><button
							class="btn-sm btn-group btn-danger " type="submit">Elimina</button></a>
			</tr>
		</c:forEach>
	</tbody>
</table>
