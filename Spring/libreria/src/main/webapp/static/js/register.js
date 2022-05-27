var check = function() {
	document.getElementById('message').style.color = 'red';
	document.getElementById('message2').style.color = 'red';
	document.getElementById('message3').style.color = 'red';

	if (document.getElementById('password').value ==
		document.getElementById('confirm_password').value) {
		document.getElementById('message').innerHTML = '';
		document.getElementById('confirm').disabled = false;
	} else {
		document.getElementById('message').innerHTML = 'Le password non sono uguali.';
		document.getElementById('confirm').disabled = true;
	}

	if (document.getElementById('check1').checked) {
		document.getElementById('message2').innerHTML = '';
		document.getElementById('confirm').disabled = false;
	} else {
		document.getElementById('message2').innerHTML = 'Accetta i termini e condizioni per proseguire.';
		document.getElementById('confirm').disabled = false;
	}
	if (document.getElementById('check2').checked) {
		document.getElementById('message3').innerHTML = '';
		document.getElementById('confirm').disabled = false;
	} else {
		document.getElementById('message3').innerHTML = 'Accetta le normative sulla privacy per proseguire.';
		document.getElementById('confirm').disabled = false;
	}

}
