<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="container">

	<div class="row g-5">
		<div class="col-md-5 col-lg-4 order-md-last">
			<h4 class="d-flex justify-content-between align-items-center mb-3">
				<span class="text-primary">Il tuo carrello</span> <span
					class="badge bg-primary rounded-pill">#</span>
			</h4>
			<ul class="list-group mb-3">

				<c:choose>
					<c:when test="${books != null}">
						<c:forEach items="${books}" var="book">
							<li class="list-group-item d-flex justify-content-between lh-sm">
								<div>
									<h6 class="my-0">${book.title}</h6>
									<small class="text-muted">Descrizione breve</small>
								</div> <span class="text-muted">${book.priceFlexibleCover}</span>
							</li>
						</c:forEach>
						<li
							class="list-group-item d-flex justify-content-between bg-light">
							<div class="text-success">
								<h6 class="my-0">Codice Promo</h6>
								<small>EXAMPLECODE</small>
							</div> <span class="text-success">Importo sconto</span>
						</li>
						<li class="list-group-item d-flex justify-content-between"><span>Totale:</span>
							<strong>Prezzo totale</strong></li>
						<form class="card p-2">
							<div class="input-group">
								<input type="text" class="form-control"
									placeholder="Inserisci il tuo codice sconto...">
								<button type="submit" class="btn btn-secondary">Applica
									coupon</button>
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
					id="generalAlert" />
				<div class="row g-3">
					<div class="col-sm-6">
						<label for="nameSp">Nome</label>
						<form:input path="anagraphic.name" id="nameSp" type="text"
							cssClass="form-control" required="required" />
						<form:errors path="anagraphic.name" id="nameSpError" cssClass="text-danger" />
					</div>
					<div class="col-sm-6">
						<label for="surnameSp">Cognome</label>
						<form:input path="anagraphic.surname" id="nameSp" type="text"
							cssClass="form-control" required="required" />
						<form:errors path="anagraphic.surname" id="nameSpError" cssClass="text-danger" />
					</div>
					<div class="col-12">
						<label for="emailSp">Email</label>
						<form:input path="anagraphic.mail" id="emailSp" type="text"
							cssClass="form-control" required="required" />
						<form:errors path="anagraphic.mail" id="emailSpError" cssClass="text-danger" />

					</div>
					<div class="col-9">
						<label for="streetSp">Indirizzo:</label>
						<form:input path="anagraphic.street" id="emailSp" type="text"
							cssClass="form-control" required="required" />
						<form:errors path="anagraphic.street" id="streetSpError"
							cssClass="text-danger" />
					</div>
					<div class="col-3">
						<label for="streetSp">Numero:</label>
						<form:input path="anagraphic.civicNumber" id="cnSp" type="text"
							cssClass="form-control" required="required" />
						<form:errors path="anagraphic.civicNumber" id="streetSpError"
							cssClass="text-danger" />
					</div>

					<div class="col-md-4">
						<label for="regione" class="form-label">Regione:</label> <select
							class="form-select" id="regione" required>
							<option>- - -</option>
							<option value="Abruzzo">Abruzzo</option>
							<option value="Basilicata">Basilicata</option>
							<option value="Calabria">Calabria</option>
							<option value="Campania">Campania</option>
							<option value="Emilia Romagna">Emilia Romagna</option>
							<option value="Friuli-Venezia-Giulia">Friuli-Venezia-Giulia</option>
							<option value="Lazio">Lazio</option>
							<option value="Liguria">Liguria</option>
							<option value="Lombardia">Lombardia</option>
							<option value="Marche">Marche</option>
							<option value="Molise">Molise</option>
							<option value="Piemonte">Piemonte</option>
							<option value="Puglia">Puglia</option>
							<option value="Sardegna">Sardegna</option>
							<option value="Sicilia">Sicilia</option>
							<option value="Toscana">Toscana</option>
							<option value="Trentino-Alto-Adige">Trentino-Alto-Adige</option>
							<option value="Umbria">Umbria</option>
							<option value="Val d'Aosta">Val d'Aosta</option>
							<option value="Veneto">Veneto</option>
						</select>
					</div>
					<div class="col-md-3">
						<label for="capSp">CAP:</label>
						<form:input path="anagraphic.cap" id="capSp" type="text"
							cssClass="form-control" required="required" />
						<form:errors path="anagraphic.cap" id="capSpError"
							cssClass="text-danger" />
					</div>
					<div class="custom-control">
						<input type="radio" name="spedizione" value="standard">Spedizione
						standard 3-5 giorni lavorativi <br> <input type="radio"
							name="spedizione" value="premium" checked>Spedizione
						premium 1-2 giorni lavorativi
					</div>
				</div>
				<br>
				<div class="form-check">
					<input type="checkbox" class="form-check-input" id="salvaIndirizzo">
					<label class="form-check-label" for="salvaIndirizzo">Salva
						questo indirizzo per la prossima spedizione</label>
				</div>

				<hr class="my-4">

				<h4 class="mb-3">Metodo di pagamento</h4>

				<div class="my-3">

					<div class="form-check">
						<input id="paypal" name="metodoDiPagamento" type="radio"
							class="form-check-input" required checked> <label
							class="form-check-label" for="paypal">PayPal</label>
					</div>
				</div>

				<hr class="my-4">

				<input type="submit" value="Accedi" class="btn btn-primary mt-4">
			</form:form>
		</div>
	</div>



</div>