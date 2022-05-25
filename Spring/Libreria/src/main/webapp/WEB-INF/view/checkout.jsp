<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<div class="container">

	<div class="row g-5">
		<div class="col-md-5 col-lg-4 order-md-last">
			<h4 class="d-flex justify-content-between align-items-center mb-3">
				<span class="text-primary">Il tuo carrello</span> <span
					class="badge bg-primary rounded-pill">#</span>
			</h4>
			<c:forEach items="${books}" var="book">
				<ul class="list-group mb-3">
					<li class="list-group-item d-flex justify-content-between lh-sm">
						<div>
							<h6 class="my-0">${book.title}</h6>
							<small class="text-muted">Descrizione breve</small>
						</div> <span class="text-muted">${book.priceFlexibleCover}</span>
					</li>
			</c:forEach>
			<li class="list-group-item d-flex justify-content-between bg-light">
				<div class="text-success">
					<h6 class="my-0">Codice Promo</h6>
					<small>EXAMPLECODE</small>
				</div> <span class="text-success">Importo sconto</span>
			</li>
			<li class="list-group-item d-flex justify-content-between"><span>Totale:</span>
				<strong>Prezzo totale</strong></li>
			</ul>

			<form class="card p-2">
				<div class="input-group">
					<input type="text" class="form-control"
						placeholder="Inserisci il tuo codice sconto...">
					<button type="submit" class="btn btn-secondary">Applica
						coupon</button>
				</div>
			</form>
		</div>
		<div class="col-md-7 col-lg-8">
			<h4 class="mb-3">Indirizzo di spedizione</h4>
			<form class="needs-validation">
				<div class="row g-3">
					<div class="col-sm-6">
						<label for="nome" class="form-label">Nome:</label> <input
							type="text" class="form-control" id="nome"
							placeholder="Inserisci il tuo nome..." required>
					</div>
					<div class="col-sm-6">
						<label for="cognome" class="form-label">Cognome:</label> <input
							type="text" class="form-control" id="cognome"
							placeholder="Inserisci il tuo cognome..." required>
					</div>
					<div class="col-12">
						<label for="email" class="form-label">Email:<span
							class="text-muted">(Opzionale)</span></label> <input type="email"
							class="form-control" id="email"
							placeholder="pippofranco@gmail.com">
					</div>
					<div class="col-12">
						<label for="indirizzo" class="form-label">Indirizzo:</label> <input
							type="text" class="form-control" id="indirizzo"
							placeholder="Via/Piazza..." required>
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
						<label for="cap" class="form-label">CAP:</label> <input
							type="text" class="form-control" id="cap" placeholder="CAP..."
							required>
					</div>
					    <div class="custom-control">
                        <input type="radio" name="spedizione" value="standard">Spedizione standard 3-5 giorni lavorativi
                        <br>
                        <input type="radio" name="spedizione" value="premium" checked>Spedizione premium 1-2 giorni lavorativi
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
<%-- 				<form action="https://www.paypal.com/cgi-bin/webscr" method="post"
					target="_top">
					<input type="hidden" name="cmd" value="_xclick"> <input
						type="hidden" name="business"
						value="<spring:message code="company.mail"/>"> <input
						type="hidden" name="lc" value="US"> <input type="hidden"
						name="item_name" value="<spring:message code="header.title"/>">
					<input type="hidden" name="amount" value="${orderPayment}">
					<input type="hidden" name="currency_code" value="EUR"> <input
						type="hidden" name="button_subtype" value="services"> <input
						type="hidden" name="no_note" value="0"> <input
						type="hidden" name="bn"
						value="PP-BuyNowBF:btn_buynowCC_LG.gif:NonHostedGuest"> <input
						type="image"
						src="https://www.paypalobjects.com/en_US/i/btn/btn_buynowCC_LG.gif"
						border="0" name="submit"
						alt="PayPal - The safer, easier way to pay online!"> <img
						alt="" border="0"
						src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif"
						width="1" height="1">
				</form>
 --%>				<button class="w-100 btn btn-primary btn-lg" type="submit">Checkout</button>
			</form>
		</div>
	</div>



</div>