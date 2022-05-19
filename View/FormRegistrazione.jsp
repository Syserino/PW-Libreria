<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Form Registrazione</title>
</head>
<body>
<div class="row">
    <div class="col-2"></div>
    <div class="col-8">
<form>
    <div class="form-group col-5">
        <label for="email">Email</label>
        <input  type="email" class="form-control form-text" id="email" aria-describedby="emailHelp" placeholder="Inserisci la tua email...">
        <small id="emailHelp" class="form-text text-muted">Non condivideremo la tua mail con nessuno</small>
    </div>
    <div class="form-group col-5">
        <label for="password">Password</label>
        <input type="password"  class="form-control" id="password" placeholder="Inserisci la tua password...">
        <small id="emailpassword" class="form-text text-muted">Inserisci una password che contenga almeno 8 caratteri</small>
    </div>
    <div class="form-group form-check">
        <input type="checkbox" class="form-check-input" id="ricordami">
        <label class="form-check-label" for="ricordami">Ricordami</label>
    </div>
    <br>
    <button type="submit" class="btn btn-primary">Resgistrati</button>
</form>
    </div>
    <div class="col-2"></div>
</div>
</body>
</html>