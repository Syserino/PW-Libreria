<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!-- QUESTI SONO PER BOOTSTRAP E ELEMENTI CUORE E STELLE-->

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- COMPONENTE CSS -->

<style>
body {
	min-height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
	background-color: #f9b299;
	font-size: 0.8rem;
	font-family: 'Work Sans'
}

.card {
	max-width: 1000px;
	width: 100%;
	padding: 4rem;
	background-color: rgb(46, 45, 45);
	color: white;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19)
}

@media ( max-width :768px) {
	.card {
		width: 100%;
		padding: 1.5rem
	}
}

.row {
	margin: 0
}

.path {
	color: grey;
	margin-bottom: 1rem
}

.path a {
	color: #ffffff
}

.info {
	padding: 6vh 0vh
}

@media ( max-width :768px) {
	.info {
		padding: 0;
	}
}

.checked {
	color: rgb(255, 217, 0);
	margin-right: 1vh;
}

.fa-star-half-full {
	color: rgb(255, 217, 0)
}

img {
	height: fit-content;
	width: 75%;
	padding: 1rem
}

@media ( max-width :768px) {
	img {
		padding: 2.5rem 0;
	}
}

.title .col {
	padding: 0
}

.fa-heart-o {
	font-size: 2rem;
	color: #ffffffaf;
	font-weight: lighter
}

.fa-heart-o:hover {
	color: #f9b299;
}

.price {
	margin-top: 2rem
}

label.radio span {
	padding: 1vh 4vh;
	background-color: rgb(54, 54, 54);
	color: grey;
	display: inline-block;
	margin-right: 2vh
}

label.radio input:checked+span {
	border: 1px solid white;
	padding: 1vh 4vh;
	background-color: rgb(54, 54, 54);
	margin-right: 2vh;
	color: #ffffff;
	display: inline-block
}

.lower {
	margin-top: 3rem
}

.lower i {
	padding: 2.5vh;
	margin-right: 1vh;
	color: grey;
	border: 1px solid rgb(85, 85, 85)
}

.lower .col {
	padding: 0
}

@media ( max-width :768px) {
	.lower i {
		padding: 2vh;
		margin-right: 1vh;
		color: grey;
		border: 1px solid rgb(85, 85, 85)
	}
}

.btn {
	background-color: transparent;
	border-color: #f9b299;
	color: #f9b299;
	padding: 1.8vh 4.5vh;
	height: fit-content;
	border-radius: 3px
}

.btn:focus {
	box-shadow: none;
	outline: none;
	box-shadow: none;
	color: white;
	-webkit-box-shadow: none;
	-webkit-user-select: none;
	transition: none
}

.btn:hover {
	color: white
}

@media ( max-width :768px) {
	.btn {
		background-color: transparent;
		border-color: rgba(186, 216, 125, 0.863);
		color: rgba(186, 216, 125, 0.863);
		padding: 1vh;
		font-size: 0.9rem;
		height: fit-content;
		border-radius: 3px
	}
}

a {
	color: unset
}

a:hover {
	color: unset;
	text-decoration: none
}

label.radio input {
	position: absolute;
	top: 0;
	left: 0;
	visibility: hidden;
	pointer-events: none
}

label.radio {
	cursor: pointer
}
</style>
</head>
<body>


	<div class="container">
		<div id="demo" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<div class="card">
						<div class="path">
							HOME / LIBRI <a>/ *NOME CATEGORIA*</a>
						</div>
						<div class="row">
							<div class="col-md-6 text-center align-self-center">
								<img class="img-fluid"
									src="src/main/java/it/webapp/static/images/article/harrypotter.jpg">
							</div>
							<div class="col-md-6 info">
								<div class="row title">
									<div class="col">
										<h2>*TITLE*</h2>
										<h2>Harry Potter e il prigioniero di Azkaban</h2>
									</div>
									<div class="col text-right">
										<a href="#"> <i class="fa fa-heart-o"></i>
										</a>
									</div>
								</div>
								<p>*Author* J. K. Rowling</p>
								<p>*Description*</p>
								<p>Harry Potter sta frequentando il terzo anno a Hogwarts e
									questa volta deve difendersi da un pericoloso assassino, Sirius
									Black, scappato dalla sorvegliata prigione per maghi di Azkaban
									e legato alla famiglia del piccolo mago.</p>
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
											<div class="row">*price* 25,00€</div>
											</a>
									</span>
									</label> <label class="radio"> <input type="radio" name="size1"
										value="large"> <span>
											<div class="row">
												<big><b>Copertina rigida</b></big>
											</div>
											<div class="row">*price* 39,99€</div> </a>
									</span>
									</label>
								</div>
							</div>
						</div>
						<div class="row lower">
							<div class="col text-right align-self-center">
								<button class="btn">Aggiungi al carrello</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

</body>
</html>