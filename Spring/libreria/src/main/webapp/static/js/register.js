var check = function() {
	document.getElementById('message').style.color = 'red';
	document.getElementById('message2').style.color = 'red';
	document.getElementById('message3').style.color = 'red';
	var canConfirm = true;

	if (document.getElementById('password').value ==
		document.getElementById('confirm_password').value) {
		document.getElementById('message').innerHTML = '';
	} else {
		document.getElementById('message').innerHTML = 'Le password non sono uguali.';
		canConfirm = false;
	}

	if (document.getElementById('check1').checked) {
		document.getElementById('message2').innerHTML = '';
	} else {
		document.getElementById('message2').innerHTML = 'Accetta i termini e condizioni per proseguire.';
		canConfirm = false;
	}
	if (document.getElementById('check2').checked) {
		document.getElementById('message3').innerHTML = '';
	} else {
		document.getElementById('message3').innerHTML = 'Accetta le normative sulla privacy per proseguire.';
		canConfirm = false;
	}

	document.getElementById('confirm').disabled = !canConfirm;

}
