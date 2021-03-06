<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<c:if test="${isAboutUs}">
	<meta charset="utf-8">
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>About us</title>
	<link
		href='<c:url value="https://fonts.googleapis.com/css?family=Roboto:400,700|Open+Sans"/>'
		rel="stylesheet">
	<link
		href='<c:url value="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>'
		rel="stylesheet">
	<link
		href='<c:url value="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>'
		rel="stylesheet">
	<script
		src='<c:url value="https://code.jquery.com/jquery-3.5.1.min.js"/>'></script>
	<script
		src='<c:url value="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"/>'></script>
	<script
		src='<c:url value="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"/>'></script>

	<!-- CSS -->
	<link href='<c:url value="/static/css/about-us.css"/>' rel="stylesheet"
		type="text/css">
		
		
</c:if>


<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid alert-danger">
		<a class="navbar-brand" href="#"> <img class="navbar-toggler-icon"
			src='<c:url value="/static/images/header/home_icona.png"/>'
			alt="home" />
		</a>

		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<!-- VOCI CLICCABILI SU HEADER -->

		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href='<c:url value="/home"/>'>Home</a></li>
				<li class="nav-item"><a class="nav-link"
					href='<spring:url value="/category-list"/>'>Catalogo</a></li>

				<!-- MENU A TENDINA VISTA ADMIN -->

				<c:if test="${isAdmin}">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownMenuLink" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> Admin Panel </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
							<li><a class="dropdown-item"
								href='<spring:url value="/admin-panel/user-list"/>'>Lista
									utenti</a></li>
							<li><a class="dropdown-item"
								href='<spring:url value="/admin-panel/book-edit"/>'>Aggiungi
									libro</a></li>
							<li><a class="dropdown-item"
								href='<spring:url value="/admin-panel/book-list"/>'>Lista
									libri</a></li>
							<li><a class="dropdown-item"
								href='<spring:url value="/account/order-history?admin"/>'>Lista
									ordini</a></li>
						</ul></li>
				</c:if>
			</ul>
		</div>

		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<!-- BARRA DI RICERCA E BOTTONE -->
			<form class="d-flex" action="index" method="GET">
			 <input class="form-control me-2" type="search"
					placeholder="Cosa vuoi cercare?" aria-label="Search" name="text">
						<select aria-describedby="searchDropdownDescription"
					class="nav-search-dropdown searchSelect nav-progressive-attrubute nav-progressive-search-dropdown"
					data-nav-selected="0" id="searchDropdownBox" name="type"
					style="display: block; top: 2.5px;" tabindex="0" title="Ricerca in">
					<option selected="selected" value="title">Titolo</option>
					<option value="author">Autore</option>
				</select>&nbsp;
				<button class="btn btn-outline-dark" type="submit">Cerca</button>
			</form>
		</div>
		<!-- ICONE PROFILO E CARRELLO -->
		<ul class="navbar-nav me-auto mb-2 mb-lg-0">
			<li class="nav-item dropdown"><a class="nav-link" href="#"
				role="button" data-bs-toggle="dropdown" aria-expanded="false"> <img
					class="navbar-toggler-icon"
					src='<c:url value="/static/images/header/icona_profilo.png"/>'
					alt="icona profilo">
			</a> <c:if test="${login != null}">
					<c:choose>
						<c:when test="${!loginSuccess}">
							<div class="dropdown-menu">
								<form:form action="/libreria/account/login" method="POST"
									modelAttribute="login" acceptCharset="ISO-8859-1"
									class="px-4 py-3">

									<div class="form-group">
										<label for="usernameSp">Username</label>
										<form:input path="username" id="usernameSp" type="text"
											cssClass="form-control" required="required"
											placeholder="Nome utente" />
										<form:errors path="username" id="usernameSpError"
											cssClass="text-danger" />
									</div>
									<div class="form-group">
										<label for="passwordSp">Password</label>
										<form:input path="password" id="passwordSp" type="password"
											cssClass="form-control" required="required"
											placeholder="Password" />
										<form:errors path="password" id="passwordSpError"
											cssClass="text-danger" />
									</div>
									<div class="form-check">
										<input type="checkbox" class="form-check-input"
											id="dropdownCheck"> <label class="form-check-label"
											for="dropdownCheck"> Ricordami </label>
									</div>
									<button type="submit" class="btn btn-primary">Accedi</button>
								</form:form>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href='<c:url value="/register"/>'>Sei
									nuovo? Registrati</a> <a class="dropdown-item"
									href='<c:url value="/forgot-password"/>'>Dimenticato la
									password?</a>
							</div>
						</c:when>
						<c:otherwise>
							<ul class="dropdown-menu"
								aria-labelledby="navbarDropdownMenuLink">
								<li><a class="dropdown-item"
									href='<spring:url value="/account/profile"/>'>Il mio
										account</a></li>
								<li><a class="dropdown-item"
									href='<spring:url value="/account/order-history"/>'>Lista
										ordini</a></li>
								<li><a class="dropdown-item"
									href='<spring:url value="/account/logout"/>'>Esci</a></li>
							</ul>
						</c:otherwise>
					</c:choose>
				</c:if></li>



			<li class="nav-item dropdown"><a class="nav-link"
				href='<spring:url value="/account/checkout"/>' role="button"
				aria-expanded="false" data-toggle="modal"
					data-target="#cart"> <img class="navbar-toggler-icon"
					src='<c:url value="/static/images/header/icona_carrello.png"/>'
					alt="icona carrello">
					<c:if test="${sessionScope.cartNum != null}">
					(${sessionScope.cartNum})
					</c:if>
					
			</a></li>
		</ul>


	</div>
</nav>
<div class="row mb-3">
	<div class="card bg-dark text-white container-fluid">
		<img src='<c:url value="/static/images/header/banner.png"/>'
			alt="motto" />
		<div class="card-img-overlay">
			<h2 class="card-title"></h2>
		</div>
	</div>
</div>
<!-- Modal -->
<div class="modal fade" id="cart" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Cart</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<table class="show-cart table">

				</table>
				<div>
					Total price: $<span class="total-cart"></span>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary">Order now</button>
			</div>
		</div>
	</div>
</div>

