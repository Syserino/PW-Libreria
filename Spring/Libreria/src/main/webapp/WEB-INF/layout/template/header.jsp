<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid">
		<a class="navbar-brand" href="#"> <img
			src='<c:url value="/static/images/homeIcon.png"/>' alt="home" />
		</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="#">Home</a></li>
				<li class="nav-item"><a class="nav-link"
					href='<spring:url value="/articles"/>'>Lista libri</a></li>
				<c:if test="${!sessionScope.loginSuccess}">
					<li class="nav-item"><a class="nav-link"
						href='<c:url value="/login"/>'>Accedi</a></li>
				</c:if>
				<c:if test="${isAdmin}">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownMenuLink" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> Admin Panel
					</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
							<li><a class="dropdown-item" href='<spring:url value="/adminpanel"/>'>Lista articoli</a></li>
							<li><a class="dropdown-item" href='<spring:url value="/adminpanel-form"/>'>Aggiungi articolo</a></li>
						</ul></li>
				</c:if>

				<c:if test="${sessionScope.loginSuccess}">
					<li class="nav-item"><a class="nav-link"
						href='<c:url value="/logout"/>'>Logout</a></li>
				</c:if>


			</ul>
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
