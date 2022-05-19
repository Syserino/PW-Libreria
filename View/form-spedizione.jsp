<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Form Spedizione</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<div class="row">
    <div class="col text-center"><h4>Scegli l'indirizzo di spedizione</h4></div>
</div>
<br>
<div class="row">
    <div class="row">
        <div class="col-3"></div>
        <div class="col-6">
            <form>
                <div class="form-row">
                    <div class="form-group col-md-6 col-2">
                        <label for="inputNome">Nome:</label>
                        <input type="text" class="form-control" id="inputNome" placeholder="Nome..." required>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputCognome">Cognome</label>
                        <input type="text" class="form-control" id="inputCognome" placeholder="Cognome..." required>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6 col-2">
                        <label for="inputCell">Numero di telefono:</label>
                        <input type="text" class="form-control" id="inputCell" placeholder="Numero di telefono..."
                               required>
                    </div>
                    <div class="form-group">
                        <label for="inputIndirizzo">Indirizzo</label>
                        <input type="text" class="form-control" id="inputIndirizzo" placeholder="Via/Piazza..."
                               required>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputCitta">Citta'</label>
                            <input type="text" class="form-control" id="inputCitta" placeholder="Citta'..." required>
                        </div>
                        <div class="form-group col-md-2">
                            <label for="inputCap">Cap</label>
                            <input type="text" class="form-control" id="inputCap" placeholder="Cap..." required>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputState">Stato</label>
                            <select id="inputState" class="form-control" required>
                                <option hidden>- - -</option>
                                <option value="Albania">Albania</option>
                                <option value="Francia">Francia</option>
                                <option value="Germania">Germania</option>
                                <option value="Inghilterra">Inghilterra</option>
                                <option value="Italia">Italia</option>
                                <option value="Portogallo">Portogallo</option>
                                <option value="Scozia">Scozia</option>
                                <option value="Spagna">Spagna</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                    </div>
                    <br>
                    <div class="custom-control">
                        <input type="radio" name="spedizione" value="standard">Spedizione standard 3-5 giorni lavorativi
                        <br>
                        <input type="radio" name="spedizione" value="premium" checked>Spedizione premium 1-2 giorni
                        lavorativi
                    </div>
                    <br>
                    <button type="submit" class="btn btn-primary">Conferma indirizzo</button>
            </form>
        </div>
        <div class="col-3"></div>
    </div>
</div>
</body>
</html>