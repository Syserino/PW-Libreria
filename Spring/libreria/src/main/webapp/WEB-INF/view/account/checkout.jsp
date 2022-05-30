<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



    <div class="row g-5">
        <div class="col-md-5 col-lg-4 order-md-last">
            <h4 class="d-flex justify-content-between align-items-center mb-3">
                <span class="text-primary">Il tuo carrello</span> <span
                    class="badge bg-primary rounded-pill">#</span>
            </h4>
            <ul class="list-group mb-3">

                <c:choose>
                    <c:when test="${cart != null}">
                        <c:forEach items="${cart}" var="c">
                            <li class="list-group-item d-flex justify-content-between lh-sm">
                                <div>
                                    <h6 class="my-0">${c.book.title}</h6>
                                    <small class="text-muted">Tipo di cover: ${c.cover}</small>
                                </div>
                                <span class="text-muted"> <fmt:formatNumber 
                                value="${c.price}" 
                                maxFractionDigits="2" 
                                minFractionDigits="2"
                                type="currency"
                                currencyCode="EUR"
                                currencySymbol="€"
                            /></span>
                            </li>
                        </c:forEach>
                        <li
                                class="list-group-item d-flex justify-content-between bg-light">
                            <div class="text-success">
                                <h6 class="my-0">Codice Promo</h6>
                                <small>EXAMPLECODE</small>
                            </div>
                            <span class="text-success">Importo sconto</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between"><span>Totale:</span>
                            <strong>${sum}</strong></li>
                        <form class="card p-2">
                            <div class="input-group">
                                <input type="text" class="form-control"
                                       placeholder="Inserisci il tuo codice sconto...">
                                <button type="submit" class="btn btn-secondary">Applica
                                    coupon
                                </button>
                            </div>
                        </form>

                    </c:when>
                    <c:otherwise>
                        <li class="list-group-item d-flex justify-content-between lh-sm">
                            <div>
                                <h6 class="my-0">Carrello vuoto</h6>
                                <small class="text-muted">Vai nella lista articoli e
                                    scegli un libro!</small>
                            </div>
                        </li>
                    </c:otherwise>
                </c:choose>

            </ul>
        </div>

        <div class="col-md-7 col-lg-8">
            <h4 class="mb-3">Indirizzo di spedizione</h4>
            <form:form method="POST" modelAttribute="user"
                       acceptCharset="ISO-8859-1">
                <form:errors path="*" cssClass="alert alert-danger" element="div"
                             id="generalAlert"/>
                <div class="row g-3">
                    <div class="col-sm-6">
                        <label for="nameSp">Nome:</label>
                        <form:input path="anagraphic.name" id="nameSp" type="text"
                                    cssClass="form-control" required="required"/>
                        <form:errors path="anagraphic.name" id="nameSpError"
                                     cssClass="text-danger"/>
                    </div>
                    <div class="col-sm-6">
                        <label for="surnameSp">Cognome:</label>
                        <form:input path="anagraphic.surname" id="nameSp" type="text"
                                    cssClass="form-control" required="required"/>
                        <form:errors path="anagraphic.surname" id="nameSpError"
                                     cssClass="text-danger"/>
                    </div>
                    <div class="col-sm-6">
                        <label for="surnameSp">Codice Fiscale:</label>
                        <form:input path="anagraphic.codiceFiscale"  id="nameSp" type="text"
                                    cssClass="form-control" required="required"/>
                        <form:errors  id="nameSpError"
                                     cssClass="text-danger"/>
                    </div>
                    <div class="col-12">
                        <label for="emailSp">Email per ricevuta:</label>
                        <form:input path="anagraphic.mail" id="emailSp" type="text"
                                    cssClass="form-control" required="required"/>
                        <form:errors path="anagraphic.mail" id="emailSpError"
                                     cssClass="text-danger"/>
                    </div>
                    <div class="col-9">
                        <label for="streetSp">Indirizzo:</label>
                        <form:input path="anagraphic.street" id="emailSp" type="text"
                                    cssClass="form-control" required="required"/>
                        <form:errors path="anagraphic.street" id="streetSpError"
                                     cssClass="text-danger"/>
                    </div>
                    <div class="col-3">
                        <label for="streetSp">Numero:</label>
                        <form:input path="anagraphic.civicNumber" id="cnSp" type="text"
                                    cssClass="form-control" required="required"/>
                        <form:errors path="anagraphic.civicNumber" id="streetSpError"
                                     cssClass="text-danger"/>
                    </div>

                    <div class="col-sm-6">
                        <label for="surnameSp">Provincia:</label>
                        <form:input path="anagraphic.town" id="nameSp" type="text"
                                    cssClass="form-control" required="required"/>
                        <form:errors path="anagraphic.town" id="nameSpError"
                                     cssClass="text-danger"/>
                    </div>

                    <div class="col-sm-6">
                        <label for="surnameSp">Comune:</label>
                        <form:input path="anagraphic.city"  id="nameSp" type="text"
                                    cssClass="form-control" required="required"/>
                        <form:errors  id="nameSpError"
                                     cssClass="text-danger"/>
                    </div>

                    <div class="col-md-3">
                        <label for="capSp">CAP:</label>
                        <form:input path="anagraphic.cap" id="capSp" type="text"
                                    cssClass="form-control" required="required"/>
                        <form:errors path="anagraphic.cap" id="capSpError"
                                     cssClass="text-danger"/>
                    </div>
                    <div class="custom-control">
                        <input type="radio" name="spedizione" value="standard">Spedizione
                        standard 3-5 giorni lavorativi, costo: <fmt:formatNumber 
                                value="4.99" 
                                maxFractionDigits="2" 
                                minFractionDigits="2"
                                type="currency"
                                currencyCode="EUR"
                                currencySymbol="€"
                            /> <br> <input type="radio"
                                                                   name="spedizione" value="premium" checked>Spedizione
                        premium 1-2 giorni lavorativi, costo: <fmt:formatNumber 
                                value="9.99" 
                                maxFractionDigits="2" 
                                minFractionDigits="2"
                                type="currency"
                                currencyCode="EUR"
                                currencySymbol="€"
                            />
                    </div>
                </div>
                <br>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="salvaIndirizzo">
                    <label class="form-check-label" for="salvaIndirizzo">Salva
                        questo indirizzo per la prossima spedizione</label>
                </div>

                <hr class="my-4">

                <input type="submit" value="Acquista su Paypal" class="btn btn-primary mt-4">
            </form:form>
        </div>
    </div>
