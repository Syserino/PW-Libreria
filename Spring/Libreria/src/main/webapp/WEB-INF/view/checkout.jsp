<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="container">

    <div class="row g-5">
        <div class="col-md-5 col-lg-4 order-md-last">
            <h4 class="d-flex justify-content-between align-items-center mb-3">
                <span class="text-primary">Il tuo carrello</span>
                <span class="badge bg-primary rounded-pill">#</span>
            </h4>
            <ul class="list-group mb-3">
                <li class="list-group-item d-flex justify-content-between lh-sm">
                    <div>
                        <h6 class="my-0">ID</h6>
                        <small class="text-muted">Titolo</small>
                    </div>
                    <span class="text-muted">Prezzo</span>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-sm">
                    <div>
                        <h6 class="my-0">ID2</h6>
                        <small class="text-muted">Titolo2</small>
                    </div>
                    <span class="text-muted">Prezzo2</span>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-sm">
                    <div>
                        <h6 class="my-0">ID3</h6>
                        <small class="text-muted">Titolo3</small>
                    </div>
                    <span class="text-muted">Prezzo3</span>
                </li>
                <li class="list-group-item d-flex justify-content-between bg-light">
                    <div class="text-success">
                        <h6 class="my-0">Codice Promo</h6>
                        <small>EXAMPLECODE</small>
                    </div>
                    <span class="text-success">Importo sconto</span>
                </li>
                <li class="list-group-item d-flex justify-content-between">
                    <span>Totale:</span>
                    <strong>Prezzo totale</strong>
                </li>
            </ul>

            <form class="card p-2">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Inserisci il tuo codice sconto...">
                    <button type="submit" class="btn btn-secondary">Applica coupon</button>
                </div>
            </form>
        </div>
        <div class="col-md-7 col-lg-8">
            <h4 class="mb-3">Inidirizzo di spedizione</h4>
            <form class="needs-validation">
                <div class="row g-3">
                    <div class="col-sm-6">
                        <label for="nome" class="form-label">Nome:</label>
                        <input type="text" class="form-control" id="nome" placeholder="Inserisci il tuo nome..."
                               required>
                    </div>
                    <div class="col-sm-6">
                        <label for="cognome" class="form-label">Cognome:</label>
                        <input type="text" class="form-control" id="cognome" placeholder="Inserisci il tuo cognome..."
                               required>
                    </div>
                    <div class="col-12">
                        <label for="email" class="form-label">Email:<span class="text-muted">(Opzionale)</span></label>
                        <input type="email" class="form-control" id="email" placeholder="pippofranco@gmail.com">
                    </div>
                    <div class="col-12">
                        <label for="indirizzo" class="form-label">Indirizzo:</label>
                        <input type="text" class="form-control" id="indirizzo" placeholder="Via/Piazza..." required>
                    </div>

                    <div class="col-md-4">
                        <label for="regione" class="form-label">Regione:</label>
                        <select class="form-select" id="regione" required>
                            <option> - - -</option>
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
                        <label for="cap" class="form-label">CAP:</label>
                        <input type="text" class="form-control" id="cap" placeholder="CAP..." required>
                    </div>
                </div>
                <br>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="salvaIndirizzo">
                    <label class="form-check-label" for="salvaIndirizzo">Salva questo indirizzo per la prossima
                        spedizione</label>
                </div>

                <hr class="my-4">

                <h4 class="mb-3">Metodo di pagamento</h4>

                <div class="my-3">

                    <div class="form-check">
                        <input id="paypal" name="metodoDiPagamento" type="radio" class="form-check-input" required checked>
                        <label class="form-check-label" for="paypal">PayPal</label>
                    </div>
                </div>

                <hr class="my-4">

                <button class="w-100 btn btn-primary btn-lg" type="submit">Checkout</button>
            </form>
        </div>
    </div>



</div>