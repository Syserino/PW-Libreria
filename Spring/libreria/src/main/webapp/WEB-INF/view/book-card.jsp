<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<head>
<link href='<c:url value="/static/css/sexycard.css"/>' rel="stylesheet"
	type="text/css">
<link
	href='<spring:url value="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>'
	rel="stylesheet">

</head>

<div id="demo" class="carousel slide" data-ride="carousel">
	<div class="carousel-inner">
		<div class="carousel-item active">
			<div class="card">
				<div class="path">
					Home / Libri <a>/ ${book.category.name}</a>
				</div>
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
						<p>${book.pubblicYear}</p>	

						<p>${book.description}</p>
						<span class="fa fa-star checked"></span> <span
							class="fa fa-star checked"></span> <span
							class="fa fa-star checked"></span> <span
							class="fa fa-star checked"></span> <span
							class="fa fa-star-half-full"></span> <a>160 recensioni</a>
						<div class="row price">

							<label class="radio"> <input type="radio" name="size1"
								value="small" checked> <span>
									<div class="row">
										<big><b>Copertina flessibile</b></big>
									</div>
									<div class="row">${book.priceFlexibleCover}</div>
							</span>
							</label> <label class="radio"> <input type="radio" name="size1"
								value="large"> <span>
									<div class="row">
										<big><b>Copertina rigida</b></big>
									</div>
									<div class="row">${book.priceHardCover}</div>
							</span>
							</label> <label class="radio"> <input type="radio" name="size1"
								value="large"> <span>
									<div class="row">
										<big><b>Formato e-Book</b></big>
									</div>
									<div class="row">${book.eBook}</div>
							</span>
							</label>
						</div>
					</div>
				</div>
				<c:if test="${isLogged}">
					<div class="d-flex justify-content-center">
						<form action="/libreria/book-card/addArticle" method="GET">
							<button id="btnSave" name="idProd" value="${book.id}"
								class="btn btn-primary">Aggiungi al carrello</button>
						</form>
					</div>
				</c:if>
				<c:if test="${!isLogged}">
					<div class="alert alert-primary" role="alert">
						Effettua l'accesso per aggiungere l'articolo al carrello. Non hai
						un account? <a
							href='<c:url value="/admin-panel/book-edit?id=${book.id}"/>'
							class="alert-link">Registrati!</a>
					</div>
				</c:if>

			</div>
		</div>
	</div>
</div>

