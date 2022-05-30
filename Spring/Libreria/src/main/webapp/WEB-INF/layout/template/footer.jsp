<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<br>
<footer class="alert-danger text-center">
    <div class="container p-4">
        <section class="mb-4">
            <a class="btn btn-outline-light btn-floating m-1" href='<c:url value="https://it-it.facebook.com/"/>' role="button" target="_blank">
              <img class="navbar-toggler-icon" src='<c:url value="/static/images/fb_icona.png"/>'/></a>
                                                  
            <a class="btn btn-outline-light btn-floating m-1" href='<c:url value="https://twitter.com/?lang=it"/>' role="button" target="_blank"
            ><img class="navbar-toggler-icon" src='<c:url value="/static/images/twitter_icona.png"/>'/></a>

            <a class="btn btn-outline-light btn-floating m-1" href='<c:url value="https://www.youtube.com/"/>' role="button" target="_blank"
            ><img class="navbar-toggler-icon" src='<c:url value="/static/images/youtube_icona.png"/>'/></a>

            <a class="btn btn-outline-light btn-floating m-1" href='<c:url value="https://www.instagram.com/"/>' role="button" target="_blank"
            ><img class="navbar-toggler-icon" src='<c:url value="/static/images/ig_icona.png"/>'/></a>
        </section>
        <section class="mb-4">
            <p>
                Questo sito fa uso di cookie per migliorare l’esperienza di navigazione degli utenti e per raccogliere
                informazioni sull’utilizzo del sito stesso. Utilizziamo sia cookie tecnici sia cookie di parti terze per
                inviare messaggi promozionali sulla base dei comportamenti degli utenti. Proseguendo nella navigazione
                si accetta l’uso dei cookie; in
                caso contrario è possibile abbandonare il sito.
            </p>
        </section>
        <section class="">
            <div class="row">
                <div class="col-6">
                    <h5 class="text-uppercase">About Us</h5>

                    <ul class="list-unstyled mb-0">

                            <a href='<c:url value="/about-us?sel=1"/>' class="text-decoration-none" style="color: #4f7978;">Chi siamo | </a>

                            <a href='<c:url value="/about-us?sel=2"/>' class="text-decoration-none" style="color: #4f7978;">Dove puoi trovarci | </a>

                            <a href='<c:url value="/about-us?sel=3"/>' class="text-decoration-none" style="color: #4f7978;">La nostra mission | </a>
                            
                            <a href='<c:url value="/about-us?sel=4"/>' class="text-decoration-none" style="color: #4f7978;">Lavora con noi</a>

                    </ul>
                </div>
                <div class="col-6">
                    <h5 class="text-uppercase">Termini e Condizioni</h5>

                    <ul class="list-unstyled mb-0">
                            <a href='<c:url value="/static/fileLink/privacy.pdf"/>' class="text-decoration-none" style="color: #4f7978;" target="_blank">Privacy | </a>

                            <a href='<c:url value="/static/fileLink/Condizioni_di_vendita.pdf"/>' class="text-decoration-none" style="color: #4f7978;" target="_blank">Condizioni di vendita | </a>

                            <a href='<c:url value="/static/fileLink/Cookie.pdf"/>' class="text-decoration-none" style="color: #4f7978;" target="_blank"> Informativa sui cookie </a>

                    </ul>
                </div>
            </div>
        </section>
    </div>
    <div class="text-center p-3" style="background-color: #f6cd47;">
        © 2022 Copyright: La penna d'Oro
    </div>
</footer>
