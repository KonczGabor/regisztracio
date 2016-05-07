

$("#pro-form input").keyup(function() {
  
var numValid = 0;
$("#pro-form input[required]").each(function() {
    if (this.validity.valid) {
        numValid++;
    }
});

var progress = $("#progress"),
    progressMessage = $("#progress-message");

if (numValid == 0) {
    progress.attr("value", "0");
    progressMessage.text("Kérem töltse ki a *-gal jelölt mezőket!");
}
if (numValid == 1) {
    progress.attr("value", "10");
    progressMessage.text("10% Complete.");
}
if (numValid == 2) {
    progress.attr("value", "20");
    progressMessage.text("20% Complete.");
}
if (numValid == 3) {
    progress.attr("value", "30");
    progressMessage.text("30% Complete.");
}
if (numValid == 4) {
    progress.attr("value", "40");
    progressMessage.text("40% Complete.");
}
if (numValid == 5) {
    progress.attr("value", "55");
    progressMessage.text("50% Complete.");
}

if (numValid == 6) {
    progress.attr("value", "60");
    progressMessage.text("60% Complete.");
}
if (numValid == 7) {
    progress.attr("value", "70");
    progressMessage.text("70% Complete.");
}
if (numValid == 8) {
    progress.attr("value", "100");
    progressMessage.text("Katiintson a Befejezés gombra!");
}
//if (numValid == 9) {
//    progress.attr("value", "90");
//    progressMessage.text("90% Complete.");
//}
//if (numValid == 10) {
//    progress.attr("value", "100");
//    progressMessage.text("Please Click to the Regisztracio button!");
//}
  
});