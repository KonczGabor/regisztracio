function ShowHideDivWeb() {
	var chkYes = document.getElementById("chkYesWeb");
	var emailArea = document.getElementById("webArea");
	emailArea.style.display = chkYes.checked ? "block" : "none";	
	

	if (chkYes.checked === true) {
		document.getElementById("emailInput").required = true;
//		document.getElementById("emailInput").setCustomValidity("email cím megadása kötelező");
	}
	else {
		document.getElementById("emailInput").required = false;
	}
}

function ShowHideDivMobil() {
	var chkYes = document.getElementById("chkYesMobil");
	var mobilArea = document.getElementById("mobilArea");
	mobilArea.style.display = chkYes.checked ? "block" : "none";	
	

	if (chkYes.checked === true) {
		document.getElementById("mobilInput").required = true;
//		document.getElementById("emailInput").setCustomValidity("email cím megadása kötelező");
	}
	else {
		document.getElementById("mobilInput").required = false;
	}
}

function ShowHideDivTel() {
	var chkYes = document.getElementById("chkYesTel");
	var telArea = document.getElementById("telArea");
	telArea.style.display = chkYes.checked ? "block" : "none";	
	

	if (chkYes.checked === true) {
		document.getElementById("telInput").required = true;
//		document.getElementById("emailInput").setCustomValidity("email cím megadása kötelező");
	}
	else {
		document.getElementById("telInput").required = false;
	}
}


//
//if (chkYes.checked == true) {
//	document.getElementById("emailInput").required = true;
//	document.getElementById("emailInput").setCustomValidity("email cím megadása kötelező");
//}
//else {
//	document.getElementById("emailInput").required = false;
//}