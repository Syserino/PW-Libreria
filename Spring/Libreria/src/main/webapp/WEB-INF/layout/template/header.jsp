<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:if test="${isBookCard}">
	<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js">
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		
	<!-- CSS -->
	<link href='<c:url value="/static/css/book-card.css"/>' rel="stylesheet" type="text/css">
</c:if>

<c:if test="${isAboutUs}">
	<meta charset="utf-8">
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>About us</title>
	<link rel="stylesheet"
		href="https://fonts.googleapis.com/css?family=Roboto:400,700|Open+Sans">
	<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script
		src='<c:url value="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"/>'></script>

	<!-- CSS -->
	<link href='<c:url value="/static/css/about-us.css"/>' rel="stylesheet" type="text/css">
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
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href='<c:url value="/home"/>'>Home</a></li>
				<li class="nav-item"><a class="nav-link"
					href='<spring:url value="/articles"/>'>In offerta</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown"
					aria-expanded="false"> Catagolo </a>

					<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<li><a class="dropdown-item"
							href='<spring:url value="/search?idCategory=1"/>'>Avventura</a></li>
						<li><a class="dropdown-item"
							href='<spring:url value="/search?idCategory=2"/>'>Storico</a></li>
						<li><a class="dropdown-item"
							href='<spring:url value="/search?idCategory=3"/>'>Fantasy</a></li>
						<li><a class="dropdown-item"
							href='<spring:url value="/search?idCategory=4"/>'>Horror</a></li>
						<li><a class="dropdown-item"
							href='<spring:url value="/search?idCategory=5"/>'>Saggistica</a></li>
						<li><a class="dropdown-item"
							href='<spring:url value="/search?idCategory=6"/>'>Romantico</a></li>
					</ul></li>

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
						</ul></li>
				</c:if>

				<c:if test="${!sessionScope.loginSuccess}">
					<li class="nav-item"><a class="nav-link"
						href='<c:url value="/login"/>'>Accedi</a></li>
				</c:if>

				<c:if test="${sessionScope.loginSuccess}">
					<li class="nav-item"><a class="nav-link"
						href='<c:url value="/logout"/>'>Logout</a></li>
				</c:if>

			</ul>
		</div>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<form class="d-flex" action="books" method="GET">
				<input class="form-control me-2" type="search"
					placeholder="Cerca. . ." aria-label="Search" name="searchText">
				<button class="btn btn-outline-success" type="submit">Cerca</button>
			</form>
		</div>
		<div class="collapse navbar-collapse">
			<a href="#"><img class="navbar-toggler-icon"
				src='<c:url value="/static/images/icona_profilo.png"/>'
				alt="icona profilo"></a> &nbsp;&nbsp;&nbsp; <a href="#"><img
				class="navbar-toggler-icon"
				src='<c:url value="/static/images/youtube_icona.png"/>'
				alt="icona preferiti"></a>
		</div>
	</div>
	<div class="d-flex justify-content-right">
		<c:if test="${cartnum > 0}">
			<a href='<spring:url value="cart"/>' class="btn btn-primary"> Vai
				al carrello <span class="badge badge-light">(Elementi nel
					carrello: ${cartnum})</span>
			</a>
		</c:if>
	</div>
</nav>
<div class="card bg-dark text-white container-fluid">
	<img src='<c:url value="/static/images/header/banner.png"/>' alt="ehm" />
	<div class="card-img-overlay">
		<h2 class="card-title"></h2>
	</div>
</div>

