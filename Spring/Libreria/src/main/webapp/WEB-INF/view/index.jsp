<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>




<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Homepage</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" />

    <style>

        .card {
            font-family: Courier New;
        }

        a {
            text-decoration: none;
            color: black;
        }

        h5 {
            font-family: Trebuchet MS;
        }

        h6 {
            font-family: Verdana;
        }
        #sinistra {
            padding-bottom: 10px;
            text-align: left;
            background-color: #f9b299;
        }

        #centro {
            padding-bottom: 10px;
            text-align: left;
            background-color: #f6cd47;
        }

        #centro1 {
            padding-bottom: 10px;
            text-align: left;
            background-color: #f6cd47;
        }

        #destra {
            padding-bottom: 10px;
            text-align: right;
            background-color: #4f7978;
        }

        #sinistraTitolo {
            font-family: "Comic Sans MS";
            padding-bottom: 10px;
            text-align: left;
            background-color: #f9b299;
        }

        #centroTitolo {
            font-family: "Comic Sans MS";
            padding-bottom: 10px;
            text-align: center;
            background-color: #f6cd47;
        }

        #destraTitolo {
            font-family: "Comic Sans MS";
            padding-bottom: 10px;
            text-align: right;
            background-color: #4f7978;
        }

        #destraAlt {
            font-family: "Comic Sans MS";
            padding-bottom: 10px;
            text-align: left;
            background-color: #4f7978;
            display:none
        }

        #sinistraAlt {
            font-family: "Comic Sans MS";
            padding-bottom: 10px;
            text-align: right;
            background-color: #f9b299;
            display: none;
        }

        .sin:hover{
            background-color: #EA73E0;
            color:#ED15CC;
        }

        .cen:hover{
            background-color: #ECE42C;
            color:#F87E0B;
        }

        .des:hover{
            background-color: #1BDAB2;
            color:#2243AC;
        }

        @media only screen and (max-width: 991px) {  /*quando è medio */
            #destra{
                display: none;
            }
            #destraTitolo{
                display: none;
            }
            #destraAlt{
                display: block;
            }
        }

        @media only screen and (max-width: 767px) {  /*quando è piccolo */
            #sinistra{
                display: none;
            }
            #sinistraTitolo {
                display: none;
            }
            #sinistraAlt{
                display: block;
            }
            #destra{
                display: none;
            }
            #destraTitolo{
                display: none;
            }
            #destraAlt{
                display: block;
            }
        }
    </style>
