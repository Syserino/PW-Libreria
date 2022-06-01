

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="row row-cols-1 row-cols-md-2 g-4">

	<c:forEach items="${books}" var="book">

		<div class="card mb-3" style="max-width: 540px;">
			<div class="row g-0">
				<div class="col-md-4">
					<img src=<c:url value="/static/images/articles/book${book.id}.png"/>
						class="img-fluid rounded-start" alt="...">
				</div>
				<div class="col-md-8">
					<div class="card-body">
						<h4 class="card-title">${book.title}</h4>
						<small class="text-muted">${book.author}</small>
						<p class="card-text">${book.shortDesch}</p>
						
						<p class="card-text">
							<small class="text-muted">Prezzo: da <fmt:formatNumber value="${book.priceFlexibleCover}"
											maxFractionDigits="2" minFractionDigits="2" type="currency"
											currencyCode="EUR" currencySymbol="€" />
							 a  <fmt:formatNumber value="${book.priceHardCover}"
											maxFractionDigits="2" minFractionDigits="2" type="currency"
											currencyCode="EUR" currencySymbol="€" /> </small><br><small
								class="text-muted">Versione e-book: ${book.eBook}</small>
						</p>
						<a
							href=<c:url value="/book-card?idProd=${book.id}"/>
							style="text-decoration: none"><button
								class="btn-sm btn-group btn-danger " type="submit">Visualizza libro</button></a>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
</div>
