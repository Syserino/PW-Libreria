<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<head>
<link href='<c:url value="/static/css/sexycard.css"/>' rel="stylesheet"
	type="text/css">
<link
	href='<spring:url value="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>'
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./style.css">

</head>




<div id="demo" class="carousel slide" data-ride="carousel">
	<div class="carousel-inner">
		<div class="carousel-item active">
			<div class="card">
				<div class="path">
					Home / Libri <a>/ ${book.category.name}</a>
				</div>
				<form action="/libreria/book-card/addArticle" method="GET">

					<div class="row">
						<div class="col-md-6 text-center align-self-center">
							<img class="img-fluid"
								src='<c:url value="/static/images/articles/harrypotter.jpg"/>'>
						</div>
						<div class="col-md-6 info">
							<div class="row title">
								<div class="col">
									<h2>${book.title}</h2>
								</div>
								<div class="col text-right">
									<a href="#"> <i class="fa fa-heart-o"></i>
									</a>
								</div>
							</div>
							<p>${book.author}&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
								ISBN-10: ${book.isbn}</p>
							<p>
								<b>Anno di pubblicazione:</b>${book.publicYear}</p>

							<p>${book.description}</p>
							<span class="fa fa-star checked"></span> <span
								class="fa fa-star checked"></span> <span
								class="fa fa-star checked"></span> <span
								class="fa fa-star checked"></span> <span
								class="fa fa-star-half-full"></span> <a>160 recensioni</a>

							<div class="row type">
								<label class="radio"> <input type="radio"
									name="bookType" value="fisica"> <span>
										<div class="row">
											<big><b>Copia fisica</b></big>
										</div>
										<div class="row">Da <fmt:formatNumber 
                                value="${book.priceFlexibleCover}" 
                                maxFractionDigits="2" 
                                minFractionDigits="2"
                                type="currency"
                                currencyCode="EUR"
                                currencySymbol="€"
                            /> a
											<fmt:formatNumber 
                                value="${book.priceHardCover}" 
                                maxFractionDigits="2" 
                                minFractionDigits="2"
                                type="currency"
                                currencyCode="EUR"
                                currencySymbol="€"
                            />
											
											</div>
										</span> 
								</label>
								
								<label class="radio"> <input type="radio"
										name="bookType" value="ebook"> <span>
											<div class="row">
												<big><b>Formato e-Book</b></big>
											</div>
											<div class="row"><fmt:formatNumber 
                                value="${book.eBook}" 
                                maxFractionDigits="2" 
                                minFractionDigits="2"
                                type="currency"
                                currencyCode="EUR"
                                currencySymbol="€"
                            /></div>
									</span>

								</label>
							</div>

							<div class="row price">
								<label class="radio"> <input name="cover" type="radio"
									name="size1" value="flex" checked> <span>
										<div class="row">
											<big><b>Copertina flessibile</b></big>
										</div>
										<div class="row"><fmt:formatNumber 
                                value="${book.priceFlexibleCover}" 
                                maxFractionDigits="2" 
                                minFractionDigits="2"
                                type="currency"
                                currencyCode="EUR"
                                currencySymbol="€"
                            /></div>
								</span>
								</label> <label class="radio"> <input name="cover" type="radio"
									value="hard"> <span>
										<div class="row">
											<big><b>Copertina rigida</b></big>
										</div>
										<div class="row"><fmt:formatNumber 
                                value="${book.priceHardCover}" 
                                maxFractionDigits="2" 
                                minFractionDigits="2"
                                type="currency"
                                currencyCode="EUR"
                                currencySymbol="€"
                            /></div>
								</span>
								</label>
							</div>
						</div>
					</div>
					
					
					<c:if test="${isLogged}">
						<div class="d-flex justify-content-center">

							<button id="btnSave" name="idProd" value="${book.id}"
								class="btn btn-primary">Aggiungi al carrello</button>
					</c:if>

				</form>
			
			<c:if test="${!isLogged}">
				<div class="alert alert-primary" role="alert">
					Effettua l'accesso per aggiungere l'articolo al carrello. Non hai
					un account? <a href='<c:url value="/register"/>' class="alert-link">Registrati!</a>
				</div>
			</c:if>
</div>
		</div>
	</div>
	</div>
<script src='<c:url value="/static/js/cart.js"/>'></script>

