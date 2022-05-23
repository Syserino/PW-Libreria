<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<div class="row row-cols-1 row-cols-md-2 g-4">
	<c:forEach items="${books}" var="book">
		<div class="card" style="width: 18rem;">
			<img src="..." class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">${book.title}</h5>
				<p class="card-text">${book.description}</p>
				<a href=<c:url value="/book-card?idProd=${book.id}"/> class="btn btn-primary">Acquista</a>
			</div>
		</div>
	</c:forEach>
</div>

