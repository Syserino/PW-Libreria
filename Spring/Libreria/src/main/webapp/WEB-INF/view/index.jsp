<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>




<!DOCTYPE html>
<html lang="en">
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
                                <p class="card-text">Prezzo</p>
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
                                <p class="card-text">Prezzo</p>
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
                                <p class="card-text">Prezzo</p>
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
                                <p class="card-text">Prezzo</p>
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
            </div>
            </c:forEach>
    </div>
</div>

</body>
</html>