</head>
<body>
	<div class="row">
		<div class="col-lg-3 col-md-4" id="sinistraTitolo">
			<h3>Ultime uscite</h3>
		</div>
		<div class="col-lg-6 col-md-8 col-sm-12" id="centroTitolo">
			<h3>Catalogo</h3>
		</div>
		<div class="col-3" id="destraTitolo">
			<h3>Più venduti</h3>
		</div>
	</div>

	<div class="row">
		<div class="col-lg-3 col-md-4" id="sinistra">

			<c:forEach items="${books}" var="book">
			<div class="card">
                		<a href=<c:url value="/book-card?idProd=${book.id}"/>>
                			<div class="card-body sin">
                    				<h5 class="card-title">${book.title}</h5>
                    				<h6>Generi</h6>
                    				<p class="card-text">Breve descrizione del libro</p>
                			</div>
                		</a>
       		 	</div></c:forEach>

			<c:forEach items="${books}" var="book">
			<div class="card">
                		<a href=<c:url value="/book-card?idProd=${book.id}"/>>
                			<div class="card-body sin">
                    				<h5 class="card-title">${book.title}</h5>
                    				<h6>Generi</h6>
                    				<p class="card-text">Breve descrizione del libro</p>
                			</div>
                		</a>
       		 	</div></c:forEach>

			<c:forEach items="${books}" var="book">
			<div class="card">
                		<a href=<c:url value="/book-card?idProd=${book.id}"/>>
                			<div class="card-body sin">
                    				<h5 class="card-title">${book.title}</h5>
                    				<h6>Generi</h6>
                    				<p class="card-text">Breve descrizione del libro</p>
                			</div>
                		</a>
       		 	</div></c:forEach>

		</div>

		<div class="col-lg-6 col-md-7 col-sm-8" id="centro">
			<div class="row row-cols-1 row-cols-md-2 g-4">
			<c:forEach items="${books}" var="book">
				<div class="card">
                			<a href=<c:url value="/book-card?idProd=${book.id}"/>>
                    			<div class="card-body cen">
                        			<div class="row">
                            				<div class="col-6">
                                				<img class="card-img-bottom" src=<c:url value="/static/images/articles/harrypotter.jpg"/> alt="Questo messaggio appare perché non ci sta ancora un immagine">
                            				</div>
                            				<div class="col-6">
                                				<h5 class="card-title">Titolo del libro</h5>
                                				<h6>Generi</h6>
                                				<p class="card-text">Breve descrizione del libro</p>
                                				<p class="card-text">Anno di uscita</p>
                                				<p class="card-text">Prezzo</p>
                                				<p class="card-text">Disponibilità</p>
                                				<p class="card-text">Voto</p>
                            				</div>
                       				</div>
                   			</div>
                 			</a>
				</div>
			</c:forEach>

			<c:forEach items="${books}" var="book">
				<div class="card">
                			<a href=<c:url value="/book-card?idProd=${book.id}"/>>
                    			<div class="card-body cen">
                        			<div class="row">
                            				<div class="col-6">
                                				<img class="card-img-bottom" src=<c:url value="/static/images/articles/harrypotter.jpg"/> alt="Questo messaggio appare perché non ci sta ancora un immagine">
                            				</div>
                            				<div class="col-6">
                                				<h5 class="card-title">Titolo del libro</h5>
                                				<h6>Generi</h6>
                                				<p class="card-text">Breve descrizione del libro</p>
                                				<p class="card-text">Anno di uscita</p>
                                				<p class="card-text">Prezzo</p>
                                				<p class="card-text">Disponibilità</p>
                                				<p class="card-text">Voto</p>
                            				</div>
                       				</div>
                   			</div>
                 			</a>
				</div>
			</c:forEach>

			<c:forEach items="${books}" var="book">
				<div class="card">
                			<a href=<c:url value="/book-card?idProd=${book.id}"/>>
                    			<div class="card-body cen">
                        			<div class="row">
                            				<div class="col-6">
                                				<img class="card-img-bottom" src=<c:url value="/static/images/articles/harrypotter.jpg"/> alt="Questo messaggio appare perché non ci sta ancora un immagine">
                            				</div>
                            				<div class="col-6">
                                				<h5 class="card-title">Titolo del libro</h5>
                                				<h6>Generi</h6>
                                				<p class="card-text">Breve descrizione del libro</p>
                                				<p class="card-text">Anno di uscita</p>
                                				<p class="card-text">Prezzo</p>
                                				<p class="card-text">Disponibilità</p>
                                				<p class="card-text">Voto</p>
                            				</div>
                       				</div>
                   			</div>
                 			</a>
				</div>
			</c:forEach>

			<c:forEach items="${books}" var="book">
				<div class="card">
                			<a href=<c:url value="/book-card?idProd=${book.id}"/>>
                    			<div class="card-body cen">
                        			<div class="row">
                            				<div class="col-6">
                                				<img class="card-img-bottom" src=<c:url value="/static/images/articles/harrypotter.jpg"/> alt="Questo messaggio appare perché non ci sta ancora un immagine">
                            				</div>
                            				<div class="col-6">
                                				<h5 class="card-title">Titolo del libro</h5>
                                				<h6>Generi</h6>
                                				<p class="card-text">Breve descrizione del libro</p>
                                				<p class="card-text">Anno di uscita</p>
                                				<p class="card-text">Prezzo</p>
                                				<p class="card-text">Disponibilità</p>
                                				<p class="card-text">Voto</p>
                            				</div>
                       				</div>
                   			</div>
                 			</a>
				</div>
			</c:forEach>

			<c:forEach items="${books}" var="book">
				<div class="card">
                			<a href=<c:url value="/book-card?idProd=${book.id}"/>>
                    			<div class="card-body cen">
                        			<div class="row">
                            				<div class="col-6">
                                				<img class="card-img-bottom" src=<c:url value="/static/images/articles/harrypotter.jpg"/> alt="Questo messaggio appare perché non ci sta ancora un immagine">
                            				</div>
                            				<div class="col-6">
                                				<h5 class="card-title">${book.title}</h5>
                                				<h6>Generi</h6>
                                				<p class="card-text">Breve descrizione del libro</p>
                                				<p class="card-text">${book.publicYear}</p>
                                				<p class="card-text">${book.priceFlexibleCover}</p>
                                				<p class="card-text">${book.priceHardCover}</p>
                                				<p class="card-text">Voto</p>
                            				</div>
                       				</div>
                   			</div>
                 			</a>
				</div>
			</c:forEach>

			</div>
		</div>

		<div class="col-lg-3 col-md-4" id="destra">

			<c:forEach items="${books}" var="book">
			<div class="card">
                		<a href=<c:url value="/book-card?idProd=${book.id}"/>>
                			<div class="card-body des">
                    				<h5 class="card-title">${book.title}</h5>
                    				<h6>Generi</h6>
                    				<p class="card-text">Breve descrizione del libro</p>
                			</div>
                		</a>
       		 	</div></c:forEach>

			<c:forEach items="${books}" var="book">
			<div class="card">
                		<a href=<c:url value="/book-card?idProd=${book.id}"/>>
                			<div class="card-body des">
                    				<h5 class="card-title">${book.title}</h5>
                    				<h6>Generi</h6>
                    				<p class="card-text">Breve descrizione del libro</p>
                			</div>
                		</a>
       		 	</div></c:forEach>

			<c:forEach items="${books}" var="book">
			<div class="card">
                		<a href=<c:url value="/book-card?idProd=${book.id}"/>>
                			<div class="card-body des">
                    				<h5 class="card-title">${book.title}</h5>
                    				<h6>Generi</h6>
                    				<p class="card-text">Breve descrizione del libro</p>
                			</div>
                		</a>
       		 	</div></c:forEach>

		</div>
	</div>

	<div class="row">

		<div class="col-md-12 col-sm-6" id="destraAlt">

			<h3>Più venduti</h3>
						<c:forEach items="${books}" var="book">
			<div class="card">
                		<a href=<c:url value="/book-card?idProd=${book.id}"/>>
                			<div class="card-body des">
                    				<h5 class="card-title">${book.title}</h5>
                    				<h6>Generi</h6>
                    				<p class="card-text">Breve descrizione del libro</p>
                			</div>
                		</a>
       		 	</div></c:forEach>

			<c:forEach items="${books}" var="book">
			<div class="card">
                		<a href=<c:url value="/book-card?idProd=${book.id}"/>>
                			<div class="card-body des">
                    				<h5 class="card-title">${book.title}</h5>
                    				<h6>Generi</h6>
                    				<p class="card-text">Breve descrizione del libro</p>
                			</div>
                		</a>
       		 	</div></c:forEach>

			<c:forEach items="${books}" var="book">
			<div class="card">
                		<a href=<c:url value="/book-card?idProd=${book.id}"/>>
                			<div class="card-body des">
                    				<h5 class="card-title">${book.title}</h5>
                    				<h6>Generi</h6>
                    				<p class="card-text">Breve descrizione del libro</p>
                			</div>
                		</a>
       		 	</div></c:forEach>

		</div>

		<div class="col-sm-6" id="sinistraAlt">

			<h3>Ultime Uscite</h3>

			<c:forEach items="${books}" var="book">
			<div class="card">
                		<a href=<c:url value="/book-card?idProd=${book.id}"/>>
                			<div class="card-body sin">
                    				<h5 class="card-title">${book.title}</h5>
                    				<h6>Generi</h6>
                    				<p class="card-text">Breve descrizione del libro</p>
                			</div>
                		</a>
       		 	</div></c:forEach>

			<c:forEach items="${books}" var="book">
			<div class="card">
                		<a href=<c:url value="/book-card?idProd=${book.id}"/>>
                			<div class="card-body sin">
                    				<h5 class="card-title">${book.title}</h5>
                    				<h6>Generi</h6>
                    				<p class="card-text">Breve descrizione del libro</p>
                			</div>
                		</a>
       		 	</div></c:forEach>

			<c:forEach items="${books}" var="book">
			<div class="card">
                		<a href=<c:url value="/book-card?idProd=${book.id}"/>>
                			<div class="card-body sin">
                    				<h5 class="card-title">${book.title}</h5>
                    				<h6>Generi</h6>
                    				<p class="card-text">Breve descrizione del libro</p>
                			</div>
                		</a>
       		 	</div></c:forEach>

		</div>
	</div>

</body>
</html>