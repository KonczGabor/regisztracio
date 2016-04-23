function ShowHideDiv() {
	var chkYes = document.getElementById("chkYes");
	var emailArea = document.getElementById("emailArea");
	emailArea.style.display = chkYes.checked ? "block" : "none";	
	
	if (chkYes.checked == true) {
		document.getElementById("emailInput").required = true;
		document.getElementById("emailInput").setCustomValidity("email cím megadása kötelező");
	}
	else {
		document.getElementById("emailInput").required = false;
	}
}


oninvalid="this.setCustomValidity('Put here custom message')"